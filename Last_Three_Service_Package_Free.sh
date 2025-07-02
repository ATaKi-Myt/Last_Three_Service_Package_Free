#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
BOLD='\033[1m'
NC='\033[0m' 

SEPARATOR_LENGTH=120
SEPARATOR=$(printf "%${SEPARATOR_LENGTH}s" "" | tr " " "=")

ACCELERATOR_OPTIONS=(
    "不加速（建议墙外用户使用）"
    "使用脚本自带加速链接: https://gitproxy.click/"
    "使用脚本自带加速链接: https://github.moeyy.xyz/"
    "使用脚本自带加速链接: https://github.tbedu.top/"
    "使用脚本自带加速链接: https://github.proxy.class3.fun/"
    "使用脚本自带加速链接: https://ghfile.geekertao.top/"
    "使用脚本自带加速链接: https://github.proxy.class3.fun/"
    "使用脚本自带加速链接: https://github-proxy.lixxing.top/"
    "使用脚本自带加速链接: https://ghf.无名氏.top/"
    "使用脚本自带加速链接: https://ghm.078465.xyz/"
    "使用脚本自带加速链接: https://gh-proxy.net/"
    "手动输入加速链接（自行寻找加速链接）"
)

function show_accelerator_menu() {
    clear
    show_info
    echo -e "${YELLOW}${BOLD}请选择加速链接方式：（本脚本加速方式源于网络，并非本人持有，一切解释权归链接作者）${NC}"
    for i in "${!ACCELERATOR_OPTIONS[@]}"; do
        printf "  ${YELLOW}%-2d. %-15s${NC}\n" $((i + 1)) "${ACCELERATOR_OPTIONS[$i]}"
    done
    echo -e "${BLUE}${BOLD}${SEPARATOR}${NC}"
}

function handle_accelerator_selection() {
    show_accelerator_menu
    read -e -p "请输入选项编号 (0 退出): " choice
    if ! [[ $choice =~ ^[0-9]+$ ]]; then
        echo -e "${RED}${BOLD}输入无效，请输入 0 到 12 之间的数字。${NC}"
        sleep 1
        handle_accelerator_selection
    fi
    if [ "$choice" -eq 0 ]; then
        echo -e "${GREEN}${BOLD}退出脚本，感谢您的使用！${NC}"
        exit 0
    elif [ "$choice" -eq 1 ]; then
        ACCELERATOR=""
    elif [ "$choice" -eq 2 ]; then
        ACCELERATOR="https://gitproxy.click/"
    elif [ "$choice" -eq 3 ]; then
        ACCELERATOR="https://github.moeyy.xyz/"
    elif [ "$choice" -eq 4 ]; then
        ACCELERATOR="https://github.tbedu.top/"
    elif [ "$choice" -eq 5 ]; then
        ACCELERATOR="https://github.proxy.class3.fun/"
    elif [ "$choice" -eq 6 ]; then
        ACCELERATOR="https://ghfile.geekertao.top/"
    elif [ "$choice" -eq 7 ]; then
        ACCELERATOR="https://github.proxy.class3.fun/"
    elif [ "$choice" -eq 8 ]; then
        ACCELERATOR="https://github-proxy.lixxing.top/"
    elif [ "$choice" -eq 9 ]; then
        ACCELERATOR="https://ghf.无名氏.top/"
    elif [ "$choice" -eq 10 ]; then
        ACCELERATOR="https://ghm.078465.xyz/"
    elif [ "$choice" -eq 11 ]; then
        ACCELERATOR="https://gh-proxy.net/"
    elif [ "$choice" -eq 12 ]; then
        read -e -p "请输入加速链接: " ACCELERATOR
    else
        echo -e "${RED}${BOLD}输入无效，请输入 0 到 12 之间的数字。${NC}"
        sleep 1
        handle_accelerator_selection
    fi
}

function show_info() {
    echo -e "${BLUE}${BOLD}${SEPARATOR}${NC}"
    echo ""
    echo -e "${BOLD}${CYAN}  ██╗      █████╗ ███████╗████████╗    ████████╗██╗  ██╗██████╗ ███████╗███████╗    ███████╗██████╗ ███████╗███████╗ ${NC}"
    echo -e "${BOLD}${CYAN}  ██║     ██╔══██╗██╔════╝╚══██╔══╝    ╚══██╔══╝██║  ██║██╔══██╗██╔════╝██╔════╝    ██╔════╝██╔══██╗██╔════╝██╔════╝ ${NC}"
    echo -e "${BOLD}${CYAN}  ██║     ███████║███████╗   ██║          ██║   ███████║██████╔╝█████╗  █████╗      █████╗  ██████╔╝█████╗  █████╗   ${NC}"
    echo -e "${BOLD}${CYAN}  ██║     ██╔══██║╚════██║   ██║          ██║   ██╔══██║██╔══██╗██╔══╝  ██╔══╝      ██╔══╝  ██╔══██╗██╔══╝  ██╔══╝   ${NC}"
    echo -e "${BOLD}${CYAN}  ███████╗██║  ██║███████╗   ██║          ██║   ██║  ██║██║  ██║███████╗███████╗    ██║     ██║  ██║███████╗███████╗ ${NC}"
    echo -e "${BOLD}${CYAN}  ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝          ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝    ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝ ${NC}"
    echo ""
    echo -e "${CYAN}  博客地址：blog.yutumay.cn  作者微信：M13051661743  脚本版权：LastThree  此版本为 Free 版本，如果被骗与作者无关  ${NC}"
    echo -e "${CYAN}  当前您使用的 Last_Three_Service_Package_Free 脚本的版本号为：V 1.2.2 版本，请您认真核对版本号，如有问题请及时反馈  ${NC}"
    echo ""
    echo -e "${BLUE}${BOLD}${SEPARATOR}${NC}"
}

MAX_ATTEMPTS=3
COMPOSE_FILES=(
    "all-in-one"
    "1panel"
    "aipan"
    "alist-strm"
    "babybuddy"
    "bitmagnet"
    "cashbook"
    "chinesesubfinder"
    "cloud189"
    "clouddrive2"
    "cloudsaver"
    "dockge"
    "dpanel"
    "emby"
    "emulatorjs"
    "ezbookkeeping"
    "firefox"
    "frpc"
    "godoos"
    "halo"
    "hanime-server"
    "homeassistant"
    "homebox"
    "icloudpd"
    "immich"
    "ip-tool"
    "iptv-api"
    "istoreos"
    "iyuuplus"
    "jackett"
    "jellyfin-library-poster"
    "jellyfin"
    "kkfileview"
    "komga"
    "libretv"
    "lsky-pro"
    "lucky"
    "lyricapi"
    "mariadb"
    "mdcx"
    "mediago"
    "metatube"
    "moontv"
    "moviepilot"
    "mtphotos"
    "music-tag-web"
    "mysql"
    "nastool"
    "navidrome"
    "newsnow"
    "npc"
    "ollama"
    "open-webui"
    "openlist"
    "php-epg"
    "postgres"
    "qbittorrent"
    "qiandao"
    "qinglong"
    "reader"
    "rustdesk-server"
    "safeline"
    "siyuan-note-unlock"
    "stirling-pdf"
    "sun-panel"
    "synctv"
    "tailscale"
    "taoSync"
    "teamspeak"
    "transmission"
    "upsnap"
    "v2raya"
    "vaultwarden"
    "vertex"
    "verysync"
    "vscode"
    "wallos"
    "watchtower"
    "wechat"
    "wps-office"
    "xiaoaimusic"
    "xunlei"
    "yesplaymusic"
    "zerotier"
)
SERVICE_ALIASES=(
    "三人行精简版集成"
    "服务器面板"
    "网盘资源索引器"
    "Strm流文件生成"
    "网盘挂载器"
    "育儿面板"
    "种子爬取器"
    "记账工具"
    "中文字幕下载器"
    "天翼网盘strm"
    "网盘挂载器"
    "网盘资源转存器"
    "Docker可视化工具"
    "Docker监控工具"
    "媒体服务器开心版"
    "复古掌机模拟器"
    "记账工具"
    "火狐浏览器"
    "穿透工具"
    "办公轻量化系统"
    "博客网站"
    "里番在线观看"
    "智能家具管理面板"
    "家庭资产管理面板"
    "苹果云照片转存器"
    "AI相册"
    "ip工具箱"
    "iptv源"
    "软路由"
    "转辅种工具"
    "资源索引器"
    "媒体服务器自动生成海报"
    "媒体服务器"
    "在线文件查看工具"
    "漫画服务器"
    "电视剧在线观看"
    "私人图床"
    "网络转发"
    "音流刮削音乐"
    "数据库"
    "小姐姐刮削服务器"
    "流媒体下载器"
    "小姐姐刮削服务器"
    "在线影院"
    "影视管理面板"
    "AI相册"
    "音乐刮削器"
    "数据库"
    "影视管理面板"
    "音乐服务器"
    "最新资讯获取"
    "穿透工具"
    "智能体"
    "AI可视化面板"
    "IPTV工具"
    "数据库"
    "下载器"
    "每日签到"
    "脚本管理面板"
    "阅读服务器"
    "远程桌面"
    "雷池WAF"
    "思源笔记免登录版"
    "PDF工具箱"
    "导航面板"
    "多人在线共享影院"
    "异地组网工具"
    "网盘同步工具"
    "游戏语音服务器"
    "下载器"
    "局域网络唤醒设备"
    "代理"
    "密码管理服务器"
    "PT刷流"
    "微力同步"
    "代码编辑器"
    "个人订阅管理面板"
    "自动更新镜像"
    "网页版微信"
    "网页版WPS"
    "小爱音响"
    "下载器"
    "音乐播放器"
    "异地组网工具"
)

SYSTEMS=("fnOS")
FRIENDLY_SYSTEMS=("飞牛系统")

function check_root_user() {
    if [ "$EUID" -ne 0 ]; then
        echo -e "${YELLOW}当前不是 root 用户，将尝试获取 root 权限。请输入 root 密码。${NC}"
        sudo -i << 'EOF'
            bash "$0"
EOF
        exit 0
    fi
}

function select_system() {
    selected_system="${SYSTEMS[0]}"
    friendly_selected="${FRIENDLY_SYSTEMS[0]}"
}

PAGE_SIZE=20
current_page=1

function show_menu() {
    clear
    show_info
    local start_index=$(( (current_page - 1) * PAGE_SIZE ))
    local end_index=$(( start_index + PAGE_SIZE - 1 ))
    if [ $end_index -ge ${#COMPOSE_FILES[@]} ]; then
        end_index=$(( ${#COMPOSE_FILES[@]} - 1 ))
    fi
    for ((i = start_index; i <= end_index; i++)); do
        printf "%2d. %-20s - %s\n" $((i + 1)) "${COMPOSE_FILES[i]}" "${SERVICE_ALIASES[i]}"
    done
    echo -e "${BLUE}${BOLD}${SEPARATOR}${NC}"
    local extra_prompt=""
    if [ $(( (current_page - 1) * PAGE_SIZE )) -gt 0 ]; then
        extra_prompt+="输入 p 上一页"
    fi
    if [ $(( (current_page) * PAGE_SIZE )) -lt ${#COMPOSE_FILES[@]} ]; then
        if [ -n "$extra_prompt" ]; then
            extra_prompt+="，"
        fi
        extra_prompt+="输入 n 下一页"
    fi
    local main_prompt="主要操作：请输入要下载的服务序号（可多个，用空格分隔）"
    if [ -n "$extra_prompt" ]; then
        main_prompt+="，$extra_prompt"
    fi
    echo -e "${YELLOW}$main_prompt${NC}"
    echo -e "${CYAN}其他操作：0 - 退出 F - 搜索 D - 删除容器 U - 查UID/GID NET - 建网络${NC}"
    echo -e "${BLUE}${BOLD}${SEPARATOR}${NC}"
}

SAVED_PATH_FILE=".saved_path"

function handle_input() {
    local input
    read -e -p "请输入序号或 f 或 d 或 u 或 net 或 p 或 n: " input
    case $input in
        0)
            echo -e "${YELLOW}退出脚本。${NC}"
            exit 0
            ;;
        f)
            handle_search_input
            ;;
        d)
            handle_delete_container_input
            ;;
        u)
            handle_query_uid_gid_input
            ;;
        net)
            create_docker_network
            ;;
        p)
            if [ $current_page -gt 1 ]; then
                current_page=$((current_page - 1))
            fi
            ;;
        n)
            if [ $(( (current_page) * PAGE_SIZE )) -lt ${#COMPOSE_FILES[@]} ]; then
                current_page=$((current_page + 1))
            fi
            ;;
        *)
            handle_number_choices_input "$input"
            ;;
    esac
}

function handle_search_input() {
    read -e -p "请输入要搜索的镜像名称: " search_name
    local found=false
    for idx in "${!COMPOSE_FILES[@]}"; do
        file_name="${COMPOSE_FILES[$idx]}"
        if [[ $file_name == *"$search_name"* ]]; then
            read -e -p "找到匹配的容器: $file_name，是否为该容器？(y/n): " confirm
            if [[ $confirm =~ ^[Yy]$ ]]; then
                choice=$((idx + 1))
                choices=("$choice")
                found=true
                break
            fi
        fi
    done
    if $found; then
        continue_loop=false
    else
        echo -e "${RED}未找到匹配的镜像，返回选择页面。${NC}"
        sleep 2
    fi
}

function handle_delete_container_input() {
    echo -e "${YELLOW}以下是当前正在运行的 Docker 容器列表：${NC}"
    local running_containers=$(docker ps --format "{{.Names}}")
    if [ -z "$running_containers" ]; then
        echo -e "${YELLOW}没有找到正在运行的 Docker 容器。${NC}"
    else
        echo "$running_containers"
    fi
    read -e -p "请输入要删除的容器名称（可多个，用空格分隔）: " containers_to_delete
    local IFS=' '
    local -a container_array=($containers_to_delete)
    for container in "${container_array[@]}"; do
        docker stop "$container" 2>/dev/null
        docker rm "$container" 2>/dev/null
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}容器 $container 删除成功。${NC}"
        else
            echo -e "${RED}容器 $container 删除失败。${NC}"
        fi
    done
    read -e -p "按任意键继续选择其他操作..." -n 1 -s
    printf "\033[2K\r"
}

function handle_query_uid_gid_input() {
    read -e -p "请输入要查询的用户名: " username
    local user_info=$(id "$username" 2>/dev/null)
    if [ $? -eq 0 ]; then
        local uid=$(echo "$user_info" | sed 's/.*uid=\([0-9]*\).*/\1/')
        local gid=$(echo "$user_info" | sed 's/.*gid=\([0-9]*\).*/\1/')
        echo -e "${GREEN}用户 $username 的 UID 是: $uid，GID 是: $gid${NC}"
    else
        echo -e "${RED}用户 $username 不存在。${NC}"
    fi
    read -e -p "按任意键继续选择其他操作..." -n 1 -s
    printf "\033[2K\r"
}

function create_docker_network() {
    echo -e "${YELLOW}当前 Docker 网络列表：${NC}"
    docker network ls
    while true; do
        read -e -p "请输入要创建的网络名称 (输入 0 返回主菜单): " network_name
        if [ "$network_name" = "0" ]; then
            echo -e "${YELLOW}返回主菜单。${NC}"
            break
        fi
        docker network create --driver bridge "$network_name"
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}网络 $network_name 创建成功。${NC}"
        else
            echo -e "${RED}网络 $network_name 创建失败。${NC}"
        fi
        read -e -p "按任意键继续选择其他操作..." -n 1 -s
        printf "\033[2K\r"
        break
    done
}

function handle_service_alias_input() {
    clear
    show_info
    echo -e "${YELLOW}服务中文名和英文名对照表：${NC}"
    for i in "${!COMPOSE_FILES[@]}"; do
        printf "%2d. %-20s - %s\n" $((i + 1)) "${COMPOSE_FILES[i]}" "${SERVICE_ALIASES[i]}"
    done
    read -e -p "请输入要下载的服务序号（可多个，用空格分隔，输入 0 返回主菜单）: " input_choices
    if [[ "$input_choices" == "0" ]]; then
        continue_loop=true
        return
    fi
    local IFS=' '
    read -r -a temp_choices <<< "$input_choices"
    choices=()
    for choice in "${temp_choices[@]}"; do
        if [[ $choice =~ ^[0-9]+$ ]]; then
            if [[ $choice -ge 1 && $choice -le ${#COMPOSE_FILES[@]} ]]; then
                choices+=("$choice")
            else
                echo -e "${RED}无效的选择: $choice，请输入 1 - ${#COMPOSE_FILES[@]} 之间的序号。${NC}"
                continue_loop=true
                return
            fi
        else
            echo -e "${RED}无效的输入格式，每个选项应该是数字。${NC}"
            continue_loop=true
            return
        fi
    done
    continue_loop=false
}

function handle_number_choices_input() {
    local input="$1"
    local IFS=' '
    read -r -a temp_choices <<< "$input"
    local start_index=$(( (current_page - 1) * PAGE_SIZE + 1 ))
    local end_index=$(( start_index + PAGE_SIZE - 1 ))
    if [ $end_index -gt ${#COMPOSE_FILES[@]} ]; then
        end_index=${#COMPOSE_FILES[@]}
    fi
    choices=()
    for choice in "${temp_choices[@]}"; do
        if [[ $choice =~ ^[0-9]+$ ]]; then
            if [[ $choice -ge $start_index && $choice -le $end_index ]]; then
                choices+=("$choice")
            else
                echo -e "${RED}无效的选择: $choice，请输入当前页面的序号（$start_index - $end_index）。${NC}"
                sleep 2
                continue_loop=true
                return
            fi
        else
            echo -e "${RED}无效的输入格式，每个选项应该是数字。${NC}"
            sleep 2
            continue_loop=true
            return
        fi
    done
    continue_loop=false
}

function download_compose_file() {
    local idx=$1
    local file="${COMPOSE_FILES[$idx]}.yml"
    local url="${ACCELERATOR}https://raw.githubusercontent.com/ATaKi-Myt/Last_Three_Service_Package_Free/refs/heads/main/${selected_system}/${file}"
    if [ -f "$file" ]; then
        read -e -p "文件 $file 已存在，是否重新下载？(y/n): " re_download
        if [[ $re_download =~ ^[Yy]$ ]]; then
            wget -q "$url" -O "$file"
            if [ $? -eq 0 ]; then
                echo -e "${GREEN}文件 $file 重新下载成功。${NC}"
                read -e -p "下载完成，是否继续运行？(y/n): " continue_run
                if [[ $continue_run =~ ^[Yy]$ ]]; then
                    return 0
                else
                    return 1
                fi
            else
                echo -e "${RED}文件 $file 重新下载失败。${NC}"
                read -e -p "按任意键继续选择其他容器..." -n 1 -s
                printf "\033[2K\r"
                return 1
            fi
        else
            echo -e "${YELLOW}跳过下载，使用已存在的文件 $file。${NC}"
            read -e -p "使用已存在文件，是否继续运行？(y/n): " continue_run
            if [[ $continue_run =~ ^[Yy]$ ]]; then
                return 0
            else
                return 1
            fi
        fi
    else
        wget -q "$url" -O "$file"
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}文件 $file 下载成功。${NC}"
            read -e -p "下载完成，是否继续运行？(y/n): " continue_run
            if [[ $continue_run =~ ^[Yy]$ ]]; then
                return 0
            else
                return 1
            fi
        else
            echo -e "${RED}文件 $file 下载失败。${NC}"
            read -e -p "按任意键继续选择其他容器..." -n 1 -s
            printf "\033[2K\r"
            return 1
        fi
    fi
}

function path_replace() {
    local file=$1
    # 仅保留飞牛系统路径提示和替换逻辑
    echo -e "${YELLOW}飞牛路径示例：/vol1/*/ * vol1 存储空间1 * 用户ID${NC}"
    echo -e "${YELLOW}所有 * 均改为自己对应的数字${NC}"
    read -e -p "是否要进行路径替换操作？(y/n): " do_replace
    if [[ $do_replace =~ ^[Yy]$ ]]; then
        read -e -p "请输入替换后的新路径（输入 l 使用保存的路径）: " new_path
        if [[ $new_path == "l" ]]; then
            if [ -f "$SAVED_PATH_FILE" ]; then
                new_path=$(cat "$SAVED_PATH_FILE")
                echo -e "${YELLOW}已加载保存的路径: $new_path${NC}"
            else
                echo -e "${RED}未找到保存的路径，请先保存路径。${NC}"
                return
            fi
        fi
        echo -e "\n${YELLOW}即将在所有 compose.yml 文件中执行替换:${NC}"
        local sed_commands=("s|/vol1/1000/|$new_path|g")
        echo -e "${YELLOW}/vol1/1000/ → [新路径] $new_path${NC}"
        read -e -p "确认替换？(y/n) " confirm
        if [[ $confirm =~ ^[Yy]$ ]]; then
            for cmd in "${sed_commands[@]}"; do
                sed -i "$cmd" "$file"
            done
            echo -e "${GREEN}路径替换完成。${NC}"
        else
            echo -e "${YELLOW}取消路径替换。${NC}"
        fi
    fi
}

function modify_ports() {
    local file=$1
    read -e -p "是否要修改端口？(y/n): " do_port_change
    if [[ $do_port_change =~ ^[Yy]$ ]]; then
        local port_count=0
        local in_ports=false
        local existing_ports=()
        while IFS= read -r line; do
            if [[ $line =~ ^([[:space:]]*)[Pp][Oo][Rr][Tt][Ss]:[[:space:]]*$ ]]; then
                in_ports=true
                continue
            elif $in_ports && [[ $line =~ ^([[:space:]]*) ]]; then
                local current_indent=${#BASH_REMATCH[1]}
                if [ $current_indent -lt ${#BASH_REMATCH[1]} ]; then
                    in_ports=false
                fi
            fi
            if $in_ports && [[ $line =~ ^[[:space:]]*-[[:space:]]*([0-9]+):([0-9]+) ]]; then
                ((port_count++))
                existing_ports+=("${BASH_REMATCH[1]}:${BASH_REMATCH[2]}")
            fi
        done < "$file"
        echo -e "${YELLOW}查询到文件中有 $port_count 个端口需要修改。当前端口如下：${NC}"
        for port in "${existing_ports[@]}"; do
            echo -e "${YELLOW}- $port${NC}"
        done
        read -e -p "请输入新的主机端口（共 $port_count 个，用空格分隔）: " new_host_ports
        local IFS=' '
        local -a new_ports_array=($new_host_ports)
        if [ ${#new_ports_array[@]} -ne $port_count ]; then
            echo -e "${RED}输入的端口数量与需要修改的端口数量不匹配，请重新操作。${NC}"
            return 1
        fi
        local port_index=0
        local in_ports=false
        local ports_indent=0
        local temp_file=$(mktemp)
        while IFS= read -r line; do
            if [[ $line =~ ^([[:space:]]*)[Pp][Oo][Rr][Tt][Ss]:[[:space:]]*$ ]]; then
                in_ports=true
                ports_indent=${#BASH_REMATCH[1]}
                echo "$line" >> "$temp_file"
                continue
            elif $in_ports && [[ $line =~ ^([[:space:]]*) ]]; then
                local current_indent=${#BASH_REMATCH[1]}
                if [ $current_indent -lt $ports_indent ]; then
                    in_ports=false
                fi
            fi

            if $in_ports && [[ $line =~ ^[[:space:]]*-[[:space:]]*([0-9]+):([0-9]+) ]]; then
                if [ $port_index -lt ${#new_ports_array[@]} ]; then
                    local container_port="${BASH_REMATCH[2]}"
                    local new_host_port="${new_ports_array[$port_index]}"
                    local new_port_line="${line//${BASH_REMATCH[1]}/$new_host_port}"
                    echo -e "${YELLOW}将端口 ${BASH_REMATCH[1]}:${container_port} 更改为 ${new_host_port}:${container_port}${NC}"
                    echo "$new_port_line" >> "$temp_file"
                    ((port_index++))
                else
                    echo "$line" >> "$temp_file"
                fi
            else
                echo "$line" >> "$temp_file"
            fi
        done < "$file"

        mv "$temp_file" "$file"

        echo -e "${GREEN}端口修改完成。${NC}"
    fi
}

function check_and_create_volumes() {
    local file=$1
    local in_volumes=false
    local volumes_indent=0
    while IFS= read -r line; do
        if [[ $line =~ ^([[:space:]]*)[Vv][Oo][Ll][Uu][Mm][Ee][Ss]:[[:space:]]*$ ]]; then
            in_volumes=true
            volumes_indent=${#BASH_REMATCH[1]}
            continue
        elif $in_volumes && [[ $line =~ ^([[:space:]]*) ]]; then
            local current_indent=${#BASH_REMATCH[1]}
            if (( current_indent < volumes_indent )); then
                in_volumes=false
            fi
        fi

        if $in_volumes && [[ $line =~ ^[[:space:]]*-[[:space:]]*([^:]+): ]]; then
            local path="${BASH_REMATCH[1]}"
            path=$(echo "$path" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
            if [[ ! $path =~ ^(http|https):// ]] && [[ ! $path =~ ^[A-Z_]+= ]]; then
                if [ -n "$path" ]; then
                    if [ -d "$path" ]; then
                        echo -e "${GREEN}路径 $path 已存在。${NC}"
                    else
                        echo -e "${YELLOW}路径 $path 不存在，正在创建...${NC}"
                        mkdir -p "$path"
                        if [ $? -eq 0 ]; then
                            echo -e "${GREEN}路径 $path 创建成功。${NC}"
                        else
                            echo -e "${RED}路径 $path 创建失败。${NC}"
                            break
                        fi
                    fi
                fi
            fi
        fi
    done < "$file"
}

function pull_image() {
    local file=$1
    echo -e "${YELLOW}开始拉取镜像，请稍候...${NC}"
    docker compose -f "$file" pull | while IFS= read -r line; do
        if [[ $line =~ ([0-9]+)% ]]; then
            local percent="${BASH_REMATCH[1]}"
            local bar_length=50
            local filled_length=$((percent * bar_length / 100))
            local empty_length=$((bar_length - filled_length))
            local filled_bar=$(printf '#%.0s' $(seq 1 $filled_length))
            local empty_bar=$(printf ' %.0s' $(seq 1 $empty_length))
            printf "\r[%-${bar_length}s] %3d%%" "$filled_bar$empty_bar" "$percent"
        fi
    done
    printf "\n"
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}镜像拉取成功。${NC}"
    else
        echo -e "${RED}镜像拉取失败。${NC}"
        read -e -p "按任意键继续选择其他容器..." -n 1 -s
        printf "\033[2K\r"
        return 1
    fi
    return 0
}

function start_container() {
    local file=$1
    docker compose -f "$file" up -d 2>&1 | grep -v "Found orphan containers"
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}Compose 文件 $file 运行成功。${NC}"
    else
        echo -e "${RED}运行 Compose 文件 $file 失败。${NC}"
    fi
}

function main() {
    check_root_user
    handle_accelerator_selection
    select_system
    local continue_loop=true
    while true; do
        while $continue_loop; do
            show_menu
            handle_input
        done

        for choice in "${choices[@]}"; do
            local idx=$((choice - 1))
            if ! download_compose_file "$idx"; then
                continue
            fi
            local file="${COMPOSE_FILES[$idx]}.yml"
            path_replace "$file"
            modify_ports "$file"
            check_and_create_volumes "$file"
            if ! pull_image "$file"; then
                continue
            fi
            start_container "$file"
        done
        read -e -p "按任意键继续选择其他容器..." -n 1 -s
        printf "\033[2K\r"
        continue_loop=true
    done
}

main
