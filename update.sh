#!/bin/bash
set -euo pipefail

# Configuration
SING_BOX_VERSION="${SING_BOX_VERSION:-1.11.4}"
WORK_DIR="rule-set"
PARALLEL_JOBS="${PARALLEL_JOBS:-8}"

mkdir -p "$WORK_DIR"
# Keep TMP_DIR on the same filesystem as WORK_DIR so the final `mv` stays atomic.
TMP_DIR="$(mktemp -d "${WORK_DIR}/.tmp-XXXXXX")"
trap 'rm -rf "$TMP_DIR"' EXIT

# Per-rule conversion stats are written as TSV from parallel workers (atomic
# small-line appends), then formatted into the release body Markdown at the end.
STATS_FILE="${TMP_DIR}/_stats.tsv"
: > "$STATS_FILE"
RELEASE_BODY="${RELEASE_BODY:-conversion-stats.md}"

# URLs for DNS Blocklists (AdGuard Home / domain list format).
declare -A RULES
RULES=(
    # HaGeZi Multi-Purpose
    ["hagezi-light"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/light.txt"
    ["hagezi-normal"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/multi.txt"
    ["hagezi-pro"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/pro.txt"
    ["hagezi-pro-plus"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/pro.plus.txt"
    ["hagezi-ultimate"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/ultimate.txt"

    # Conventional
    ["1hosts-lite"]="https://cdn.jsdelivr.net/gh/badmojr/1Hosts@master/Lite/adblock.txt"
    ["1hosts-xtra"]="https://cdn.jsdelivr.net/gh/badmojr/1Hosts@master/Xtra/adblock.txt"
    ["adaway"]="https://adaway.org/hosts.txt"
    ["adguard-dns-filter"]="https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt"
    ["aw-avenue-ads"]="https://raw.githubusercontent.com/TG-Twilight/AWAvenue-Ads-Rule/main/AWAvenue-Ads-Rule.txt"
    ["dan-pollock"]="https://someonewhocares.org/hosts/zero/hosts"
    ["disconnect-ads"]="https://s3.amazonaws.com/lists.disconnect.me/simple_ad.txt"
    ["goodbye-ads"]="https://raw.githubusercontent.com/jerryn70/GoodbyeAds/master/Hosts/GoodbyeAds.txt"
    ["oisd-small"]="https://small.oisd.nl/"
    ["oisd-big"]="https://big.oisd.nl/"
    ["peter-lowe"]="https://pgl.yoyo.org/adservers/serverlist.php?hostformat=adblockplus&showintro=1&mimetype=plaintext"
    ["shadowwhisperer-tracking"]="https://raw.githubusercontent.com/ShadowWhisperer/BlockLists/master/Lists/Tracking"
    ["steven-black"]="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"

    # Other
    ["dandelion-sprout-push"]="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/AdGuard%20Home%20Compilation%20List/AdGuardHomeCompilationList-Notifications.txt"
    ["dandelion-sprout-game-console"]="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/GameConsoleAdblockList.txt"
    ["hagezi-allowlist-referral"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/whitelist-referral.txt"
    ["hagezi-anti-piracy"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/anti.piracy.txt"
    ["hagezi-tracker-apple"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.apple.txt"
    ["hagezi-gambling"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/gambling.txt"
    ["hagezi-tracker-oppo-realme"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.oppo-realme.txt"
    ["hagezi-tracker-samsung"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.samsung.txt"
    ["hagezi-tracker-vivo"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.vivo.txt"
    ["hagezi-tracker-windows"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.winoffice.txt"
    ["hagezi-tracker-xiaomi"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.xiaomi.txt"
    ["mullvad-social"]="https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_social.txt"
    ["no-google"]="https://raw.githubusercontent.com/nickspaargaren/no-google/master/pihole-google-adguard.txt"
    ["oisd-nsfw"]="https://nsfw.oisd.nl/"
    ["smart-tv"]="https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV-AGH.txt"
    ["shadowwhisperer-dating"]="https://raw.githubusercontent.com/ShadowWhisperer/BlockLists/master/Lists/Dating"
    ["ukrainian-security"]="https://raw.githubusercontent.com/braveinnovators/ukrainian-security-filter/main/lists/domains.txt"

    # Regional
    ["chn-adrules"]="https://raw.githubusercontent.com/Cats-Team/AdRules/main/dns.txt"
    ["chn-anti-ad"]="https://anti-ad.net/adguard.txt"
    ["cze-svk-easylist"]="https://raw.githubusercontent.com/tomasko126/easylistczechandslovak/master/filters.txt"
    ["esp-easylist"]="https://easylist-downloads.adblockplus.org/easylistspanish.txt"
    ["hun-hufilter"]="https://cdn.jsdelivr.net/gh/hufilter/hufilter@gh-pages/hufilter-dns.txt"
    ["idn-abpindo"]="https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/subscriptions/aghome.txt"
    ["irn-persianblocker"]="https://raw.githubusercontent.com/MasterKia/PersianBlocker/main/PersianBlockerHosts.txt"
    ["isr-easylist-hebrew"]="https://raw.githubusercontent.com/easylist/EasyListHebrew/master/hosts.txt"
    ["jpn-tofukko"]="https://raw.githubusercontent.com/tofukko/filter/master/Adblock_Plus_list.txt"
    ["kor-list-kr"]="https://cdn.jsdelivr.net/gh/adguardteam/HostlistsRegistry@main/assets/filter_25.txt"
    ["kor-youlist"]="https://raw.githubusercontent.com/yous/YousList/master/hosts.txt"
    ["ltu-easylist"]="https://raw.githubusercontent.com/EasyList-Lithuania/easylist_lithuania/master/easylistlithuania.txt"
    ["mkd-macedonian"]="https://raw.githubusercontent.com/cchevy/macedonian-pi-hole-blocklist/master/hosts.txt"
    ["nor-dandelion-sprout"]="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/NorwegianExperimentalList%20alternate%20versions/NordicFiltersAdGuardHome.txt"
    ["pol-filters"]="https://raw.githubusercontent.com/MajkiIT/polish-ads-filter/master/polish-pihole-filters/hostfile.txt"
    ["swe-frellwits"]="https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt"
    ["tur-turkish-ad-hosts"]="https://raw.githubusercontent.com/symbuzzer/Turkish-Ad-Hosts/main/adguard/filter.txt"
    ["vnm-abpvn"]="https://abpvn.com/android/abpvn.txt"

    # Security
    ["security-phishing"]="https://malware-filter.gitlab.io/malware-filter/phishing-filter-agh.txt"
    ["dandelion-sprout-anti-malware"]="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareAdGuardHome.txt"
    ["hagezi-badware-hoster"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/hoster.txt"
    ["hagezi-dyndns"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/dyndns.txt"
    ["hagezi-bypass"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/doh-vpn-proxy-bypass.txt"
    ["hagezi-abused-tlds"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/spam-tlds.txt"
    ["hagezi-tif"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/tif.txt"
    ["hagezi-url-shortener"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/urlshortener.txt"
    ["mullvad-privacy"]="https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_privacy.txt"
    ["nocoin"]="https://raw.githubusercontent.com/hoshsadiq/adblock-nocoin-list/master/hosts.txt"
    ["phishing-army"]="https://phishing.army/download/phishing_army_blocklist_extended.txt"
    ["scam-blocklist"]="https://raw.githubusercontent.com/durablenapkin/scamblocklist/master/adguard.txt"
    ["shadowwhisperer-malware"]="https://raw.githubusercontent.com/ShadowWhisperer/BlockLists/master/Lists/Malware"
    ["stalkerware"]="https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/hosts"
    ["big-list-hacked-malware"]="https://raw.githubusercontent.com/mitchellkrogza/The-Big-List-of-Hacked-Malware-Web-Sites/master/hosts"
)

# 1. Download sing-box if not present
if [ ! -x "./sing-box" ]; then
    echo "Downloading sing-box v${SING_BOX_VERSION}..."
    ARCH=$(uname -m)
    case $ARCH in
        x86_64)  SB_ARCH="amd64" ;;
        aarch64) SB_ARCH="arm64" ;;
        *)       echo "Unsupported architecture: $ARCH"; exit 1 ;;
    esac

    curl -fsSL --retry 3 --retry-delay 2 --connect-timeout 10 --max-time 120 \
        "https://github.com/SagerNet/sing-box/releases/download/v${SING_BOX_VERSION}/sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}.tar.gz" \
        | tar -xz

    if [ -f "sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}/sing-box" ]; then
        mv "sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}/sing-box" .
        rm -rf "sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}"
        chmod +x sing-box
    else
        echo "Error: Failed to download or extract sing-box."
        exit 1
    fi
fi

SING_BOX="$(pwd)/sing-box"

# 2. Per-rule worker: download -> validate -> convert -> atomic replace.
# On any failure, the previous .srs is left untouched.
# Each call appends one TSV row to $STATS_FILE so the release body can show
# upstream-line vs. output-domain counts (= conversion ratio).
process_rule() {
    local name="$1"
    local url="$2"
    local tmp_txt="${TMP_DIR}/${name}.txt"
    local tmp_srs="${TMP_DIR}/${name}.srs"
    local out_srs="${WORK_DIR}/${name}.srs"
    local src_count=0 dst_count=0

    # Atomic small-line append; xargs -P workers won't tear each other's rows
    # because writes < PIPE_BUF (4096B) under O_APPEND are atomic on Linux.
    record() {
        printf '%s\t%d\t%d\t%s\t%s\n' "$name" "$src_count" "$dst_count" "$1" "${2-}" >> "$STATS_FILE"
    }

    if ! curl -fsSL --compressed --retry 3 --retry-delay 2 --connect-timeout 10 --max-time 180 \
            -A "Mozilla/5.0 (dns-blocklists-sing-box)" \
            -o "$tmp_txt" "$url"; then
        echo "[FAIL] download: $name"
        record fail download
        return 1
    fi

    local size
    size=$(wc -c <"$tmp_txt")
    if [ "$size" -lt 256 ]; then
        echo "[FAIL] response too small (${size}B): $name"
        record fail too-small
        return 1
    fi
    if head -c 512 "$tmp_txt" | grep -qiE '<(html|!doctype)'; then
        echo "[FAIL] HTML response: $name"
        record fail html-response
        return 1
    fi

    # Count source rule-like lines: skip blanks, hosts/plain comments (#),
    # AdBlock-Plus comments (!), and ABP headers ([Adblock Plus 2.0]).
    src_count=$(grep -cvE '^[[:space:]]*([#!\[]|$)' "$tmp_txt" 2>/dev/null || echo 0)

    local convert_log="${TMP_DIR}/${name}.convert.err"
    if ! timeout 60 "$SING_BOX" rule-set convert --type adguard \
            --output "$tmp_srs" "$tmp_txt" >/dev/null 2>"$convert_log"; then
        local reason
        reason=$(head -n1 "$convert_log" | tr -d '\r' | cut -c1-200)
        echo "[FAIL] convert: $name -- ${reason:-timeout/unknown}"
        record fail convert
        return 1
    fi

    if [ ! -s "$tmp_srs" ]; then
        echo "[FAIL] empty srs: $name"
        record fail empty-srs
        return 1
    fi

    # Decompile to JSON and count DNS rule entries. Metrics-only, so failure
    # here doesn't block publication — dst_count just stays 0 and the rate
    # column shows "—". jq is preinstalled on ubuntu-latest; locally it's
    # optional.
    local tmp_json="${TMP_DIR}/${name}.json"
    if "$SING_BOX" rule-set decompile --output "$tmp_json" "$tmp_srs" 2>/dev/null \
            && [ -s "$tmp_json" ] && command -v jq >/dev/null 2>&1; then
        dst_count=$(jq '[.rules[]? | (.domain // []) + (.domain_suffix // []) + (.domain_keyword // []) + (.domain_regex // []) | length] | add // 0' \
            "$tmp_json" 2>/dev/null || echo 0)
    fi

    mv -f "$tmp_srs" "$out_srs"
    echo "[ OK ] $name  (src=$src_count dst=$dst_count)"
    record ok
}
export -f process_rule
export TMP_DIR WORK_DIR SING_BOX STATS_FILE

# 3. Run in parallel via xargs. Each invocation gets one name + url.
echo "Processing ${#RULES[@]} rules with parallelism ${PARALLEL_JOBS}..."
feed_file="${TMP_DIR}/_feed"
for name in "${!RULES[@]}"; do
    printf '%s\n%s\n' "$name" "${RULES[$name]}"
done > "$feed_file"

# xargs exits non-zero if any child failed; we tolerate individual failures.
set +e
xargs -n 2 -P "$PARALLEL_JOBS" -a "$feed_file" \
    bash -c 'process_rule "$1" "$2"' _
xargs_rc=$?
set -e

ok_count=$(find "$WORK_DIR" -maxdepth 1 -name '*.srs' -type f | wc -l)
echo "All rules processed. ${ok_count} .srs files in $WORK_DIR/ (xargs rc=${xargs_rc})."

# 4. Build the Markdown release body from $STATS_FILE so the Releases page
# shows the per-rule conversion ratio. The workflow uses this via `body_path`.
{
    cat <<'PREAMBLE_EOF'
Auto-updated rules based on popular DNS blocklists.
PREAMBLE_EOF
    printf 'Updated on: %s UTC\n\n' "$(date -u +%Y-%m-%d)"
    cat <<'BODY_EOF'
## Conversion stats

`Source` counts non-blank, non-comment lines in the upstream file. `Output` counts DNS entries (`domain` / `domain_suffix` / `domain_keyword` / `domain_regex`) in the resulting `.srs`. The ratio shows how many upstream entries sing-box's adguard converter retained — cosmetic / browser-only rules are dropped, so EasyList-style sources show lower ratios than pure DNS lists.

| Rule | Source | Output | Conversion |
| --- | ---: | ---: | ---: |
BODY_EOF
    sort -k1,1 "$STATS_FILE" | awk -F'\t' '
        $4 == "ok" {
            rate = "—"
            if ($2 > 0 && $3 > 0) rate = sprintf("%.1f%%", ($3 / $2) * 100)
            ok_rows[ok_count++] = sprintf("| `%s.srs` | %d | %d | %s |", $1, $2, $3, rate)
            ok_src += $2; ok_dst += $3
        }
        $4 == "fail" {
            fail_rows[fail_count++] = sprintf("| `%s.srs` | %s |", $1, $5)
        }
        END {
            for (i = 0; i < ok_count; i++) print ok_rows[i]
            if (ok_count > 0) {
                t_rate = (ok_src > 0 && ok_dst > 0) ? sprintf("%.1f%%", (ok_dst / ok_src) * 100) : "—"
                printf "| **Total** | **%d** | **%d** | **%s** |\n", ok_src, ok_dst, t_rate
            }
            if (fail_count > 0) {
                print ""
                print "### Failed today"
                print ""
                print "| Rule | Reason |"
                print "| --- | --- |"
                for (i = 0; i < fail_count; i++) print fail_rows[i]
            }
        }
    '
} > "$RELEASE_BODY"
echo "Wrote release body to $RELEASE_BODY"
