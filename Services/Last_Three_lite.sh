#!/bin/bash

options=(
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

PS3="请选择加速链接: "
select opt in "${options[@]}"; do
    case $REPLY in
        1)
            proxy=""
            break
            ;;
        2)
            proxy="https://gitproxy.click/"
            break
            ;;
        3)
            proxy="https://github.moeyy.xyz/"
            break
            ;;
        4)
            proxy="https://github.tbedu.top/"
            break
            ;;
        5)
            proxy="https://github.proxy.class3.fun/"
            break
            ;;
        6)
            proxy="https://ghfile.geekertao.top/"
            break
            ;;
        7)
            proxy="https://github.proxy.class3.fun/"
            break
            ;;
        8)
            proxy="https://github-proxy.lixxing.top/"
            break
            ;;
        9)
            proxy="https://ghf.无名氏.top/"
            break
            ;;
        10)
            proxy="https://ghm.078465.xyz/"
            break
            ;;
        11)
            proxy="https://gh-proxy.net/"
            break
            ;;
        12)
            read -p "请输入加速链接: " proxy
            if [[ ! $proxy =~ ^https?:// ]]; then
                echo "输入的链接格式不正确，请输入以 http 或 https 开头的链接。"
                continue
            fi
            break
            ;;
        *)
            echo "无效的选择，请输入 1 - 12 之间的数字。"
            ;;
    esac
done

download_url="https://raw.githubusercontent.com/ATaKi-Myt/Last_Three_Service_Package/refs/heads/main/Last_Three_Service_Package_Lite/Last_Three_Service_Package_Lite.yml"

new_download_url="${proxy}${download_url}"

echo "开始下载文件..."
wget -O Last_Three_Service_Package_Lite.yml "$new_download_url"
if [ $? -ne 0 ]; then
    echo "下载失败，请检查链接或网络。"
    exit 1
fi
echo "文件下载完成。"

read -p "请输入以 / 开头并以 / 结尾的替换内容: " replacement

if [[ ! $replacement =~ ^/.*\/$ ]]; then
    echo "输入的内容必须以 / 开头并以 / 结尾。"
    exit 1
fi

sed -i "s|/\*/|$replacement|g" Last_Three_Service_Package_Lite.yml

echo "开始执行 Compose 文件..."
docker compose -f Last_Three_Service_Package_Lite.yml up -d
if [ $? -ne 0 ]; then
    echo "执行 Compose 文件失败，请检查文件内容或 Docker 环境。"
    exit 1
fi
echo "Compose 文件执行完成。"
