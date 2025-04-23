#!/bin/bash

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

echo "请选择加速选项:"
for i in "${!ACCELERATOR_OPTIONS[@]}"; do
    echo "$((i + 1)). ${ACCELERATOR_OPTIONS[$i]}"
done

read -p "请输入选项编号: " choice

case $choice in
    1)
        ACCELERATOR=""
        ;;
    12)
        read -p "请输入自定义加速链接: " ACCELERATOR
        ;;
    *)
        ACCELERATOR=$(echo "${ACCELERATOR_OPTIONS[$((choice - 1))]}" | cut -d: -f2 | tr -d ' ')
        ;;
esac

url="${ACCELERATOR}https://raw.githubusercontent.com/ATaKi-Myt/Last_Three_Service_Package/refs/heads/main/Last_Three_Service_Package.sh"

if [ -f "Last_Three_Service_Package.sh" ]; then
    rm "Last_Three_Service_Package.sh"
    echo "已删除原有的 Last_Three_Service_Package.sh 脚本。"
fi

wget "$url"
if [ $? -eq 0 ]; then
    echo "Last_Three_Service_Package.sh 脚本下载成功。"
    echo "更新完成，请重新运行 bash Last_Three_Service_Package.sh 指令。"
    sleep 5
    # 获取父进程 ID
    PARENT_PID=$PPID
    # 向父进程发送 SIGTERM 信号
    kill -TERM $PARENT_PID
    exit 0
else
    echo "Last_Three_Service_Package.sh 脚本下载失败。"
fi
