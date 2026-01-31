# Sing-box Rule Sets (HaGeZi Blocklists)

This repository automatically converts [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists) (AdGuard Home format) into **Sing-box Rule Set (`.srs`)** format.

## Available Rule Sets

The following rule sets are automatically updated daily and available in the [Releases](../../releases/latest) page:

| Rule Set | Description | Source | CDN Link (Fast) |
| :--- | :--- | :--- | :--- |
| `hagezi-light.srs` | Basic protection, low false positive rate. | [Link](https://github.com/hagezi/dns-blocklists#light) | [jsDelivr](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-light.srs) |
| `hagezi-normal.srs` | Recommended for most users. | [Link](https://github.com/hagezi/dns-blocklists#normal) | [jsDelivr](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-normal.srs) |
| `hagezi-pro.srs` | Better protection, slightly higher chance of false positives. | [Link](https://github.com/hagezi/dns-blocklists#pro) | [jsDelivr](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro.srs) |
| `hagezi-pro-plus.srs` | Pro + more extensive lists. | [Link](https://github.com/hagezi/dns-blocklists#pro) | [jsDelivr](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro-plus.srs) |
| `hagezi-ultimate.srs` | Maximum protection, for advanced users. | [Link](https://github.com/hagezi/dns-blocklists#ultimate) | [jsDelivr](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-ultimate.srs) |

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

-   **Blocklists:** [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists)
-   **Tool:** [Sing-box](https://github.com/SagerNet/sing-box)
