# 三人行服务包免费版 (Last_Three_Service_Package_Free)

## 一、前言

### 1、项目概述
**1.1、项目介绍**  
本项目整合了原"懒人包脚本"与"Compose商店"的核心功能，通过社区反馈优化后重新开源。旨在为系统重装用户及技术小白提供便捷的一键式服务部署解决方案。欢迎提交适配问题，项目团队将持续优化迭代。

**1.2、版本分支说明**  
因原博客遭恶意攻击，维护成本剧增，自v1.1.1起项目分为两个分支：
- **Free版**：持续开源但功能精简，保留基础服务组件
- **Pro版**：闭源分发，提供完整功能及专业支持

### 2、系统兼容性矩阵

| 序号 | 系统名称         | 系统英文名称   | 是否适配 | 适配版本 |
| :---: | :---: | :---: | :---: | :---: |
| 1 | 飞牛 | fnOS | ✅ | Free |
| 2 | 黑群晖 | Synology | ✅ | Pro |
| 3 | 绿联旧（已废弃） | Ugreen | ✅ | Pro |
| 4 | 绿联新 | UgreenNew | ✅ | Pro |
| 5 | 极空间 | ZSpace | ✅ | Pro |
| 6 | 威联通 | QNAP | ✅ | Pro |
| 7 | TrueNas | TrueNas | ✅ | Pro |
| 8 | ZimaOS | ZimaOS | ✅ | Pro |
| 9 | CasaOS | CasaOS | ❌ | Pro |

> 💡 适配状态说明：✅=完全支持 ❌=开发中

## 二、服务包 Docker 集成项目列表

| 序号 | Docker 名称 | 作用 |端口| 用户名 | 密码 |
| :---: | :---: | :---: | :---: | :---: | :---: |
| 1 |all in one|三人行精简版|/|/|/|
| 2 | 1panel | 服务器面板 |30010|admin|password|
| 3 | aipan | 网盘资源索引器 |24000|/|/|
| 4 | alist-strm | Strm流文件生成器 |30050|自行创建|自行创建|
| 5 | alist | 网盘挂载 |24005|admin|运行日志获取|
| 6 | babybuddy | 育儿管理面板 |25020|admin|password|
| 7 | bitmagnet | 种子爬取器 |30085|自行创建|自行创建|
| 8 | cashbook | 记账工具 |25000|自行创建|自行创建|
| 9 | chinesesubfinder | 字幕下载工具 |20025|自行创建|自行创建|
| 10 | clouddrive2 | 网盘挂载 |24015|自行创建|自行创建|
| 11 | cloudsaver | 网盘资源转存工具 |24010|自行创建|自行创建|
| 12 | dockge | Docker可视化工具 |30040|自行创建|自行创建|
| 13 | dpanel | Docker监控工具 |30060|自行创建|自行创建|
| 14 | emby | 媒体服务器 |20015|自行创建|自行创建|
| 15 | emulatorjs | 掌机模拟器 |23000/23001|/|/|
| 16 | ezbookkeeping | 记账工具 |25005|自行创建|自行创建|
| 17 | firefox | 火狐浏览器 |27000|/|/|
| 18 | frpc | frpc 穿透客户端 |/|/|/|
| 19 | godoos | 轻量化办公系统 |26045|/|/|
| 20 | halo | 博客网站 |30075|自行创建|自行创建|
| 21 | homeassistant | 开源智能家居管理面板 |25030|自行创建|自行创建|
| 22 | homebox | 家庭资产管理面板 |25015|自行创建|自行创建|
| 23 | icloudpd | icloud 图片转存工具 |24020|/|/|
| 24 | immich | AI 相册 |25035|自行创建|自行创建|
| 25 | ip-tool | ip 检测工具箱 |27005|/|/|
| 26 | iptv-api | iptv |20020|/|/|
| 27 | istoreos | 软路由 |/|/|/|
| 28 | iyuuplus | 转种辅种 |30000|自行创建|自行创建|
| 29 | jackett | 索引器 |30030|/|/|
| 30 | jellyfin-library-poster | 媒体服务器自动生成海报 |/|/|/|
| 31 | jellyfin | 媒体服务器 |20010|自行创建|自行创建|
| 32 | kkfileview | 多格式文件在线预览 |26020|/|/|
| 33 | komga | 动漫库 |22005|自行创建|自行创建|
| 34 | libretv | 电视剧在线观看 |20035|/|/|
| 35 | lsky-pro | 私人图床 |26040|自行创建|自行创建|
| 36 | lucky | 网络转发 |16601|666|666|
| 37 | lyricapi | 音流刮削器 |21010|/|/|
| 38 | mariadb | 数据库 |29010|/|/|
| 39 | mdcx | 小姐姐刮削服务器 |20045/20046|/|/|
| 40 | mediago | B站资源下载器 |28015|/|/|
| 41 | metatube | 小姐姐刮削服务器 |20030|/|/|
| 42 | moviepilot | 家庭影院 |20005|admin|运行日志获取|
| 43 | mtphotos | AI 相册 |25040|自行创建|自行创建|
| 44 | music-tag-web | 音乐刮削器 |21005|admin|admin|
| 45 | mysql | 数据库 |29000|/|/|
| 46 | nastool | 家庭影院 |20000|admin|password|
| 47 | navidrome | 音乐服务器 |21000|自行创建|自行创建|
| 48 | newsnow | 各大平台十条热搜 |30025|/|/|
| 49 | npc | npc 穿透客户端 |/|/|/|
| 50 | ollama | 智能体工具 |26025|/|/|
| 51 | open-webui | 可视化智能体对话面板 |26030|自行创建|自行创建|
| 52 | postgres | 数据库 |29005|/|/|
| 53 | qbittorrent | 下载器 |28000|admin|运行日志获取|
| 54 | qiandao | 每日签到 |30035|自行创建|自行创建|
| 55 | qinglong | 青龙脚本面板 |30015|自行创建|自行创建|
| 56 | reader | 电子书库 |22000|/|/|
| 57 | rustdesk-server | 远程桌面 |30066/30067|/|/|
| 58 | safeline | 雷池WAF |27015|/|/|
| 59 | siyuan-note-unlock | 免登录版思源笔记 |26035|/|100|
| 60 | stirling-pdf | pdf 工具箱 |26015|/|/|
| 61 | sun-panel | 集成 Docker 状态及美化面板 |30005|admin@sun.cc|12345678|
| 62 | synctv | 多人在线共享影院 |20040|root|root|
| 63 | tailscale | 异地组网工具 |/|/|/|
| 64 | taoSync | 网盘同步工具 |30045|admin|运行日志获取|
| 65 | teamspeak | 低占用无广告游戏语音服务器 |23005|/|运行日志获取|
| 66 | transmission | 下载器 |28005|root|root|
| 67 | upsnap | 局域网络唤醒设备 |30070|/|/|
| 68 | v2raya | 代理 |27010|/|/|
| 69 | vaultwarden | 密码管理服务器 |30080|自行创建|自行创建|
| 70 | vertex | 刷流 |30020|admin|config文件夹内的password文件|
| 71 | verysync | 微力同步 |26010|/|/|
| 72 | vscode | 代码编辑器 |30055|/|password|
| 73 | wallos | 订阅服务统计 |25010|自行创建|自行创建|
| 74 | watchtower | 自动检测更新镜像 |/|/|/|
| 75 | wechat | 网页版微信 |26005|/|/|
| 76 | wps-office | 在线文档编辑器 |26000|admin|admin|
| 77 | xiaoaimusic | 小爱同学面板 |25025|/|/|
| 78 | xunlei | 下载器 |28010|admin|admin|
| 79 | yesplaymusic | 音乐播放器 |21015|/|/|
| 80 | zerotier | 异地组网工具 |/|/|/|

## 三、服务包目录结构

| 序号 | 文件夹名称   | 主要功能描述                                                                 |
| :---: | :---: | :---: | 
| 1    | Compose     | 存放Docker Compose配置文件，包含服务编排定义和环境变量设置                     |
| 2    | Docker      | 存储Docker容器相关数据，包括自定义镜像、容器配置和持久化存储卷                 |
| 3    | Downloads   | 迅雷远程下载默认存储路径，支持多协议文件下载和分类管理                         |
| 4    | Music       | 音乐媒体库，支持自动元数据识别和媒体服务器集成                                |
| 5    | Photos      | 照片管理目录，优化图片存储结构和缩略图生成                                     |
| 6    | Synchronous | 跨设备同步文件夹，支持双向文件同步和版本控制                                   |
| 7    | Video       | 影视媒体库，包含原文件存储和硬链接优化结构，支持Emby/Jellyfin媒体服务器       |

## 四、使用指南

详细使用教程请参考官方 Wiki：[wiki.yutumay.cn](https://wiki.yutumay.cn)

## 五、更新日志

更新日志详情请参考官方 Wiki：[wiki.yutumay.cn](https://wiki.yutumay.cn)

## 六、联系作者

**哔哩哔哩主页：** [最后三人行个人主页](https://space.bilibili.com/3546844344879871?spm_id_from=333.1007.0.0)

**博客地址：**  [三人行博客](https://blog.yutumay.cn) 

**联系方式：**  
- 微信：M13051661743  
- Telegram：[Last Three](https://t.me/+ytneiJtDPeFjOWM9)
