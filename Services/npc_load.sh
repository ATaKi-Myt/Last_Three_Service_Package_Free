#!/bin/bash

# 清屏
clear

# ANSI 转义序列定义颜色和样式
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
BOLD='\033[1m'
NC='\033[0m' # 恢复默认样式

# 定义分隔线长度
SEPARATOR_LENGTH=120
SEPARATOR=$(printf "%${SEPARATOR_LENGTH}s" "" | tr " " "=")

# 显示 logo 信息
function show_logo() {
    echo -e "${BLUE}${BOLD}${SEPARATOR}${NC}"
    echo ""
    echo -e "${BOLD}${CYAN}  ██╗      █████╗ ███████╗████████╗    ████████╗██╗  ██╗██████╗ ███████╗███████╗${NC}"
    echo -e "${BOLD}${CYAN}  ██║     ██╔══██╗██╔════╝╚══██╔══╝    ╚══██╔══╝██║  ██║██╔══██╗██╔════╝██╔════╝${NC}"
    echo -e "${BOLD}${CYAN}  ██║     ███████║███████╗   ██║          ██║   ███████║██████╔╝█████╗  █████╗  ${NC}"
    echo -e "${BOLD}${CYAN}  ██║     ██╔══██║╚════██║   ██║          ██║   ██╔══██║██╔══██╗██╔══╝  ██╔══╝  ${NC}"
    echo -e "${BOLD}${CYAN}  ███████╗██║  ██║███████║   ██║          ██║   ██║  ██║██║  ██║███████╗███████╗${NC}"
    echo -e "${BOLD}${CYAN}  ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝          ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝${NC}"
    echo ""
    echo -e "${CYAN}    博客导航地址：lastthree.cn  作者微信：M13051661743  脚本版权：三人行    ${NC}"
    echo -e "${CYAN}    项目地址：https://github.com/ATaKi-Myt/Compose_Shop    ${NC}"
    echo -e "${CYAN}    此版本为群内特供版，脚本完全免费开源，不收取任何付费款项    ${NC}"
    echo ""
    echo -e "${BLUE}${BOLD}${SEPARATOR}${NC}"
}

# 显示 logo
show_logo

# 定义加速链接选项数组
ACCELERATOR_OPTIONS=(
    "不加速（建议墙外用户使用）"
    "使用脚本自带加速链接: https://gitproxy.click/"
    "使用脚本自带加速链接: https://github.moeyy.xyz/"
    "使用脚本自带加速链接: https://github.tbedu.top/"
    "使用脚本自带加速链接: https://github.proxy.class3.fun/"
    "使用脚本自带加速链接: https://ghfile.geekertao.top"
    "使用脚本自带加速链接: https://github.proxy.class3.fun/"
    "使用脚本自带加速链接: https://github-proxy.lixxing.top/"
    "使用脚本自带加速链接: https://ghf.无名氏.top/"
    "使用脚本自带加速链接: https://ghm.078465.xyz/"
    "使用脚本自带加速链接: https://gh-proxy.net/"
    "手动输入加速链接（自行寻找加速链接）"
)

# 显示加速链接菜单
# 此函数用于将所有加速链接选项展示给用户
function show_accelerator_menu() {
    echo -e "${YELLOW}${BOLD}请选择加速链接：${NC}"
    for i in "${!ACCELERATOR_OPTIONS[@]}"; do
        # 打印每个选项的编号和具体内容，编号用黄色加粗显示
        echo -e "${YELLOW}${BOLD}$((i + 1)).${NC} ${ACCELERATOR_OPTIONS[$i]}"
    done
}

# 处理加速链接选择
# 根据用户输入的选项编号，确定使用的加速链接
function handle_accelerator_selection() {
    show_accelerator_menu
    echo -e "${YELLOW}请输入对应的数字 (1 - 12): ${NC}"
    read accel_choice
    case $accel_choice in
        1)
            # 不使用加速链接
            ACCELERATOR=""
            echo -e "${GREEN}已选择不加速。${NC}"
            ;;
        12)
            # 用户手动输入自定义加速链接
            echo -e "${YELLOW}请输入自定义加速链接: ${NC}"
            read ACCELERATOR
            echo -e "${GREEN}已使用自定义加速链接：${ACCELERATOR}${NC}"
            ;;
        [2-11])
            # 从选项中提取对应的加速链接
            ACCELERATOR=$(echo "${ACCELERATOR_OPTIONS[$((accel_choice - 1))]}" | cut -d' ' -f4)
            echo -e "${GREEN}已选择加速链接：${ACCELERATOR}${NC}"
            ;;
        *)
            # 输入无效，终止脚本
            echo -e "${RED}${BOLD}输入无效，请输入 1 - 12 之间的数字。脚本终止。${NC}"
            exit 1
            ;;
    esac
}

# 调用加速链接选择函数
handle_accelerator_selection

# 打印欢迎信息，用黄色加粗显示
echo -e "${YELLOW}${BOLD}欢迎使用系统配置脚本，请选择系统：${NC}"
echo -e "${YELLOW}1. 飞牛系统${NC}"
echo -e "${YELLOW}2. 群晖系统${NC}"
echo -e "${YELLOW}3. 绿联（旧系统）${NC}"
echo -e "${YELLOW}4. 绿联（新系统）${NC}"
echo -e "${YELLOW}5. 极空间（暂不支持）${NC}"

# 获取用户输入的系统选择
echo -e "${YELLOW}请输入对应的数字 (1 - 5): ${NC}"
read system_choice

# 检查是否选择了暂不支持的系统
if [ "$system_choice" = "5" ]; then
    echo -e "${RED}${BOLD}极空间系统暂不支持，脚本终止。${NC}"
    exit 1
fi

# 根据用户选择确定系统名称和路径示例等信息
case $system_choice in
    1)
        system_name="fnOS"
        path_example="飞牛路径示例：/vol*/1000/"
        old_path="/vol1/1000/"
        echo -e "${GREEN}已选择飞牛系统。${NC}"
        ;;
    2)
        system_name="Synology"
        path_example="群晖路径示例：/volume*/My/ My：根路径名称"
        old_path="/volume1/My/"
        echo -e "${GREEN}已选择群晖系统。${NC}"
        ;;
    3)
        system_name="Ugreen"
        path_example="绿联旧系统路径示例：/mnt/dm-*/.ugreen_nas/509155/ 509155：用户文件名"
        old_path="/mnt/dm-1/.ugreen_nas/509155/"
        echo -e "${GREEN}已选择绿联旧系统。${NC}"
        ;;
    4)
        system_name="UgreenNew"
        path_example="绿联新系统路径示例：/volume*/@home/My/ My：根路径名称"
        old_path="/volume1/@home/Testroot/"
        echo -e "${GREEN}已选择绿联新系统。${NC}"
        ;;
    *)
        # 输入无效，终止脚本
        echo -e "${RED}${BOLD}输入无效，请输入 1 - 5 之间的数字。脚本终止。${NC}"
        exit 1
        ;;
esac

# 定义基础下载链接
base_url="https://raw.githubusercontent.com/ATaKi-Myt/Last_Three_Service_Package/refs/heads/main/${system_name}/npc.yml"
# 应用加速链接到基础下载链接
if [ -n "$ACCELERATOR" ]; then
    download_url="${ACCELERATOR}${base_url}"
else
    download_url="$base_url"
fi

# 重复下载检测
if [ -f "npc.yml" ]; then
    # 修改此处，去掉 -p -e 并分开使用提示信息和 read 命令
    echo -e "${YELLOW}npc.yml 文件已存在，是否重新下载？(y/n) ${NC}"
    read redownload
    if [ "$redownload" != "y" ]; then
        echo -e "${YELLOW}跳过下载步骤。${NC}"
    else
        echo -e "${YELLOW}开始重新下载 ${system_name} 系统的 npc.yml 文件...${NC}"
        wget -O npc.yml "$download_url"
    fi
else
    echo -e "${YELLOW}开始下载 ${system_name} 系统的 npc.yml 文件...${NC}"
    wget -O npc.yml "$download_url"
fi

# 检查下载是否成功
if [ $? -ne 0 ]; then
    echo -e "${RED}${BOLD}下载 ${system_name} 系统的 npc.yml 文件失败，脚本终止。${NC}"
    exit 1
else
    echo -e "${GREEN}${BOLD}下载 ${system_name} 系统的 npc.yml 文件成功。${NC}"
fi

# 显示对应系统的路径示例
echo -e "${YELLOW}${BOLD}$path_example${NC}"
echo -e "${YELLOW}所有 * 均改为自己对应的数字${NC}"

# 获取用户输入的新路径
echo -e "${YELLOW}请输入替换后的新路径: ${NC}"
read new_path

# 显示即将进行的替换操作并等待用户确认
echo -e "\n${YELLOW}${BOLD}即将在 npc.yml 文件中执行替换:${NC}"
echo -e "${YELLOW}$old_path → [新路径] $new_path${NC}"
echo -e "${YELLOW}确认替换？(y/n) ${NC}"
read confirm

# 检查用户是否确认替换
if [ "$confirm" != "y" ]; then
    echo -e "${RED}${BOLD}用户取消替换，脚本终止。${NC}"
    exit 1
fi

# 获取用户输入的密钥
echo -e "${YELLOW}请输入密钥: ${NC}"
read user_key

# 保存替换前的文件内容
old_content=$(cat npc.yml)

# 替换 npc.yml 文件中的密钥和路径
echo -e "${YELLOW}开始替换文件中的密钥和路径...${NC}"
sed -i "s/自行填写密钥/$user_key/" npc.yml
sed -i "s#$old_path#$new_path#" npc.yml

# 保存替换后的文件内容
new_content=$(cat npc.yml)

# 检查替换是否成功
if [ "$old_content" = "$new_content" ]; then
    echo -e "${RED}${BOLD}替换操作未生效，请检查替换内容和文件格式，脚本终止。${NC}"
    exit 1
else
    echo -e "${GREEN}${BOLD}替换操作成功。${NC}"
fi

# 检测修改后compose文件内的路径是否存在，不存在则创建
file="npc.yml"
in_volumes=false
while IFS= read -r line; do
    if [[ $line =~ ^([[:space:]]*)[Vv][Oo][Ll][Uu][Mm][Ee][Ss]:[[:space:]]*$ ]]; then
        # 进入 volumes 部分
        in_volumes=true
        volumes_indent=${#BASH_REMATCH[1]}
        continue
    elif $in_volumes && [[ $line =~ ^([[:space:]]*) ]]; then
        current_indent=${#BASH_REMATCH[1]}
        if [ $current_indent -lt $volumes_indent ]; then
            # 退出 volumes 部分
            in_volumes=false
        fi
    fi

    if $in_volumes && [[ $line =~ ^[[:space:]]*-[[:space:]]*([^:]+): ]]; then
        path="${BASH_REMATCH[1]}"
        path=$(echo "$path" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
        if [ -n "$path" ]; then
            if [ -d "$path" ]; then
                echo -e "${GREEN}路径 $path 已存在。${NC}"
            else
                echo -e "${YELLOW}路径 $path 不存在，正在创建...${NC}"
                mkdir -p "$path"
                if [ $? -eq 0 ]; then
                    echo -e "${GREEN}路径 $path 创建成功。${NC}"
                else
                    echo -e "${RED}${BOLD}路径 $path 创建失败。${NC}"
                    exit 1
                fi
            fi
        fi
    fi
done < "$file"

# 使用 docker compose 启动服务
echo -e "${YELLOW}开始使用 Docker Compose 启动服务...${NC}"
output=$(docker compose -f npc.yml up -d 2>&1)
filtered_output=$(echo "$output" | grep -v "Found orphan containers")
echo "$filtered_output"

# 检查服务启动是否成功
if [ $? -eq 0 ]; then
    echo -e "${GREEN}${BOLD}NPC 服务已成功启动。${NC}"
else
    echo -e "${RED}${BOLD}启动 NPC 服务失败，请检查配置和 Docker 环境。${NC}"
fi
