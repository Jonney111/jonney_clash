# jonney_clash配置文件
更改INI文件
# AdGuardHome Rules
## 1. 过滤
 规则名称                   | 订阅地址                                                     | 说明                                                         |
| -------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| anti-AD                    | https://anti-ad.net/easylist.txt                             | 命中率最高列表，每天更新维护                                 |
| Halflife规则               | https://gitee.com/halflife/list/raw/master/ad.txt            | 涵盖了 EasyList China、EasyList Lite、CJX ’s Annoyance、乘风视频过滤规则，以及补充的其它规则 |
| AdGuardSDNSFilter          | https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/AdGuardSDNSFilter/AdGuardSDNSFilter.list            | Clash过滤规则 |
| EasyPrivacy                | https://easylist.to/easylist/easyprivacy.txt                 | 去除隐私、跟踪定位相关代码                                              |
| 1024_hosts                 | https://cdn.jsdelivr.net/gh/Goooler/1024_hosts@master/hosts  | host去除法                                                   |
| adgk手机去广告规则         | https://cdn.jsdelivr.net/gh/banbendalao/ADgk@master/ADgk.txt | 手机代码去广告，手机版本推荐订阅                             |
## 2. 允许
 规则名称                   | 订阅地址                                                     | 说明                                                         |
| -------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| AdGuardSDNSFilterDirect    | https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/rule/Clash/AdGuardSDNSFilter/Direct/Direct.list | 允许列表      |

## 上游 DNS 服务器

```yaml
114.114.114.114
199.85.126.20
208.67.220.123
https://dns.alidns.com/dns-query
https://doh.pub/dns-query
https://dns.cloudflare.com/dns-query
https://dns.google/dns-query
https://dns.adguard.com/dns-query
https://dns.nextdns.io # /id/你的设备名称
```

## Bootstrap DNS 服务器

```yaml
223.5.5.5
114.114.114.114
119.29.29.29
1.1.1.1
8.8.8.8


```
