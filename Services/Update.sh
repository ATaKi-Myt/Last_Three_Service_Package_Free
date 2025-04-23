#!/bin/bash

# 定义颜色代码
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # 无颜色

# 定义加速选项数组
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

# 显示加速选项菜单
echo "请选择加速选项:"
for i in "${!ACCELERATOR_OPTIONS[@]}"; do
    echo "$((i + 1)). ${ACCELERATOR_OPTIONS[$i]}"
done

# 读取用户选择
read -p "请输入选项编号: " choice

# 根据用户选择设置加速链接
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
        ACCELERATOR="https://ghfile.geekertao.top/"
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
        read -p "请输入自定义加速链接: " ACCELERATOR
        ;;
    *)
        echo -e "${RED}无效的选项，请输入 1 - 12 之间的数字。${NC}"
        exit 1
        ;;
esac

# 定义下载链接
url="${ACCELERATOR}https://raw.githubusercontent.com/ATaKi-Myt/Last_Three_Service_Package/refs/heads/main/Last_Three_Service_Package.sh"

# 检测脚本是否存在并删除
if [ -f "Last_Three_Service_Package.sh" ]; then
    rm "Last_Three_Service_Package.sh"
    echo -e "${GREEN}已删除原有的 Last_Three_Service_Package.sh 脚本。${NC}"
else
    echo -e "${GREEN}当前目录不存在 Last_Three_Service_Package.sh 脚本，将直接下载。${NC}"
fi

# 下载脚本
wget "$url"
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Last_Three_Service_Package.sh 脚本下载成功。${NC}"
    echo -e "${GREEN}更新完成，请重新运行 bash Last_Three_Service_Package.sh 指令。${NC}"
    sleep 5
    # 获取父进程 ID
    PARENT_PID=$PPID
    # 向父进程发送 SIGTERM 信号
    kill -TERM $PARENT_PID
    exit 0
else
    echo -e "${RED}Last_Three_Service_Package.sh 脚本下载失败。${NC}"
fi
    
