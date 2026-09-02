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
RULE_NAMES="${RULE_NAMES:-rule-names.txt}"

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
    ["frogeye-firstparty"]="https://hostfiles.frogeye.fr/firstparty-trackers-hosts.txt"

    # Other
    ["dandelion-sprout-push"]="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/AdGuard%20Home%20Compilation%20List/AdGuardHomeCompilationList-Notifications.txt"
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
    ["hagezi-nsfw"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/nsfw.txt"
    ["hagezi-popup-ads"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/popupads.txt"
    ["hagezi-safesearch"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/nosafesearch.txt"
    ["hagezi-social"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/social.txt"
    ["hagezi-tracker-amazon"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.amazon.txt"
    ["hagezi-tracker-huawei"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.huawei.txt"
    ["hagezi-tracker-lg-webos"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.lgwebos.txt"
    ["hagezi-tracker-roku"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.roku.txt"
    ["hagezi-tracker-tiktok"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/native.tiktok.txt"
    ["oisd-nsfw-small"]="https://nsfw-small.oisd.nl/"
    ["windows-spy-blocker"]="https://raw.githubusercontent.com/crazy-max/WindowsSpyBlocker/master/data/hosts/spy.txt"

    # Regional
    ["chn-adrules"]="https://raw.githubusercontent.com/Cats-Team/AdRules/main/dns.txt"
    ["chn-anti-ad"]="https://anti-ad.net/adguard.txt"
    ["hun-hufilter"]="https://cdn.jsdelivr.net/gh/hufilter/hufilter@gh-pages/hufilter-dns.txt"
    ["idn-abpindo"]="https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/subscriptions/aghome.txt"
    ["irn-persianblocker"]="https://raw.githubusercontent.com/MasterKia/PersianBlocker/main/PersianBlockerHosts.txt"
    ["isr-easylist-hebrew"]="https://raw.githubusercontent.com/easylist/EasyListHebrew/master/hosts.txt"
    ["kor-list-kr"]="https://cdn.jsdelivr.net/gh/adguardteam/HostlistsRegistry@main/assets/filter_25.txt"
    ["kor-youlist"]="https://raw.githubusercontent.com/yous/YousList/master/hosts.txt"
    ["mkd-macedonian"]="https://raw.githubusercontent.com/cchevy/macedonian-pi-hole-blocklist/master/hosts.txt"
    ["nor-dandelion-sprout"]="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/NorwegianExperimentalList%20alternate%20versions/NordicFiltersAdGuardHome.txt"
    ["pol-filters"]="https://raw.githubusercontent.com/MajkiIT/polish-ads-filter/master/polish-pihole-filters/hostfile.txt"
    ["swe-frellwits"]="https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt"
    ["tur-turkish-ad-hosts"]="https://raw.githubusercontent.com/symbuzzer/Turkish-Ad-Hosts/main/adguard/filter.txt"
    ["vnm-abpvn"]="https://abpvn.com/android/abpvn.txt"
    ["pol-cert-polska"]="https://adguardteam.github.io/HostlistsRegistry/assets/filter_41.txt"

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
    ["hagezi-doh"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/doh.txt"
    ["hagezi-fake"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/fake.txt"
    ["ublock-badware"]="https://adguardteam.github.io/HostlistsRegistry/assets/filter_50.txt"
)

# 1. Download sing-box if missing, or if the local binary is a different version
# than $SING_BOX_VERSION -- an `-x` check alone means bumping the version keeps
# silently using the stale binary (CI is safe via the cache key, local runs are not).
need_sing_box=1
if [ -x "./sing-box" ] && ./sing-box version 2>/dev/null | grep -qF "$SING_BOX_VERSION"; then
    need_sing_box=0
fi
if [ "$need_sing_box" -eq 1 ]; then
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
    local src_count=0 dst_count=0 count_known=0

    # Atomic small-line append; xargs -P workers won't tear each other's rows
    # because printf is a builtin (a single write() call) and O_APPEND makes the
    # seek-to-end + write atomic for regular files on Linux.
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
    # `grep -c` prints 0 *and* exits 1 when nothing matches, so `|| echo 0` used
    # to append a second line ("0\n0") and break the %d in record(). `[` is kept
    # outside the bracket expression too: inside brackets a backslash is literal,
    # so `[#!\[]` also skipped lines starting with a backslash.
    src_count=$(grep -cvE '^[[:space:]]*([#!]|\[|$)' "$tmp_txt" 2>/dev/null) || true
    src_count=${src_count:-0}

    # Normalize hosts-file IPs to 0.0.0.0. sing-box's adguard converter only
    # recognises hosts entries with a 0.0.0.0 prefix; sources like AdAway and
    # Frellwit's Swedish Hosts use 127.0.0.1 / ::1, which would otherwise be
    # silently dropped as "invalid domain" leaving an empty rule-set.
    if sed -E 's/^[[:space:]]*(127\.0\.0\.1|0\.0\.0\.0|::1|::)[[:space:]]+/0.0.0.0 /' \
           "$tmp_txt" > "${tmp_txt}.norm" 2>/dev/null; then
        mv -f "${tmp_txt}.norm" "$tmp_txt"
    fi

    local convert_log="${TMP_DIR}/${name}.convert.err"
    if ! timeout 180 "$SING_BOX" rule-set convert --type adguard \
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

    # Count output DNS entries. Two paths because sing-box's adguard converter
    # emits two different .srs flavours and `decompile` only reverses one:
    #   - hosts / plain-domain inputs → standard sing-box rules → decompile + jq
    #   - ABP "||domain^" inputs      → binary AdGuard rules    → decompile
    #     errors out, so we parse `parsed rules: X/Y` from the converter log
    #     (sing-box only emits this summary for the ABP branch).
    # $count_known records whether *either* path produced a number, so a
    # dst_count of 0 can be told apart from "could not count". Unknown never
    # blocks publication; the rate column just shows "—".
    local tmp_json="${TMP_DIR}/${name}.json"
    local n
    if command -v jq >/dev/null 2>&1 \
            && "$SING_BOX" rule-set decompile --output "$tmp_json" "$tmp_srs" 2>/dev/null \
            && [ -s "$tmp_json" ]; then
        # Type-tolerant on purpose: sing-box marshals a single-element list as a
        # bare string, which the old `(.domain // []) + ...` could not add.
        if n=$(jq '[.rules[]? | (.domain, .domain_suffix, .domain_keyword, .domain_regex)
                    | if type == "array" then length
                      elif type == "string" then 1
                      else 0 end] | add // 0' "$tmp_json" 2>/dev/null) && [ -n "$n" ]; then
            dst_count="$n"
            count_known=1
        fi
    fi
    if [ "$dst_count" -eq 0 ]; then
        local parsed_x
        parsed_x=$(grep -oE 'parsed rules: [0-9]+/[0-9]+' "$convert_log" 2>/dev/null \
                   | head -n1 \
                   | sed 's|parsed rules: \([0-9]*\)/.*|\1|')
        if [ -n "$parsed_x" ]; then
            dst_count="$parsed_x"
            count_known=1
        fi
    fi

    # A .srs holding a valid header but zero domains is still a non-empty file,
    # so the `-s` check above cannot catch it. Publishing one silently wipes a
    # working rule-set (exactly the failure mode the 127.0.0.1 normalisation
    # above was added for). Refuse it and keep the previous .srs instead.
    if [ "$count_known" -eq 1 ] && [ "$dst_count" -eq 0 ]; then
        echo "[FAIL] zero domains after convert: $name"
        record fail zero-domains
        return 1
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

# Authoritative list of rule names for this run. The CI publish step diffs the
# rule-set branch against it to retire .srs files no longer produced here.
printf '%s\n' "${!RULES[@]}" | sort > "$RULE_NAMES"

# xargs exits non-zero if any child failed; we tolerate individual failures.
set +e
# -d '\n': the feed is one field per line, and xargs' default parsing would
# otherwise interpret quotes and backslashes inside a URL.
xargs -d '\n' -n 2 -P "$PARALLEL_JOBS" -a "$feed_file" \
    bash -c 'process_rule "$1" "$2"' _
xargs_rc=$?
set -e

# Counted from the stats file rather than from *.srs on disk: a local re-run
# keeps earlier runs' outputs around, which used to inflate this number.
ok_count=$(grep -c "$(printf '\tok\t')" "$STATS_FILE" 2>/dev/null) || true
echo "All rules processed. ${ok_count:-0}/${#RULES[@]} rules OK (xargs rc=${xargs_rc})."

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
