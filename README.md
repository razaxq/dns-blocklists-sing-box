# Sing-box DNS Blocklist Rule Sets

[中文说明](README_zh.md) | English

This repository automatically converts various popular DNS Blocklists (AdGuard Home format) into **Sing-box Rule Set (`.srs`)** format.

## Available Rule Sets

The following rule sets are automatically updated daily. All files are hosted on GitHub Releases for fast global access.

### 🌟 HaGeZi Multi-Purpose
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `hagezi-light.srs` | Basic protection, low false positive rate. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-light.srs) |
| `hagezi-normal.srs` | Recommended for most users. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-normal.srs) |
| `hagezi-pro.srs` | Better protection, slightly higher chance of false positives. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-pro.srs) |
| `hagezi-pro-plus.srs` | Pro + more extensive lists. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-pro-plus.srs) |
| `hagezi-ultimate.srs` | Maximum protection, for advanced users. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-ultimate.srs) |

### 📦 Conventional & Ads
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `1hosts-lite.srs` | 1Hosts Lite: Lightweight, low false positives. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/1hosts-lite.srs) |
| `1hosts-xtra.srs` | 1Hosts Xtra: Aggressive protection. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/1hosts-xtra.srs) |
| `adguard-dns-filter.srs` | AdGuard DNS Filter: Standard protection. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/adguard-dns-filter.srs) |
| `aw-avenue-ads.srs` | AW Avenue Ads Rule. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/aw-avenue-ads.srs) |
| `dan-pollock.srs` | Dan Pollock’s List. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/dan-pollock.srs) |
| `oisd-big.srs` | OISD Big: Comprehensive blocklist. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/oisd-big.srs) |
| `oisd-small.srs` | OISD Small: Basic ad blocking. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/oisd-small.srs) |
| `peter-lowe.srs` | Peter Lowe’s Blocklist. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/peter-lowe.srs) |
| `shadowwhisperer-tracking.srs` | ShadowWhisperer Tracking List. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/shadowwhisperer-tracking.srs) |
| `steven-black.srs` | Steven Black’s List. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/steven-black.srs) |

### 🛡️ Security & Privacy
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `big-list-hacked-malware.srs` | The Big List of Hacked Malware Web Sites. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/big-list-hacked-malware.srs) |
| `dandelion-sprout-anti-malware.srs` | Dandelion Sprout’s Anti-Malware. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/dandelion-sprout-anti-malware.srs) |
| `hagezi-abused-tlds.srs` | HaGeZi: Most Abused TLDs. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-abused-tlds.srs) |
| `hagezi-badware-hoster.srs` | HaGeZi: Badware Hoster. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-badware-hoster.srs) |
| `hagezi-bypass.srs` | HaGeZi: DoH/VPN/Proxy Bypass. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-bypass.srs) |
| `hagezi-dns-rebind.srs` | HaGeZi: DNS Rebind Protection. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-dns-rebind.srs) |
| `hagezi-dyndns.srs` | HaGeZi: DynDNS. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-dyndns.srs) |
| `hagezi-tif.srs` | HaGeZi: Threat Intelligence Feeds. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-tif.srs) |
| `hagezi-url-shortener.srs` | HaGeZi: URL Shortener. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-url-shortener.srs) |
| `nocoin.srs` | NoCoin Filter List. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/nocoin.srs) |
| `phishing-army.srs` | Phishing Army. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/phishing-army.srs) |
| `scam-blocklist.srs` | Scam Blocklist. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/scam-blocklist.srs) |
| `security-phishing.srs` | Phishing URL Blocklist. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/security-phishing.srs) |
| `shadowwhisperer-malware.srs` | ShadowWhisperer Malware List. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/shadowwhisperer-malware.srs) |
| `stalkerware.srs` | Stalkerware Indicators. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/stalkerware.srs) |
| `ublock-badware.srs` | uBlock₀ filters – Badware risks. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/ublock-badware.srs) |
| `urlhaus.srs` | Malicious URL Blocklist (URLHaus). | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/urlhaus.srs) |

### 🌍 Regional Lists
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `chn-adrules.srs` | 🇨🇳 CHN: AdRules DNS List. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/chn-adrules.srs) |
| `chn-anti-ad.srs` | 🇨🇳 CHN: anti-AD. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/chn-anti-ad.srs) |
| `hun-hufilter.srs` | 🇭🇺 HUN: Hufilter. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hun-hufilter.srs) |
| `idn-abpindo.srs` | 🇮🇩 IDN: ABPindo. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/idn-abpindo.srs) |
| `irn-persianblocker.srs` | 🇮🇷 IRN: PersianBlocker. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/irn-persianblocker.srs) |
| `isr-easylist-hebrew.srs` | 🇮🇱 ISR: EasyList Hebrew. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/isr-easylist-hebrew.srs) |
| `kor-youlist.srs` | 🇰🇷 KOR: YouList. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/kor-youlist.srs) |
| `mkd-macedonian.srs` | 🇲🇰 MKD: Macedonian Blocklist. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/mkd-macedonian.srs) |
| `nor-dandelion-sprout.srs` | 🇳🇴 NOR: Dandelion Sprouts. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/nor-dandelion-sprout.srs) |
| `pol-filters.srs` | 🇵🇱 POL: Polish filters. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/pol-filters.srs) |
| `tur-turkish-ad-hosts.srs` | 🇹🇷 TUR: Turkish Ad Hosts. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/tur-turkish-ad-hosts.srs) |
| `ukrainian-security.srs` | 🇺🇦 UKR: Ukrainian Security Filter. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/ukrainian-security.srs) |
| `vnm-abpvn.srs` | 🇻🇳 VNM: ABPVN List. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/vnm-abpvn.srs) |

### 🔧 Specific & Other
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `dandelion-sprout-game-console.srs` | Game Console Adblock. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/dandelion-sprout-game-console.srs) |
| `dandelion-sprout-push.srs` | Anti Push Notifications. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/dandelion-sprout-push.srs) |
| `hagezi-allowlist-referral.srs` | HaGeZi: Allowlist Referral. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-allowlist-referral.srs) |
| `hagezi-anti-piracy.srs` | HaGeZi: Anti-Piracy. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-anti-piracy.srs) |
| `hagezi-gambling.srs` | HaGeZi: Gambling. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-gambling.srs) |
| `hagezi-tracker-apple.srs` | HaGeZi: Apple Tracker. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-tracker-apple.srs) |
| `hagezi-tracker-oppo-realme.srs` | HaGeZi: OPPO/Realme Tracker. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-tracker-oppo-realme.srs) |
| `hagezi-tracker-samsung.srs` | HaGeZi: Samsung Tracker. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-tracker-samsung.srs) |
| `hagezi-tracker-vivo.srs` | HaGeZi: Vivo Tracker. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-tracker-vivo.srs) |
| `hagezi-tracker-windows.srs` | HaGeZi: Windows/Office Tracker. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-tracker-windows.srs) |
| `hagezi-tracker-xiaomi.srs` | HaGeZi: Xiaomi Tracker. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-tracker-xiaomi.srs) |
| `no-google.srs` | No Google. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/no-google.srs) |
| `shadowwhisperer-dating.srs` | ShadowWhisperer Dating List. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/shadowwhisperer-dating.srs) |
| `smart-tv.srs` | Smart TV Blocklist. | [Download](https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/smart-tv.srs) |



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
        "url": "https://github.com/razaxq/dns-blocklists-sing-box/releases/latest/download/hagezi-normal.srs",
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
    -   [AdGuard DNS Filter](https://github.com/AdguardTeam/AdGuardSDNSFilter)
    -   [AdRules](https://github.com/Cats-Team/AdRules)
    -   [anti-AD](https://github.com/privacy-protection-tools/anti-AD)
    -   [AW Avenue Ads Rule](https://github.com/TG-Twilight/AWAvenue-Ads-Rule)
        - [Big List of Hacked Malware Web Sites](https://github.com/mitchellkrogza/The-Big-List-of-Hacked-Malware-Web-Sites)
        - [Dan Pollock](https://someonewhocares.org/hosts/)
    -   [Dandelion Sprout](https://github.com/DandelionSprout/adfilt)
    -   [EasyList Hebrew](https://github.com/easylist/EasyListHebrew)
    -   [EasyList Lithuania](https://github.com/EasyList-Lithuania/easylist_lithuania)
    -   [Frellwit's Swedish Hosts](https://github.com/lassekongo83/Frellwits-filter-lists)
    -   [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists)
    -   [Hufilter](https://github.com/hufilter/hufilter)
    -   [List-KR](https://github.com/List-KR/List-KR)
    -   [Macedonian Pi-hole Blocklist](https://github.com/cchevy/macedonian-pi-hole-blocklist)
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
    -   [Ukrainian Security Filter](https://github.com/braveinnovators/ukrainian-security-filter)
    -   [URLHaus](https://urlhaus.abuse.ch/)
    -   [YouList](https://github.com/yous/YousList)
-   **Tool:** [Sing-box](https://github.com/SagerNet/sing-box)
