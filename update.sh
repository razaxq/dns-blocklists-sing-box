#!/bin/bash

# Configuration
SING_BOX_VERSION="latest" # Or "latest" logic, but pinned is safer for stability
WORK_DIR="rule-set"
mkdir -p "$WORK_DIR"

# URLs for HaGeZi DNS Blocklists (Domains format)
# We use cdn.jsdelivr.net for better availability and the 'domains' format which is compatible
declare -A RULES
RULES=(
    # Existing
    ["hagezi-light"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/light.txt"

    # Conventional
    ["1hosts-lite"]="https://cdn.jsdelivr.net/gh/badmojr/1Hosts@master/Lite/adblock.txt"
    ["1hosts-xtra"]="https://cdn.jsdelivr.net/gh/badmojr/1Hosts@master/Xtra/adblock.txt"
    ["adguard-dns-filter"]="https://adguardteam.github.io/AdGuardSDNSFilter/Filters/filter.txt"
    ["adguard-popup-hosts"]="https://adguardteam.github.io/AdGuardSDNSFilter/Filters/adguard_popup_filter.txt"
    ["aw-avenue-ads"]="https://raw.githubusercontent.com/TG-Twilight/AWAvenue-Ads-Rule/main/AWAvenue-Ads-Rule.txt"
    ["dan-pollock"]="https://someonewhocares.org/hosts/zero/hosts"
    ["hagezi-normal"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/multi.txt"
    ["hagezi-pro"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/pro.txt"
    ["hagezi-pro-plus"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/pro.plus.txt"
    ["hagezi-ultimate"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/ultimate.txt"
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
    ["no-google"]="https://raw.githubusercontent.com/nickspaargaren/no-google/master/pihole-google-adguard.txt"
    ["smart-tv"]="https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV-AGH.txt"
    ["shadowwhisperer-dating"]="https://raw.githubusercontent.com/ShadowWhisperer/BlockLists/master/Lists/Dating"
    ["ukrainian-security"]="https://raw.githubusercontent.com/braveinnovators/ukrainian-security-filter/main/lists/domains.txt"

    # Regional
    ["chn-adrules"]="https://raw.githubusercontent.com/Cats-Team/AdRules/main/dns.txt"
    ["chn-anti-ad"]="https://anti-ad.net/adguard.txt"
    ["hun-hufilter"]="https://cdn.jsdelivr.net/gh/hufilter/hufilter@gh-pages/hufilter-dns.txt"
    ["idn-abpindo"]="https://raw.githubusercontent.com/ABPindo/indonesianadblockrules/master/subscriptions/aghome.txt"
    ["irn-persianblocker"]="https://raw.githubusercontent.com/MasterKia/PersianBlocker/main/PersianBlockerHosts.txt"
    ["isr-easylist-hebrew"]="https://raw.githubusercontent.com/easylist/EasyListHebrew/master/hosts.txt"
    ["kor-list-kr"]="https://raw.githubusercontent.com/List-KR/List-KR/master/filter-dns.txt"
    ["kor-youlist"]="https://raw.githubusercontent.com/yous/YousList/master/hosts.txt"
    ["lit-easylist-lithuania"]="https://raw.githubusercontent.com/EasyList-Lithuania/easylist_lithuania/master/EasyListLithuaniaHosts.txt"
    ["mkd-macedonian"]="https://raw.githubusercontent.com/cchevy/macedonian-pi-hole-blocklist/master/hosts.txt"
    ["nor-dandelion-sprout"]="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/NorwegianExperimentalList%20alternate%20versions/NordicFiltersAdGuardHome.txt"
    ["pol-cert-polska"]="https://hole.cert.pl/domains/v2/domains_adblock.txt"
    ["pol-filters"]="https://raw.githubusercontent.com/MajkiIT/polish-ads-filter/master/polish-pihole-filters/hostfile.txt"
    ["swe-frellwit"]="https://raw.githubusercontent.com/lassekongo83/Frellwits-filter-lists/master/Frellwits-Swedish-Hosts-File.txt"
    ["tur-turk-adlist"]="https://raw.githubusercontent.com/bkrucarci/turk-adlist/master/hosts"
    ["tur-turkish-ad-hosts"]="https://raw.githubusercontent.com/symbuzzer/Turkish-Ad-Hosts/main/adguard/filter.txt"
    ["vnm-abpvn"]="https://abpvn.com/android/abpvn.txt"

    # Security
    ["security-phishing"]="https://malware-filter.gitlab.io/malware-filter/phishing-filter-agh.txt"
    ["dandelion-sprout-anti-malware"]="https://raw.githubusercontent.com/DandelionSprout/adfilt/master/Alternate%20versions%20Anti-Malware%20List/AntiMalwareAdGuardHome.txt"
    ["hagezi-badware-hoster"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/hoster.txt"
    ["hagezi-dns-rebind"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/refs/heads/main/adguard/dns-rebind-protection.txt"
    ["hagezi-dyndns"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/dyndns.txt"
    ["hagezi-bypass"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/doh-vpn-proxy-bypass.txt"
    ["hagezi-abused-tlds"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/spam-tlds.txt"
    ["hagezi-tif"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/tif.txt"
    ["hagezi-url-shortener"]="https://raw.githubusercontent.com/hagezi/dns-blocklists/main/adblock/urlshortener.txt"
    ["nocoin"]="https://raw.githubusercontent.com/hoshsadiq/adblock-nocoin-list/master/hosts.txt"
    ["phishing-army"]="https://phishing.army/download/phishing_army_blocklist_extended.txt"
    ["scam-blocklist"]="https://raw.githubusercontent.com/durablenapkin/scamblocklist/master/adguard.txt"
    ["shadowwhisperer-malware"]="https://raw.githubusercontent.com/ShadowWhisperer/BlockLists/master/Lists/Malware"
    ["stalkerware"]="https://raw.githubusercontent.com/AssoEchap/stalkerware-indicators/master/generated/hosts"
    ["big-list-hacked-malware"]="https://raw.githubusercontent.com/mitchellkrogza/The-Big-List-of-Hacked-Malware-Web-Sites/master/hosts"
    ["ublock-badware"]="https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt"
    ["urlhaus"]="https://malware-filter.gitlab.io/malware-filter/urlhaus-filter-agh.txt"
)

# 1. Download sing-box if not present
if ! command -v ./sing-box &> /dev/null; then
    echo "Downloading sing-box..."
    # Determine architecture
    ARCH=$(uname -m)
    case $ARCH in
        x86_64)  SB_ARCH="amd64" ;;
        aarch64) SB_ARCH="arm64" ;;
        *)       echo "Unsupported architecture: $ARCH"; exit 1 ;;
    esac
    
    # We use the specific version to ensure compatibility
    wget -qO- "https://github.com/SagerNet/sing-box/releases/download/v${SING_BOX_VERSION}/sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}.tar.gz" | tar -xz
    mv "sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}/sing-box" .
    rm -rf "sing-box-${SING_BOX_VERSION}-linux-${SB_ARCH}"
    chmod +x sing-box
fi

# 2. Process Rules
for NAME in "${!RULES[@]}"; do
    URL="${RULES[$NAME]}"
    echo "Processing $NAME from $URL..."
    
    # Download raw rule
    if ! wget -qO "${NAME}.txt" "$URL"; then
        echo "Failed to download $NAME from $URL"
        continue
    fi
    
    # Convert to SRS
    # Using --type adguard as it handles domain lists effectively (treated as exact matches or adblock syntax)
    if ./sing-box rule-set convert --type adguard --output "$WORK_DIR/${NAME}.srs" "${NAME}.txt"; then
        echo "$NAME converted successfully."
    else
        echo "Failed to convert $NAME. It might be empty or contain unsupported rules."
        rm -f "$WORK_DIR/${NAME}.srs" # Clean up if partial
    fi
    
    # Clean up raw text file
    rm "${NAME}.txt"
done

echo "All rules processed. Files are in $WORK_DIR/"
