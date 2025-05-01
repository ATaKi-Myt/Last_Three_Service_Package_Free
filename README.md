# 三人行服务包 （Last_Three_Service_Package）

## 一、前言

### 1、概述

历时两个项目的结合，从原先的懒人包脚本和Compose商店中提取结合得到此项目的脚本，经过大家的一致反馈，而且圈粉无数，致力于为小白和重装系统的人群提供更优质的服务与帮助，故重新开源了此脚本，欢迎大家持续关注三人行，并提出各种适配问题，作者也会竭尽全力的为大伙努力改进！！！

### 2、支持系统

|序号|系统名称|系统英文名称|是否适配|
| :---: | :---: | :---: | :---: |
|1|飞牛|fnOS|是|
|2|黑群晖|Synology|是|
|3|绿联旧|Ugreen|是|
|4|绿联新|UgreenNew|是|
|5|极空间|ZSpace|是|
|6|威联通|QNAP|是|
|7|TrueNas|TrueNas|是|

## 二、服务包 Docker 集成项目列表

| 序号 | Docker 名称 | 作用 |端口| 用户名 | 密码 |
| :---: | :---: | :---: | :---: | :---: | :---: |
| 1 |all in one|三人行精简版|/|/|/|
| 2 | 1panel | 服务器面板 |30010|admin|password|
| 3 | aipan | 网盘资源索引器 |24000|/|/|
| 4 | alist-strm | Strm流文件生成器 |30050|自行创建|自行创建|
| 5 | alist | 网盘挂载 |24005|admin|运行日志获取|
| 6 | babybuddy | 育儿管理面板 |25020|admin|password|
| 7 | cashbook | 记账工具 |25000|自行创建|自行创建|
| 8 | chinesesubfinder | 字幕下载工具 |20025|自行创建|自行创建|
| 9 | clouddrive2 | 网盘挂载 |24015|自行创建|自行创建|
| 10 | cloudsaver | 网盘资源转存工具 |24010|自行创建|自行创建|
| 11 | dockge | Docker可视化工具 |30040|自行创建|自行创建|
| 12 | dpanel | Docker监控工具 |30060|自行创建|自行创建|
| 13 | emby | 媒体服务器 |20015|自行创建|自行创建|
| 14 | emulatorjs | 掌机模拟器 |23000/23001|/|/|
| 15 | ezbookkeeping | 记账工具 |25005|自行创建|自行创建|
| 16 | firefox | 火狐浏览器 |27000|/|/|
| 17 | frpc | frpc 穿透客户端 |/|/|/|
| 18 | homeassistant | 开源智能家居管理面板 |25030|自行创建|自行创建|
| 19 | homebox | 家庭资产管理面板 |25015|自行创建|自行创建|
| 20 | icloudpd | icloud 图片转存工具 |24020|/|/|
| 21 | ip-tool | ip 检测工具箱 |27005|/|/|
| 22 | iptv-api | iptv |20020|/|/|
| 23 | istoreos | 软路由 |/|/|/|
| 24 | iyuuplus | 转种辅种 |30000|自行创建|自行创建|
| 25 | jackett | 索引器 |30030|/|/|
| 26 | jellyfin-library-poster | 媒体服务器自动生成海报 |/|/|/|
| 27 | jellyfin | 媒体服务器 |20010|自行创建|自行创建|
| 28 | kkfileview | 多格式文件在线预览 |26020|/|/|
| 29 | komga | 动漫库 |22005|自行创建|自行创建|
| 30 | libretv | 电视剧在线观看 |20035|/|/|
| 31 | lucky | 网络转发 |16601|666|666|
| 32 | lyricapi | 音流刮削器 |21010|/|/|
| 33 | mariadb | 数据库 |29010|/|/|
| 34 | mdcx | 小姐姐刮削服务器 |20045/20046|/|/|
| 35 | mediago | B站资源下载器 |28015|/|/|
| 36 | metatube | 小姐姐刮削服务器 |20030|/|/|
| 37 | moviepilot | 家庭影院 |20005|admin|运行日志获取|
| 38 | music-tag-web | 音乐刮削器 |21005|admin|admin|
| 39 | mysql | 数据库 |29000|/|/|
| 40 | nastool | 家庭影院 |20000|admin|password|
| 41 | navidrome | 音乐服务器 |21000|自行创建|自行创建|
| 42 | newsnow | 各大平台十条热搜 |30025|/|/|
| 43 | npc | npc 穿透客户端 |/|/|/|
| 44 | ollama | 智能体工具 |26025|/|/|
| 45 | open-webui | 可视化智能体对话面板 |26030|自行创建|自行创建|
| 46 | postgres | 数据库 |29005|/|/|
| 47 | qbittorrent | 下载器 |28000|admin|运行日志获取|
| 48 | qiandao | 每日签到 |30035|自行创建|自行创建|
| 49 | qinglong | 青龙脚本面板 |30015|自行创建|自行创建|
| 50 | reader | 电子书库 |22000|/|/|
| 51 | rustdesk-server | 远程桌面 |30066/30067|/|/|
| 52 | siyuan-note-unlock | 免登录版思源笔记 |26035|/|100|
| 53 | stirling-pdf | pdf 工具箱 |26015|/|/|
| 54 | sun-panel | 集成 Docker 状态及美化面板 |30005|admin@sun.cc|12345678|
| 55 | synctv | 多人在线共享影院 |20040|root|root|
| 56 | tailscale | 异地组网工具 |/|/|/|
| 57 | taoSync | 网盘同步工具 |30045|admin|运行日志获取|
| 58 | teamspeak | 低占用无广告游戏语音服务器 |23005|/|运行日志获取|
| 59 | transmission | 下载器 |28005|root|root|
| 60 | upsnap | 局域网络唤醒设备 |30070|/|/|
| 61 | v2raya | 代理 |27010|/|/|
| 62 | vertex | 刷流 |30020|admin|config文件夹内的password文件|
| 63 | verysync | 微力同步 |26010|/|/|
| 64 | vscode | 代码编辑器 |30055|/|password|
| 65 | wallos | 订阅服务统计 |25010|自行创建|自行创建|
| 66 | watchtower | 自动检测更新镜像 |/|/|/|
| 67 | wechat | 网页版微信 |26005|/|/|
| 68 | wps-office | 在线文档编辑器 |26000|admin|admin|
| 69 | xiaoaimusic | 小爱同学面板 |25025|/|/|
| 70 | xunlei | 下载器 |28010|admin|admin|
| 71 | zerotier | 异地组网工具 |/|/|/|

## 三、服务包目录介绍列表

| 序号 | 文件夹名称 | 作用 |
| :---: | :---: | :---: |
| 1 | Compose | 用于存放懒人包配置文件的文件夹 |
| 2 | Docker | 用于存放容器的文件夹 |
| 3 | Downloads | 用于迅雷远程下载文件夹 |
| 4 | Music | 用于存放音乐的 |
| 5 | Synchronous | 用于同步文件夹的 |
| 6 | Video | 用于存放影视的文件夹，包含硬链接文件夹 |

## 四、如何使用服务包

| 系统 | 根目录 |
| :---: | :---: |
|飞牛| `/vol1/*/ * vol1 存储空间1 * 用户ID`|
|黑群晖| `/volume1/*/ volume1 存储空间1 * 根路径名称`|
|绿联旧| `/mnt/dm-1/.ugreen_nas/*/ dm-1 存储空间1 * 根路径名称`|
|绿联新| `/volume1/@home/*/ volume1 存储空间1 * 根路径名称`|
|极空间| `/tmp/zfsv3/sata11/*/data/ sata11 存储空间 * 你的账户名称`|
|威联通| `/share/CACHEDEV1_DATA/*/ CACHEDEV1_DATA 存储空间 * 文件夹`|

* 打开 **FinalShell** 软件
* 进入 **root** 权限，输入`sudo -i` 并输入 **root** **密码**，进入 root 权限
* 以 **飞牛示例** ，输入`cd /vol1/1000/` 进入用户文件夹根目录，`mkdir Compose` 创建 Compose 文件夹
* 输入`cd Compose` 进入 Compose 文件夹，并输入如下命令

```bash
wget https://raw.githubusercontent.com/ATaKi-Myt/Last_Three_Service_Package/refs/heads/main/Last_Three_Service_Package.sh
```

* 拉取完成，`bash Last_Three_Service_Package.sh` 运行脚本
* 根据提示选择加速链接（**如果为墙外用户可以不使用加速，如果为墙内用户建议使用加速**）
* 根据提示选择系统（**选择您的 Nas 系统**）
* 根据提示输入安装的 `Docker` 服务（输入序号即可）
* 选择完成等待 `Docker pull` 和 `Docker run` 完成即可使用 `Docker` 服务了
* 如果出现拉取 443 表示拉取种，522 这种一般替换加速源即可，在 `https://raw.githubusercontent.com/ATaKi-Myt/Last_Three_Service_Package/refs/heads/main/Last_Three_Service_Package.sh` 前加入下方加速链接拉取即可

| 序号 | 加速链接 |
| :---: | :---: |
|1| `https://gitproxy.click/`|
|2| `https://github.moeyy.xyz/`|
|3| `https://github.tbedu.top/`|
|4| `https://github.proxy.class3.fun/`|
|5| `https://ghfile.geekertao.top/`|
|6| `https://github.proxy.class3.fun/`|
|7| `https://github-proxy.lixxing.top/`|
|8| `https://ghf.无名氏.top/`|
|9| `https://ghm.078465.xyz/`|
|10| `https://gh-proxy.net/`|

```bash
wget https://gitproxy.click/https://raw.githubusercontent.com/ATaKi-Myt/Last_Three_Service_Package/refs/heads/main/Last_Three_Service_Package.sh
```

## 五、更新日志

### Last_Three_Service_Package.sh v 1.0 版本更新日志：

#### 一、脚本逻辑

* 去除脚本内置的所有密码，并对此脚本进行开源
* 融入之前的脚本内容，包含输入 f 搜索，输入 d 删除容器，输入 i 查询用户ID等......新增输入 s 进入其他服务列表，输入 vi 自定义编辑 `.yml` 文件，输入 net 创建网络服务等
* 将懒人包内容和新的服务脚本加入其他服务列表共大家提供拉取
* 对脚本内的所有逻辑进行了检查并修复逻辑漏洞

#### 二、脚本内容

* 从之前的的项目，集成全部内容到此脚本中，融入了 `all in one` 和选择性项目
* 脚本 `Docker` 项目增至 55 个至多
* 对 `aipan` `nastool` 等项目进行优化，挑选最优解共大家选择
* 出于对大家的可自定义性，此脚本提供了，更改端口，更改文件路径等操作，更有支持 vi 自定义编辑 `.yml` 文件
* 对原先的 `Docker` 项目进行了端口重塑，把端口固定在了 20000 - 32000 期间，避免了各系统的端口冲突
* 目前存在问题的容器：1、极空间不适配 `clouddrive2` 的网盘挂载，2、黑群晖不适配 `teamspeak` 容器的安装

#### 三、后续优化

* 适配 `TrueNas` 、`CaSaos`
* 增加所有系统的精简版内容
* 增加所有系统的 `all in one` 内容

### Last_Three_Service_Package.sh v1.0.1 版本更新日志：

#### 一、脚本逻辑
* 新增其他服务内的：三人行精简版服务一键安装脚本
* 精简版服务内容如下（集成 emby jellyfin nastool moviepilot 按需删除无用容器）：

| 包含容器 |
| :---: |
|nastool|
|reader|
|iptv-api|
|firefox|
|qbittorrent|
|cloudsaver|
|xunlei|
|ip-tool|
|homeassistant|
|1panel|
|mediago|
|music-tag-web|
|stirling-pdf|
|iyuuplus|
|qinglong|
|chinesesubfinder|
|aipan|
|siyuan-note-unlock|
|jellyfin|
|kkfileview|
|metatube|
|komga|
|verysync|
|alist|
|moviepilot|
|sun-panel|
|navidrome|
|watchtower|
|clouddrive2|
|embyserver|
|transmission|

### Last_Three_Service_Package.sh v1.0.2 版本更新日志：
#### 一、脚本逻辑
* 暂无更新
#### 二、脚本内容
| 更新容器 |
| :---: |
|dockge|
|libretv|
|lucky|
|qiandao|
|synctv|
#### 三、后续优化
* 后续适配 TrueNAS

### Last_Three_Service_Package.sh v1.0.3 版本更新日志：
#### 一、脚本逻辑
* 主菜单加入，输入 log，查看当前运行容器的容器日志
* 服务菜单加入，服务包更新脚本
* 已适配 TrueNAS
#### 二、脚本内容
| 更新容器 |
| :---: |
|taoSync|
#### 三、后续优化
* 暂无更新

### Last_Three_Service_Package.sh v1.1.0 版本更新日志：
#### 一、脚本逻辑
* 服务菜单，增加更改 Sun-Panel 的 Json 配置文件 IP 服务
* 插件目录更新，Sun-Panel 的最新配置文件
* 优化了所有输入选项，均可清除内容功能
* 主菜单逻辑更改，将内容以分页形式展示，每页展示 20 个内容，用户输入 p 和 n 执行上一页和下一页展示
* 主菜单逻辑更改，将输入 vi 编辑，改为 bi 编辑，并且加入了 nano 编辑器，用户可以自行选则 vi 和 nano 编辑器
* 主菜单逻辑更改，增加输入 s 保存脚本永久路径，永久路径作用于用户需要更改路径时候，可输入 l 来进行读取并更改
#### 二、脚本内容
| 更新容器 |
| :---: |
|zerotier|
|tailscale|
|alist-strm|
|vscode|
#### 三、后续优化
* 暂无更新

## 六、作者信息

### 哔哩哔哩主页：***[最后三人行个人主页](https://space.bilibili.com/3546844344879871?spm_id_from=333.1007.0.0)***

### 作者博客：***[三人行博客](https://lastthree.cn)***

### 作者微信：***M13051661743***

### Telegram：***[Last Three](https://t.me/+ytneiJtDPeFjOWM9)***
