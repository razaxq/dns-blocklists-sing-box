# Sing-box 规则集 (HaGeZi Blocklists)

[中文说明](README_zh.md) | [English](README.md)

本项目自动将 [HaGeZi 的 DNS 拦截列表](https://github.com/hagezi/dns-blocklists) (AdGuard Home 格式) 转换为 **Sing-box Rule Set (`.srs`)** 格式。

## 可用规则集

以下规则集每天自动更新。

- **下载 .srs**: 编译好的 Sing-box 二进制规则集，托管在 jsDelivr 上以实现快速访问。

| 规则集 | 描述 | 下载 .srs (CDN) |
| :--- | :--- | :--- |
| `hagezi-light.srs` | 基础保护，误报率低。 | [**下载**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-light.srs) |
| `hagezi-normal.srs` | 推荐大多数用户使用。 | [**下载**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-normal.srs) |
| `hagezi-pro.srs` | 更好的保护，误报率稍高。 | [**下载**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro.srs) |
| `hagezi-pro-plus.srs` | Pro 版本 + 更广泛的列表。 | [**下载**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-pro-plus.srs) |
| `hagezi-ultimate.srs` | 最大程度的保护，适合高级用户。 | [**下载**](https://cdn.jsdelivr.net/gh/razaxq/dns-blocklists-sing-box@main/rule-set/hagezi-ultimate.srs) |

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

-   **Blocklists:** [HaGeZi's DNS Blocklists](https://github.com/hagezi/dns-blocklists)
-   **Tool:** [Sing-box](https://github.com/SagerNet/sing-box)
