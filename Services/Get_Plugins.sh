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
    echo -e "${CYAN}    项目地址：https://github.com/ATaKi-Myt/Last_Three_Service_Package    ${NC}"
    echo -e "${CYAN}    此版本为群内特供版，脚本完全免费开源，不收取任何付费款项    ${NC}"
    echo ""
    echo -e "${BLUE}${BOLD}${SEPARATOR}${NC}"
}

# 显示 logo
show_logo

# 定义仓库相关信息
REPO_OWNER="ATaKi-Myt"
REPO_NAME="Last_Three_Service_Package"
FOLDER_PATH="Plugins"
API_URL="https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/contents/${FOLDER_PATH}"

# 路径提示
echo -e "${YELLOW}飞牛路径示例：/vol*/1000/${NC}"
echo -e "${YELLOW}群晖路径示例：/volume*/My/ My：根路径名称${NC}"
echo -e "${YELLOW}绿联旧系统路径示例：/mnt/dm-*/.ugreen_nas/509155/ 509155：用户文件名${NC}"
echo -e "${YELLOW}绿联新系统路径示例：/volume*/@home/My/ My：根路径名称${NC}"
echo -e "${YELLOW}所有 * 均改为自己对应的数字，默认下载到 Downloads 文件夹${NC}"

# 提示用户输入下载目录
read -p "请输入下载目录的路径: " DOWNLOAD_DIR

# 修正拼写错误，将 Downlodas 改为 Downloads
DOWNLOAD_DIR="${DOWNLOAD_DIR%/}/Downloads" 

# 询问用户是否确认使用该路径
read -p "你确认要使用路径 $DOWNLOAD_DIR 进行下载吗？(y/n): " confirm
if [ "$confirm" != "y" ]; then
    echo -e "${RED}${BOLD}用户取消操作，脚本退出。${NC}"
    exit 0
fi

# 创建下载目录（如果不存在）
if ! mkdir -p "$DOWNLOAD_DIR"; then
    echo -e "${RED}${BOLD}无法创建下载目录: $DOWNLOAD_DIR${NC}"
    exit 1
fi

JSON_RESPONSE=$(wget -qO- "$API_URL")
if [ $? -ne 0 ]; then
    echo -e "${RED}${BOLD}无法获取文件列表，请检查网络或 API 地址。${NC}"
    exit 1
fi

# 提取文件下载链接
FILES=$(echo "$JSON_RESPONSE" | grep '"download_url":' | sed 's/.*"download_url": "\(.*\)".*/\1/')

# 提供加速链接选项
echo "请选择加速链接:"
echo "1. 不加速（建议墙外用户使用）"
echo "2. 使用脚本自带加速链接: https://gitproxy.click/"
echo "3. 使用脚本自带加速链接: https://github.moeyy.xyz/"
echo "4. 使用脚本自带加速链接: https://github.tbedu.top/"
echo "5. 使用脚本自带加速链接: https://github.proxy.class3.fun/"
echo "6. 使用脚本自带加速链接: https://ghfile.geekertao.top"
echo "7. 使用脚本自带加速链接: https://github.proxy.class3.fun/"
echo "8. 使用脚本自带加速链接: https://github-proxy.lixxing.top/"
echo "9. 使用脚本自带加速链接: https://ghf.无名氏.top/"
echo "10. 使用脚本自带加速链接: https://ghm.078465.xyz/"
echo "11. 使用脚本自带加速链接: https://gh-proxy.net/"
echo "12. 手动输入加速链接（自行寻找加速链接）"
read -p "请输入选项编号: " choice

case $choice in
    1)
        ACCELERATOR=""
        ;;
    2)
        ACCELERATOR="https://gitproxy.click/"
        ;;
    3)
        ACCELERATOR="https://github.moeyy.xyz/"
        ;;
    4)
        ACCELERATOR="https://github.tbedu.top/"
        ;;
    5)
        ACCELERATOR="https://github.proxy.class3.fun/"
        ;;
    6)
        ACCELERATOR="https://ghfile.geekertao.top"
        ;;
    7)
        ACCELERATOR="https://github.proxy.class3.fun/"
        ;;
    8)
        ACCELERATOR="https://github-proxy.lixxing.top/"
        ;;
    9)
        ACCELERATOR="https://ghf.无名氏.top/"
        ;;
    10)
        ACCELERATOR="https://ghm.078465.xyz/"
        ;;
    11)
        ACCELERATOR="https://gh-proxy.net/"
        ;;
    12)
        read -p "请输入加速链接: " ACCELERATOR
        ;;
    *)
        echo -e "${RED}${BOLD}无效的选项，脚本退出。${NC}"
        exit 1
        ;;
esac

# 临时修改 IFS 为换行符，避免空格分割 URL
OLD_IFS=$IFS
IFS=$'\n'

# 遍历文件列表并下载到指定目录
for file in $FILES; do
    if [ -z "$file" ]; then
        continue
    fi
    # 处理 URL 中的空格
    file=$(echo "$file" | sed 's/ /%20/g')
    # 使用 basename 函数获取文件名
    filename=$(basename "$file")
    # 应用加速链接
    if [ -n "$ACCELERATOR" ]; then
        file="${ACCELERATOR}${file#https://github.com/}"
    fi
    echo -e "${BLUE}${BOLD}正在下载: $filename${NC}"
    if ! curl -L "$file" -o "$DOWNLOAD_DIR/$filename"; then
        echo -e "${RED}${BOLD}下载失败: $filename${NC}"
    else
        echo -e "${GREEN}${BOLD}成功下载: $filename 到 $DOWNLOAD_DIR${NC}"
    fi
done

# 恢复原始的 IFS
IFS=$OLD_IFS

echo -e "${GREEN}${BOLD}所有文件下载完成。${NC}"
