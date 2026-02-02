# Sing-box 规则集 (HaGeZi Blocklists)

[中文说明](README_zh.md) | [English](README.md)

本项目自动将 [HaGeZi 的 DNS 拦截列表](https://github.com/hagezi/dns-blocklists) (AdGuard Home 格式) 转换为 **Sing-box Rule Set (`.srs`)** 格式。

## 可用规则集

以下规则集每天自动更新。所有文件均托管在 jsDelivr 上，支持全球快速访问。

### 🌟 HaGeZi 多用途规则
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `hagezi-light.srs` | 基础保护，误报率低。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-light.srs) |
| `hagezi-normal.srs` | 推荐大多数用户使用。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-normal.srs) |
| `hagezi-pro.srs` | 更好的保护，误报率稍高。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro.srs) |
| `hagezi-pro-plus.srs` | Pro 版本 + 更广泛的列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro-plus.srs) |
| `hagezi-ultimate.srs` | 最大程度的保护，适合高级用户。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-ultimate.srs) |

### 📦 常规与广告
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `1hosts-lite.srs` | 1Hosts Lite: 轻量级，误报少。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/1hosts-lite.srs) |
| `1hosts-xtra.srs` | 1Hosts Xtra: 强力保护。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/1hosts-xtra.srs) |
| `adguard-dns-filter.srs` | AdGuard DNS Filter: 标准 AdGuard 保护。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/adguard-dns-filter.srs) |
| `aw-avenue-ads.srs` | AW Avenue 广告规则。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/aw-avenue-ads.srs) |
| `dan-pollock.srs` | Dan Pollock 的列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/dan-pollock.srs) |
| `oisd-big.srs` | OISD Big: 综合拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/oisd-big.srs) |
| `oisd-small.srs` | OISD Small: 基础广告拦截。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/oisd-small.srs) |
| `peter-lowe.srs` | Peter Lowe 的拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/peter-lowe.srs) |
| `shadowwhisperer-tracking.srs` | ShadowWhisperer 跟踪列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/shadowwhisperer-tracking.srs) |
| `steven-black.srs` | Steven Black 的列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/steven-black.srs) |

### 🛡️ 安全与隐私
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `big-list-hacked-malware.srs` | 被黑恶意软件网站大列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/big-list-hacked-malware.srs) |
| `dandelion-sprout-anti-malware.srs` | Dandelion Sprout 的反恶意软件列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/dandelion-sprout-anti-malware.srs) |
| `hagezi-abused-tlds.srs` | HaGeZi: 滥用最严重的顶级域名。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-abused-tlds.srs) |
| `hagezi-badware-hoster.srs` | HaGeZi: 恶意软件托管商。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-badware-hoster.srs) |
| `hagezi-bypass.srs` | HaGeZi: DoH/VPN/代理绕过。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-bypass.srs) |
| `hagezi-dns-rebind.srs` | HaGeZi: DNS 重绑定保护。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-dns-rebind.srs) |
| `hagezi-dyndns.srs` | HaGeZi: 动态 DNS (DynDNS)。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-dyndns.srs) |
| `hagezi-tif.srs` | HaGeZi: 威胁情报源 (TIF)。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tif.srs) |
| `hagezi-url-shortener.srs` | HaGeZi: 短链接拦截。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-url-shortener.srs) |
| `nocoin.srs` | NoCoin 挖矿拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/nocoin.srs) |
| `phishing-army.srs` | Phishing Army 钓鱼拦截。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/phishing-army.srs) |
| `scam-blocklist.srs` | 诈骗网站拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/scam-blocklist.srs) |
| `security-phishing.srs` | 钓鱼 URL 拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/security-phishing.srs) |
| `shadowwhisperer-malware.srs` | ShadowWhisperer 恶意软件列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/shadowwhisperer-malware.srs) |
| `stalkerware.srs` | 跟踪软件指标。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/stalkerware.srs) |
| `ublock-badware.srs` | uBlock₀ 恶意软件风险过滤器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/ublock-badware.srs) |
| `urlhaus.srs` | 恶意 URL 拦截列表 (URLHaus)。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/urlhaus.srs) |

### 🌍 区域列表
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `chn-adrules.srs` | 🇨🇳 CHN: AdRules DNS 列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/chn-adrules.srs) |
| `chn-anti-ad.srs` | 🇨🇳 CHN: anti-AD。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/chn-anti-ad.srs) |
| `hun-hufilter.srs` | 🇭🇺 HUN: Hufilter。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hun-hufilter.srs) |
| `idn-abpindo.srs` | 🇮🇩 IDN: ABPindo。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/idn-abpindo.srs) |
| `irn-persianblocker.srs` | 🇮🇷 IRN: PersianBlocker。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/irn-persianblocker.srs) |
| `isr-easylist-hebrew.srs` | 🇮🇱 ISR: EasyList Hebrew。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/isr-easylist-hebrew.srs) |
| `kor-youlist.srs` | 🇰🇷 KOR: YouList。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/kor-youlist.srs) |
| `mkd-macedonian.srs` | 🇲🇰 MKD: 马其顿拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/mkd-macedonian.srs) |
| `nor-dandelion-sprout.srs` | 🇳🇴 NOR: Dandelion Sprouts。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/nor-dandelion-sprout.srs) |
| `pol-filters.srs` | 🇵🇱 POL: 波兰过滤器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/pol-filters.srs) |
| `tur-turkish-ad-hosts.srs` | 🇹🇷 TUR: 土耳其广告 Hosts。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/tur-turkish-ad-hosts.srs) |
| `ukrainian-security.srs` | 🇺🇦 UKR: 乌克兰安全过滤器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/ukrainian-security.srs) |
| `vnm-abpvn.srs` | 🇻🇳 VNM: ABPVN 列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/vnm-abpvn.srs) |

### 🔧 特定与其他
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `dandelion-sprout-game-console.srs` | 游戏主机广告拦截。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/dandelion-sprout-game-console.srs) |
| `dandelion-sprout-push.srs` | 拦截推送通知。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/dandelion-sprout-push.srs) |
| `hagezi-allowlist-referral.srs` | HaGeZi: 推荐白名单。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-allowlist-referral.srs) |
| `hagezi-anti-piracy.srs` | HaGeZi: 反盗版。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-anti-piracy.srs) |
| `hagezi-gambling.srs` | HaGeZi: 赌博网站。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-gambling.srs) |
| `hagezi-tracker-apple.srs` | HaGeZi: Apple 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-apple.srs) |
| `hagezi-tracker-oppo-realme.srs` | HaGeZi: OPPO/Realme 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-oppo-realme.srs) |
| `hagezi-tracker-samsung.srs` | HaGeZi: Samsung 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-samsung.srs) |
| `hagezi-tracker-vivo.srs` | HaGeZi: Vivo 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-vivo.srs) |
| `hagezi-tracker-windows.srs` | HaGeZi: Windows/Office 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-windows.srs) |
| `hagezi-tracker-xiaomi.srs` | HaGeZi: Xiaomi 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-tracker-xiaomi.srs) |
| `no-google.srs` | 去 Google 列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/no-google.srs) |
| `shadowwhisperer-dating.srs` | ShadowWhisperer 约会网站列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/shadowwhisperer-dating.srs) |
| `smart-tv.srs` | 智能电视拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/smart-tv.srs) |

## 在 Sing-box 中使用

您可以直接在 `config.json` 中使用这些远程规则集。

**`route` 配置示例：**

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

*注意：请根据需要将 `hagezi-normal.srs` 替换为您喜欢的版本。*

## 自动化

本项目使用 GitHub Actions 进行以下操作：
1.  从 HaGeZi 下载最新的 AdGuard Home 规则。
2.  下载 `sing-box` 二进制文件。
3.  将规则转换为 `.srs` 格式。
4.  将二进制文件发布到 Releases。

更新将于 **每天 02:00 UTC** 自动运行。

## 手动构建

如果您想在本地构建规则：

1.  克隆此仓库。
2.  运行更新脚本：
    ```bash
    chmod +x update.sh
    ./update.sh
    ```
3.  转换后的 `.srs` 文件将位于 `rule-set/` 目录中。

## 鸣谢

-   **Blocklists:**
    -   [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists)
    -   [1Hosts](https://github.com/badmojr/1Hosts)
    -   [AdGuard DNS Filter](https://github.com/AdguardTeam/AdGuardSDNSFilter)
-   **Tool:** [Sing-box](https://github.com/SagerNet/sing-box)