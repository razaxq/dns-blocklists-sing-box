# Sing-box DNS 拦截规则集 (DNS Blocklists)

[中文说明](README_zh.md) | [English](README.md)

本项目自动将各种流行的 DNS 拦截列表 (AdGuard Home 格式) 转换为 **Sing-box Rule Set (`.srs`)** 格式。

> **分发分支已迁移至 `rule-set`。**
> 生成的 `.srs` 文件发布到孤立分支 [`rule-set`](../../tree/rule-set)（每次更新强制覆盖），`main` 分支不再承载规则文件，仓库体积保持最小。请更新已缓存的 URL：`@main/rule-set/<name>.srs` → `@rule-set/<name>.srs`。

## 可用规则集

以下规则集每天自动更新。所有文件均托管在 GitHub 上，并提供 jsDelivr CDN 加速下载。

### 🌟 HaGeZi 多用途规则
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `hagezi-light.srs` | 基础保护，误报率低。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-light.srs) |
| `hagezi-normal.srs` | 推荐大多数用户使用。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-normal.srs) |
| `hagezi-pro.srs` | 更好的保护，误报率稍高。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-pro.srs) |
| `hagezi-pro-plus.srs` | Pro 版本 + 更广泛的列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-pro-plus.srs) |
| `hagezi-ultimate.srs` | 最大程度的保护，适合高级用户。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-ultimate.srs) |

### 📦 常规与广告
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `1hosts-lite.srs` | 1Hosts Lite: 轻量级，误报少。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/1hosts-lite.srs) |
| `1hosts-xtra.srs` | 1Hosts Xtra: 强力保护。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/1hosts-xtra.srs) |
| `adaway.srs` | AdAway: 移动端 hosts 文件。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/adaway.srs) |
| `adguard-dns-filter.srs` | AdGuard DNS Filter: 标准 AdGuard 保护。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/adguard-dns-filter.srs) |
| `aw-avenue-ads.srs` | AW Avenue 广告规则。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/aw-avenue-ads.srs) |
| `dan-pollock.srs` | Dan Pollock 的列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/dan-pollock.srs) |
| `disconnect-ads.srs` | Disconnect: 精选广告域名。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/disconnect-ads.srs) |
| `goodbye-ads.srs` | Goodbye Ads: 移动端/YouTube 重点。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/goodbye-ads.srs) |
| `oisd-big.srs` | OISD Big: 综合拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/oisd-big.srs) |
| `oisd-small.srs` | OISD Small: 基础广告拦截。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/oisd-small.srs) |
| `peter-lowe.srs` | Peter Lowe 的拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/peter-lowe.srs) |
| `shadowwhisperer-tracking.srs` | ShadowWhisperer 跟踪列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/shadowwhisperer-tracking.srs) |
| `steven-black.srs` | Steven Black 的列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/steven-black.srs) |

### 🛡️ 安全与隐私
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `big-list-hacked-malware.srs` | 被黑恶意软件网站大列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/big-list-hacked-malware.srs) |
| `dandelion-sprout-anti-malware.srs` | Dandelion Sprout 的反恶意软件列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/dandelion-sprout-anti-malware.srs) |
| `hagezi-abused-tlds.srs` | HaGeZi: 滥用最严重的顶级域名。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-abused-tlds.srs) |
| `hagezi-badware-hoster.srs` | HaGeZi: 恶意软件托管商。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-badware-hoster.srs) |
| `hagezi-bypass.srs` | HaGeZi: DoH/VPN/代理绕过。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-bypass.srs) |
| `hagezi-dyndns.srs` | HaGeZi: 动态 DNS (DynDNS)。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-dyndns.srs) |
| `hagezi-tif.srs` | HaGeZi: 威胁情报源 (TIF)。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tif.srs) |
| `hagezi-url-shortener.srs` | HaGeZi: 短链接拦截。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-url-shortener.srs) |
| `mullvad-privacy.srs` | Mullvad: 隐私/跟踪器域名。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/mullvad-privacy.srs) |
| `nocoin.srs` | NoCoin 挖矿拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/nocoin.srs) |
| `phishing-army.srs` | Phishing Army 钓鱼拦截。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/phishing-army.srs) |
| `scam-blocklist.srs` | 诈骗网站拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/scam-blocklist.srs) |
| `security-phishing.srs` | 钓鱼 URL 拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/security-phishing.srs) |
| `shadowwhisperer-malware.srs` | ShadowWhisperer 恶意软件列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/shadowwhisperer-malware.srs) |
| `stalkerware.srs` | 跟踪软件指标。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/stalkerware.srs) |

### 🌍 区域列表
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `chn-adrules.srs` | 🇨🇳 CHN: AdRules DNS 列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/chn-adrules.srs) |
| `chn-anti-ad.srs` | 🇨🇳 CHN: anti-AD。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/chn-anti-ad.srs) |
| `cze-svk-easylist.srs` | 🇨🇿🇸🇰 CZE/SVK: 捷克/斯洛伐克 EasyList。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/cze-svk-easylist.srs) |
| `esp-easylist.srs` | 🇪🇸 ESP: 西班牙语 EasyList。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/esp-easylist.srs) |
| `hun-hufilter.srs` | 🇭🇺 HUN: Hufilter。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hun-hufilter.srs) |
| `idn-abpindo.srs` | 🇮🇩 IDN: ABPindo。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/idn-abpindo.srs) |
| `irn-persianblocker.srs` | 🇮🇷 IRN: PersianBlocker。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/irn-persianblocker.srs) |
| `isr-easylist-hebrew.srs` | 🇮🇱 ISR: EasyList Hebrew。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/isr-easylist-hebrew.srs) |
| `jpn-tofukko.srs` | 🇯🇵 JPN: 豆腐フィルタ (日语)。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/jpn-tofukko.srs) |
| `kor-list-kr.srs` | 🇰🇷 KOR: List-KR DNS (AdGuard HLR)。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/kor-list-kr.srs) |
| `kor-youlist.srs` | 🇰🇷 KOR: YouList。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/kor-youlist.srs) |
| `ltu-easylist.srs` | 🇱🇹 LTU: EasyList 立陶宛语。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/ltu-easylist.srs) |
| `mkd-macedonian.srs` | 🇲🇰 MKD: 马其顿拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/mkd-macedonian.srs) |
| `nor-dandelion-sprout.srs` | 🇳🇴 NOR: Dandelion Sprouts。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/nor-dandelion-sprout.srs) |
| `pol-filters.srs` | 🇵🇱 POL: 波兰过滤器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/pol-filters.srs) |
| `swe-frellwits.srs` | 🇸🇪 SWE: Frellwit 瑞典语 Hosts。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/swe-frellwits.srs) |
| `tur-turkish-ad-hosts.srs` | 🇹🇷 TUR: 土耳其广告 Hosts。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/tur-turkish-ad-hosts.srs) |
| `vnm-abpvn.srs` | 🇻🇳 VNM: ABPVN 列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/vnm-abpvn.srs) |

### 🔧 特定与其他
| 规则集 | 描述 | 下载 |
| :--- | :--- | :--- |
| `dandelion-sprout-game-console.srs` | 游戏主机广告拦截。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/dandelion-sprout-game-console.srs) |
| `dandelion-sprout-push.srs` | 拦截推送通知。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/dandelion-sprout-push.srs) |
| `hagezi-allowlist-referral.srs` | HaGeZi: 推荐白名单。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-allowlist-referral.srs) |
| `hagezi-anti-piracy.srs` | HaGeZi: 反盗版。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-anti-piracy.srs) |
| `hagezi-gambling.srs` | HaGeZi: 赌博网站。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-gambling.srs) |
| `hagezi-tracker-apple.srs` | HaGeZi: Apple 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-apple.srs) |
| `hagezi-tracker-oppo-realme.srs` | HaGeZi: OPPO/Realme 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-oppo-realme.srs) |
| `hagezi-tracker-samsung.srs` | HaGeZi: Samsung 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-samsung.srs) |
| `hagezi-tracker-vivo.srs` | HaGeZi: Vivo 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-vivo.srs) |
| `hagezi-tracker-windows.srs` | HaGeZi: Windows/Office 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-windows.srs) |
| `hagezi-tracker-xiaomi.srs` | HaGeZi: Xiaomi 跟踪器。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/hagezi-tracker-xiaomi.srs) |
| `mullvad-social.srs` | Mullvad: 社交媒体域名。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/mullvad-social.srs) |
| `no-google.srs` | 去 Google 列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/no-google.srs) |
| `oisd-nsfw.srs` | OISD NSFW: 成人内容。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/oisd-nsfw.srs) |
| `shadowwhisperer-dating.srs` | ShadowWhisperer 约会网站列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/shadowwhisperer-dating.srs) |
| `smart-tv.srs` | 智能电视拦截列表。 | [下载](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@rule-set/smart-tv.srs) |

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

*注意：请根据需要将 `hagezi-normal.srs` 替换为您喜欢的版本。*

## 自动化

本项目使用 GitHub Actions 进行以下操作：
1.  下载最新的 DNS 拦截规则。
2.  下载 `sing-box` 二进制文件。
3.  将规则转换为 `.srs` 格式。
4.  将二进制文件发布到 Releases。

更新将于 **每天 02:00 UTC** 自动运行。

每个 **[Release](../../releases/latest)** 的描述里都会列出**每条规则的转化率** — `Output` (输出的 DNS 条目数) ÷ `Source` (源文件中非空非注释行数) — 一眼就能看出哪些上游列表能干净地转换为 DNS 规则,哪些(通常是 EasyList 风格的浏览器过滤器)只贡献了网络层那部分。表尾的 `Total` 行汇总所有成功条目;当天失败的规则会单独列在下方并标注失败步骤。

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
    -   [Dan Pollock](https://someonewhocares.org/hosts/)
    -   [Dandelion Sprout](https://github.com/DandelionSprout/adfilt)
    -   [Disconnect](https://disconnect.me/)
    -   [EasyList Czech and Slovak](https://github.com/tomasko126/easylistczechandslovak)
    -   [EasyList Hebrew](https://github.com/easylist/EasyListHebrew)
    -   [EasyList Lithuania](https://github.com/EasyList-Lithuania/easylist_lithuania)
    -   [EasyList Spanish](https://github.com/easylist/easylistspanish)
    -   [Frellwit's Swedish Hosts](https://github.com/lassekongo83/Frellwits-filter-lists)
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
    -   [tofukko フィルタ](https://tofukko.r.ribbon.to/abp.html)
    -   [Turk Adlist](https://github.com/bkrucarci/turk-adlist)
    -   [Turkish Ad Hosts](https://github.com/symbuzzer/Turkish-Ad-Hosts)
    -   [uBlock Origin](https://github.com/uBlockOrigin/uAssets)
    -   [URLHaus](https://urlhaus.abuse.ch/)
    -   [YouList](https://github.com/yous/YousList)
-   **Tool:** [Sing-box](https://github.com/SagerNet/sing-box)
