# Sing-box DNS Blocklist Rule Sets

[中文说明](README_zh.md) | English

This repository automatically converts various popular DNS Blocklists (AdGuard Home format) into **Sing-box Rule Set (`.srs`)** format.

> **Distribution branch migrated to `rule-set`.**
> Generated `.srs` files are published to the orphan [`rule-set`](../../tree/rule-set) branch (force-reset on every update) so `main` stays small. Update any cached URLs: `@main/rule-set/<name>.srs` → `@rule-set/<name>.srs`.

## Available Rule Sets

The following rule sets are automatically updated daily. All files are hosted on GitHub for fast access, with jsDelivr acceleration available.

### 🌟 HaGeZi Multi-Purpose
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `hagezi-light.srs` | Basic protection, low false positive rate. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-light.srs) |
| `hagezi-normal.srs` | Recommended for most users. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-normal.srs) |
| `hagezi-pro.srs` | Better protection, slightly higher chance of false positives. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-pro.srs) |
| `hagezi-pro-plus.srs` | Pro + more extensive lists. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-pro-plus.srs) |
| `hagezi-ultimate.srs` | Maximum protection, for advanced users. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-ultimate.srs) |

### 📦 Conventional & Ads
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `1hosts-lite.srs` | 1Hosts Lite: Lightweight, low false positives. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/1hosts-lite.srs) |
| `1hosts-xtra.srs` | 1Hosts Xtra: Aggressive protection. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/1hosts-xtra.srs) |
| `adaway.srs` | AdAway: Mobile-focused hosts file. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/adaway.srs) |
| `adguard-dns-filter.srs` | AdGuard DNS Filter: Standard protection. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/adguard-dns-filter.srs) |
| `aw-avenue-ads.srs` | AW Avenue Ads Rule. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/aw-avenue-ads.srs) |
| `dan-pollock.srs` | Dan Pollock’s List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/dan-pollock.srs) |
| `disconnect-ads.srs` | Disconnect: Curated ad domains. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/disconnect-ads.srs) |
| `frogeye-firstparty.srs` | Frogeye: First-party trackers. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/frogeye-firstparty.srs) |
| `goodbye-ads.srs` | Goodbye Ads: Mobile / YouTube focus. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/goodbye-ads.srs) |
| `oisd-big.srs` | OISD Big: Comprehensive blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/oisd-big.srs) |
| `oisd-small.srs` | OISD Small: Basic ad blocking. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/oisd-small.srs) |
| `peter-lowe.srs` | Peter Lowe’s Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/peter-lowe.srs) |
| `shadowwhisperer-tracking.srs` | ShadowWhisperer Tracking List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/shadowwhisperer-tracking.srs) |
| `steven-black.srs` | Steven Black’s List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/steven-black.srs) |

### 🛡️ Security & Privacy
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `big-list-hacked-malware.srs` | The Big List of Hacked Malware Web Sites. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/big-list-hacked-malware.srs) |
| `dandelion-sprout-anti-malware.srs` | Dandelion Sprout’s Anti-Malware. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/dandelion-sprout-anti-malware.srs) |
| `hagezi-abused-tlds.srs` | HaGeZi: Most Abused TLDs. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-abused-tlds.srs) |
| `hagezi-badware-hoster.srs` | HaGeZi: Badware Hoster. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-badware-hoster.srs) |
| `hagezi-bypass.srs` | HaGeZi: DoH/VPN/Proxy Bypass. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-bypass.srs) |
| `hagezi-doh.srs` | HaGeZi: DNS-over-HTTPS servers. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-doh.srs) |
| `hagezi-dyndns.srs` | HaGeZi: DynDNS. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-dyndns.srs) |
| `hagezi-fake.srs` | HaGeZi: Fake stores & scam sites. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-fake.srs) |
| `hagezi-tif.srs` | HaGeZi: Threat Intelligence Feeds. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tif.srs) |
| `hagezi-url-shortener.srs` | HaGeZi: URL Shortener. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-url-shortener.srs) |
| `mullvad-privacy.srs` | Mullvad: Privacy / tracker domains. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/mullvad-privacy.srs) |
| `nocoin.srs` | NoCoin Filter List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/nocoin.srs) |
| `phishing-army.srs` | Phishing Army. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/phishing-army.srs) |
| `scam-blocklist.srs` | Scam Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/scam-blocklist.srs) |
| `security-phishing.srs` | Phishing URL Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/security-phishing.srs) |
| `shadowwhisperer-malware.srs` | ShadowWhisperer Malware List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/shadowwhisperer-malware.srs) |
| `stalkerware.srs` | Stalkerware Indicators. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/stalkerware.srs) |
| `ublock-badware.srs` | uBlock Origin: Badware risks. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/ublock-badware.srs) |

### 🌍 Regional Lists
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `chn-adrules.srs` | 🇨🇳 CHN: AdRules DNS List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/chn-adrules.srs) |
| `chn-anti-ad.srs` | 🇨🇳 CHN: anti-AD. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/chn-anti-ad.srs) |
| `hun-hufilter.srs` | 🇭🇺 HUN: Hufilter. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hun-hufilter.srs) |
| `idn-abpindo.srs` | 🇮🇩 IDN: ABPindo. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/idn-abpindo.srs) |
| `irn-persianblocker.srs` | 🇮🇷 IRN: PersianBlocker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/irn-persianblocker.srs) |
| `isr-easylist-hebrew.srs` | 🇮🇱 ISR: EasyList Hebrew. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/isr-easylist-hebrew.srs) |
| `kor-list-kr.srs` | 🇰🇷 KOR: List-KR DNS (AdGuard HLR). | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/kor-list-kr.srs) |
| `kor-youlist.srs` | 🇰🇷 KOR: YouList. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/kor-youlist.srs) |
| `mkd-macedonian.srs` | 🇲🇰 MKD: Macedonian Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/mkd-macedonian.srs) |
| `nor-dandelion-sprout.srs` | 🇳🇴 NOR: Dandelion Sprouts. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/nor-dandelion-sprout.srs) |
| `pol-cert-polska.srs` | 🇵🇱 POL: CERT Polska malicious domains. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/pol-cert-polska.srs) |
| `pol-filters.srs` | 🇵🇱 POL: Polish filters. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/pol-filters.srs) |
| `swe-frellwits.srs` | 🇸🇪 SWE: Frellwit's Swedish Hosts. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/swe-frellwits.srs) |
| `tur-turkish-ad-hosts.srs` | 🇹🇷 TUR: Turkish Ad Hosts. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/tur-turkish-ad-hosts.srs) |
| `vnm-abpvn.srs` | 🇻🇳 VNM: ABPVN List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/vnm-abpvn.srs) |

### 🔧 Specific & Other
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `dandelion-sprout-push.srs` | Anti Push Notifications. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/dandelion-sprout-push.srs) |
| `hagezi-allowlist-referral.srs` | HaGeZi: Allowlist Referral. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-allowlist-referral.srs) |
| `hagezi-anti-piracy.srs` | HaGeZi: Anti-Piracy. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-anti-piracy.srs) |
| `hagezi-gambling.srs` | HaGeZi: Gambling. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-gambling.srs) |
| `hagezi-nsfw.srs` | HaGeZi: Adult content. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-nsfw.srs) |
| `hagezi-popup-ads.srs` | HaGeZi: Pop-Up Ads. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-popup-ads.srs) |
| `hagezi-safesearch.srs` | HaGeZi: Safe search enforcement. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-safesearch.srs) |
| `hagezi-social.srs` | HaGeZi: Social media domains. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-social.srs) |
| `hagezi-tracker-amazon.srs` | HaGeZi: Amazon Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-amazon.srs) |
| `hagezi-tracker-apple.srs` | HaGeZi: Apple Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-apple.srs) |
| `hagezi-tracker-huawei.srs` | HaGeZi: Huawei Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-huawei.srs) |
| `hagezi-tracker-lg-webos.srs` | HaGeZi: LG webOS Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-lg-webos.srs) |
| `hagezi-tracker-oppo-realme.srs` | HaGeZi: OPPO/Realme Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-oppo-realme.srs) |
| `hagezi-tracker-roku.srs` | HaGeZi: Roku Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-roku.srs) |
| `hagezi-tracker-samsung.srs` | HaGeZi: Samsung Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-samsung.srs) |
| `hagezi-tracker-tiktok.srs` | HaGeZi: TikTok Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-tiktok.srs) |
| `hagezi-tracker-vivo.srs` | HaGeZi: Vivo Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-vivo.srs) |
| `hagezi-tracker-windows.srs` | HaGeZi: Windows/Office Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-windows.srs) |
| `hagezi-tracker-xiaomi.srs` | HaGeZi: Xiaomi Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-xiaomi.srs) |
| `mullvad-social.srs` | Mullvad: Social media domains. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/mullvad-social.srs) |
| `no-google.srs` | No Google. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/no-google.srs) |
| `oisd-nsfw-small.srs` | OISD NSFW Small: Lightweight adult content. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/oisd-nsfw-small.srs) |
| `oisd-nsfw.srs` | OISD NSFW: Adult content. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/oisd-nsfw.srs) |
| `shadowwhisperer-dating.srs` | ShadowWhisperer Dating List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/shadowwhisperer-dating.srs) |
| `smart-tv.srs` | Smart TV Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/smart-tv.srs) |
| `windows-spy-blocker.srs` | WindowsSpyBlocker: Windows telemetry. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/windows-spy-blocker.srs) |



## Usage in Sing-box

You can use these remote rule sets directly in your `config.json`.

**Example `route` configuration:**

```json
{
  "route": {
    "rule_set": [
      {
        "tag": "geosite-hagezi",
        "type": "remote",
        "format": "binary",
        "url": "https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-normal.srs",
        "download_detour": "direct" 
      }
    ],
    "rules": [
      {
        "rule_set": "geosite-hagezi",
        "action": "reject"
      }
    ]
  }
}
```

*Note: Replace `hagezi-normal.srs` with your preferred variant.*

## Automation

This repository uses GitHub Actions to:
1.  Download the latest DNS blocklists.
2.  Download the `sing-box` binary.
3.  Convert rules to `.srs` format.
4.  Publish the binary files to the `latest` tag in Releases.

Updates run automatically **every day at 02:00 UTC**.

The body of every **[Release](../../releases/latest)** includes a per-rule **conversion ratio** — `Output` DNS entries divided by `Source` lines in the upstream file — so you can see at a glance which lists translate cleanly into DNS rules and which (typically EasyList-style browser filters) only contribute their network-layer subset. A `Total` row aggregates across all successful rules, and any rules that failed today are listed below with the failing step.

## Manual Build

If you want to build the rules locally:

1.  Clone this repository.
2.  Run the update script:
    ```bash
    chmod +x update.sh
    ./update.sh
    ```
3.  The converted `.srs` files will be in the `rule-set/` directory.

## Credits

-   **Blocklists:**
    -   [1Hosts](https://github.com/badmojr/1Hosts)
    -   [ABPVN](https://abpvn.com/)
    -   [ABPindo](https://github.com/ABPindo/indonesianadblockrules)
    -   [AdAway](https://github.com/AdAway/adaway.github.io)
    -   [AdGuard DNS Filter](https://github.com/AdguardTeam/AdGuardSDNSFilter)
    -   [AdGuard HostlistsRegistry](https://github.com/AdguardTeam/HostlistsRegistry)
    -   [AdRules](https://github.com/Cats-Team/AdRules)
    -   [anti-AD](https://github.com/privacy-protection-tools/anti-AD)
    -   [AW Avenue Ads Rule](https://github.com/TG-Twilight/AWAvenue-Ads-Rule)
    -   [Big List of Hacked Malware Web Sites](https://github.com/mitchellkrogza/The-Big-List-of-Hacked-Malware-Web-Sites)
    -   [CERT Polska](https://cert.pl/)
    -   [Dan Pollock](https://someonewhocares.org/hosts/)
    -   [Dandelion Sprout](https://github.com/DandelionSprout/adfilt)
    -   [Disconnect](https://disconnect.me/)
    -   [EasyList Hebrew](https://github.com/easylist/EasyListHebrew)
    -   [Frellwit's Swedish Hosts](https://github.com/lassekongo83/Frellwits-filter-lists)
    -   [Frogeye](https://hostfiles.frogeye.fr/)
    -   [Goodbye Ads](https://github.com/jerryn70/GoodbyeAds)
    -   [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists)
    -   [Hufilter](https://github.com/hufilter/hufilter)
    -   [List-KR](https://github.com/List-KR/List-KR)
    -   [Macedonian Pi-hole Blocklist](https://github.com/cchevy/macedonian-pi-hole-blocklist)
    -   [Mullvad DNS Blocklists](https://github.com/mullvad/dns-blocklists)
    -   [No Google](https://github.com/nickspaargaren/no-google)
    -   [NoCoin](https://github.com/hoshsadiq/adblock-nocoin-list)
    -   [OISD](https://oisd.nl/)
    -   [Perflyst (Smart TV)](https://github.com/Perflyst/PiHoleBlocklist)
    -   [PersianBlocker](https://github.com/MasterKia/PersianBlocker)
    -   [Peter Lowe](https://pgl.yoyo.org/adservers/)
    -   [Phishing Army](https://phishing.army/)
    -   [Polish filters for Pi-hole](https://github.com/MajkiIT/polish-ads-filter)
    -   [Scam Blocklist](https://github.com/durablenapkin/scamblocklist)
    -   [ShadowWhisperer](https://github.com/ShadowWhisperer/BlockLists)
    -   [Stalkerware Indicators](https://github.com/AssoEchap/stalkerware-indicators)
    -   [Steven Black](https://github.com/StevenBlack/hosts)
    -   [Turk Adlist](https://github.com/bkrucarci/turk-adlist)
    -   [Turkish Ad Hosts](https://github.com/symbuzzer/Turkish-Ad-Hosts)
    -   [uBlock Origin](https://github.com/uBlockOrigin/uAssets)
    -   [URLHaus](https://urlhaus.abuse.ch/)
    -   [WindowsSpyBlocker](https://github.com/crazy-max/WindowsSpyBlocker)
    -   [YouList](https://github.com/yous/YousList)
-   **Tool:** [Sing-box](https://github.com/SagerNet/sing-box)