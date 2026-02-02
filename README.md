# Sing-box Rule Sets (HaGeZi Blocklists)

[中文说明](README_zh.md) | English

This repository automatically converts [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists) (AdGuard Home format) into **Sing-box Rule Set (`.srs`)** format.

## Available Rule Sets

The following rule sets are automatically updated daily.

- **Download .srs**: The compiled Sing-box binary rule set, hosted on jsDelivr for fast access.

| Rule Set | Description | Download .srs (CDN) |
| :--- | :--- | :--- |
| `hagezi-light.srs` | Basic protection, low false positive rate. | [**Download**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-light.srs) |
| `hagezi-normal.srs` | Recommended for most users. | [**Download**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-normal.srs) |
| `hagezi-pro.srs` | Better protection, slightly higher chance of false positives. | [**Download**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro.srs) |
| `hagezi-pro-plus.srs` | Pro + more extensive lists. | [**Download**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro-plus.srs) |
| `hagezi-ultimate.srs` | Maximum protection, for advanced users. | [**Download**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-ultimate.srs) |
| `1hosts-lite.srs` | 1Hosts Lite: Lightweight, low false positives. | [**Download**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/1hosts-lite.srs) |
| `1hosts-xtra.srs` | 1Hosts Xtra: Aggressive protection. | [**Download**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/1hosts-xtra.srs) |
| `adguard-dns-filter.srs` | AdGuard DNS Filter: Standard AdGuard protection. | [**Download**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/adguard-dns-filter.srs) |

### Additional Rule Sets

We now support a wide range of additional rule sets covering:

-   **Conventional:** AW Avenue, Dan Pollock, OISD (Big/Small), Peter Lowe, ShadowWhisperer, Steven Black.
-   **Regional:** China (AdRules, anti-AD), Hungary, Indonesia, Iran, Israel, Korea, Lithuania, Macedonia, Norway, Poland, Sweden, Turkey, Vietnam.
-   **Security:** Phishing, Malware, Badware, CNC, Cryptojacking, Typosquatting (URLHaus, PhishTank, etc.).
-   **Specific:** Anti-Piracy, Gambling, Native Trackers (Apple, Samsung, Xiaomi, Windows, etc.), Smart TV, Game Console.

Check the [`rule-set/`](rule-set/) directory for the full list of available `.srs` files.


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
