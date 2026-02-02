# Sing-box Rule Sets (HaGeZi Blocklists)

[中文说明](README_zh.md) | English

This repository automatically converts [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists) (AdGuard Home format) into **Sing-box Rule Set (`.srs`)** format.

## Available Rule Sets

The following rule sets are automatically updated daily. All files are hosted on jsDelivr for fast global access.

### 🌟 HaGeZi Multi-Purpose
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `hagezi-light.srs` | Basic protection, low false positive rate. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-light.srs) |
| `hagezi-normal.srs` | Recommended for most users. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-normal.srs) |
| `hagezi-pro.srs` | Better protection, slightly higher chance of false positives. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro.srs) |
| `hagezi-pro-plus.srs` | Pro + more extensive lists. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro-plus.srs) |
| `hagezi-ultimate.srs` | Maximum protection, for advanced users. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-ultimate.srs) |

### 📦 Conventional & Ads
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `1hosts-lite.srs` | 1Hosts Lite: Lightweight, low false positives. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/1hosts-lite.srs) |
| `1hosts-xtra.srs` | 1Hosts Xtra: Aggressive protection. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/1hosts-xtra.srs) |
| `adguard-dns-filter.srs` | AdGuard DNS Filter: Standard protection. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/adguard-dns-filter.srs) |
| `aw-avenue-ads.srs` | AW Avenue Ads Rule. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/aw-avenue-ads.srs) |
| `dan-pollock.srs` | Dan Pollock’s List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/dan-pollock.srs) |
| `oisd-big.srs` | OISD Big: Comprehensive blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/oisd-big.srs) |
| `oisd-small.srs` | OISD Small: Basic ad blocking. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/oisd-small.srs) |
| `peter-lowe.srs` | Peter Lowe’s Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/peter-lowe.srs) |
| `shadowwhisperer-tracking.srs` | ShadowWhisperer Tracking List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/shadowwhisperer-tracking.srs) |
| `steven-black.srs` | Steven Black’s List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/steven-black.srs) |

### 🛡️ Security & Privacy
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `big-list-hacked-malware.srs` | The Big List of Hacked Malware Web Sites. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/big-list-hacked-malware.srs) |
| `dandelion-sprout-anti-malware.srs` | Dandelion Sprout’s Anti-Malware. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/dandelion-sprout-anti-malware.srs) |
| `hagezi-abused-tlds.srs` | HaGeZi: Most Abused TLDs. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-abused-tlds.srs) |
| `hagezi-badware-hoster.srs` | HaGeZi: Badware Hoster. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-badware-hoster.srs) |
| `hagezi-bypass.srs` | HaGeZi: DoH/VPN/Proxy Bypass. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-bypass.srs) |
| `hagezi-dns-rebind.srs` | HaGeZi: DNS Rebind Protection. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-dns-rebind.srs) |
| `hagezi-dyndns.srs` | HaGeZi: DynDNS. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-dyndns.srs) |
| `hagezi-tif.srs` | HaGeZi: Threat Intelligence Feeds. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tif.srs) |
| `hagezi-url-shortener.srs` | HaGeZi: URL Shortener. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-url-shortener.srs) |
| `nocoin.srs` | NoCoin Filter List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/nocoin.srs) |
| `phishing-army.srs` | Phishing Army. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/phishing-army.srs) |
| `scam-blocklist.srs` | Scam Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/scam-blocklist.srs) |
| `security-phishing.srs` | Phishing URL Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/security-phishing.srs) |
| `shadowwhisperer-malware.srs` | ShadowWhisperer Malware List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/shadowwhisperer-malware.srs) |
| `stalkerware.srs` | Stalkerware Indicators. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/stalkerware.srs) |
| `ublock-badware.srs` | uBlock₀ filters – Badware risks. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/ublock-badware.srs) |
| `urlhaus.srs` | Malicious URL Blocklist (URLHaus). | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/urlhaus.srs) |

### 🌍 Regional Lists
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `chn-adrules.srs` | 🇨🇳 CHN: AdRules DNS List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/chn-adrules.srs) |
| `chn-anti-ad.srs` | 🇨🇳 CHN: anti-AD. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/chn-anti-ad.srs) |
| `hun-hufilter.srs` | 🇭🇺 HUN: Hufilter. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hun-hufilter.srs) |
| `idn-abpindo.srs` | 🇮🇩 IDN: ABPindo. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/idn-abpindo.srs) |
| `irn-persianblocker.srs` | 🇮🇷 IRN: PersianBlocker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/irn-persianblocker.srs) |
| `isr-easylist-hebrew.srs` | 🇮🇱 ISR: EasyList Hebrew. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/isr-easylist-hebrew.srs) |
| `kor-youlist.srs` | 🇰🇷 KOR: YouList. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/kor-youlist.srs) |
| `mkd-macedonian.srs` | 🇲🇰 MKD: Macedonian Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/mkd-macedonian.srs) |
| `nor-dandelion-sprout.srs` | 🇳🇴 NOR: Dandelion Sprouts. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/nor-dandelion-sprout.srs) |
| `pol-filters.srs` | 🇵🇱 POL: Polish filters. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/pol-filters.srs) |
| `tur-turkish-ad-hosts.srs` | 🇹🇷 TUR: Turkish Ad Hosts. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/tur-turkish-ad-hosts.srs) |
| `ukrainian-security.srs` | 🇺🇦 UKR: Ukrainian Security Filter. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/ukrainian-security.srs) |
| `vnm-abpvn.srs` | 🇻🇳 VNM: ABPVN List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/vnm-abpvn.srs) |

### 🔧 Specific & Other
| Rule Set | Description | Download |
| :--- | :--- | :--- |
| `dandelion-sprout-game-console.srs` | Game Console Adblock. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/dandelion-sprout-game-console.srs) |
| `dandelion-sprout-push.srs` | Anti Push Notifications. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/dandelion-sprout-push.srs) |
| `hagezi-allowlist-referral.srs` | HaGeZi: Allowlist Referral. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-allowlist-referral.srs) |
| `hagezi-anti-piracy.srs` | HaGeZi: Anti-Piracy. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-anti-piracy.srs) |
| `hagezi-gambling.srs` | HaGeZi: Gambling. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-gambling.srs) |
| `hagezi-tracker-apple.srs` | HaGeZi: Apple Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-apple.srs) |
| `hagezi-tracker-oppo-realme.srs` | HaGeZi: OPPO/Realme Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-oppo-realme.srs) |
| `hagezi-tracker-samsung.srs` | HaGeZi: Samsung Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-samsung.srs) |
| `hagezi-tracker-vivo.srs` | HaGeZi: Vivo Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-vivo.srs) |
| `hagezi-tracker-windows.srs` | HaGeZi: Windows/Office Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-windows.srs) |
| `hagezi-tracker-xiaomi.srs` | HaGeZi: Xiaomi Tracker. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-xiaomi.srs) |
| `no-google.srs` | No Google. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/no-google.srs) |
| `shadowwhisperer-dating.srs` | ShadowWhisperer Dating List. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/shadowwhisperer-dating.srs) |
| `smart-tv.srs` | Smart TV Blocklist. | [Download](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/smart-tv.srs) |



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
        "url": "https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-normal.srs",
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
1.  Download the latest AdGuard Home rules from HaGeZi.
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
    -   [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists)
    -   [1Hosts](https://github.com/badmojr/1Hosts)
    -   [AdGuard DNS Filter](https://github.com/AdguardTeam/AdGuardSDNSFilter)
-   **Tool:** [Sing-box](https://github.com/SagerNet/sing-box)
