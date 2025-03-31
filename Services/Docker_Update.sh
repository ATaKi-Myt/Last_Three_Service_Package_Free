#!/bin/bash

# 获取 Docker 版本
docker_version=$(docker --version 2>/dev/null | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
if [ -n "$docker_version" ]; then
    echo "当前 Docker 版本: $docker_version"
else
    echo "未找到 Docker 版本信息。"
fi

# 获取 Docker Compose 版本
docker_compose_version=$(docker-compose --version 2>/dev/null | grep -oE '[0-9]+\.[0-9]+\.[0-9]+')
if [ -n "$docker_compose_version" ]; then
    echo "当前 Docker Compose 版本: $docker_compose_version"
else
    echo "未找到 Docker Compose 版本信息。"
fi

# 选择加速链接
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
        proxy_url=""
        ;;
    2)
        proxy_url="https://gitproxy.click/"
        ;;
    3)
        proxy_url="https://github.moeyy.xyz/"
        ;;
    4)
        proxy_url="https://github.tbedu.top/"
        ;;
    5|7)
        proxy_url="https://github.proxy.class3.fun/"
        ;;
    6)
        proxy_url="https://ghfile.geekertao.top"
        ;;
    8)
        proxy_url="https://github-proxy.lixxing.top/"
        ;;
    9)
        proxy_url="https://ghf.无名氏.top/"
        ;;
    10)
        proxy_url="https://ghm.078465.xyz/"
        ;;
    11)
        proxy_url="https://gh-proxy.net/"
        ;;
    12)
        read -p "请输入加速链接: " proxy_url
        ;;
    *)
        echo "无效的选项，退出脚本。"
        exit 1
        ;;
esac

# 询问用户是否升级
read -p "是否要将 Docker 和 Docker Compose 升级到最新版本？(y/n): " upgrade_choice
case $upgrade_choice in
    [Yy]* )
        echo "开始升级 Docker..."
        sudo apt-get update
        sudo apt-get install --only-upgrade docker-ce docker-ce-cli containerd.io

        echo "开始升级 Docker Compose..."
        latest_version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep 'tag_name' | cut -d\"v\" -f2 | cut -d\"\\\"\" -f1)
        download_url="${proxy_url}https://github.com/docker/compose/releases/download/v$latest_version/docker-compose-$(uname -s)-$(uname -m)"
        sudo curl -L "$download_url" -o /usr/local/bin/docker-compose
        sudo chmod +x /usr/local/bin/docker-compose
        echo "升级完成。"
        ;;
    [Nn]* )
        echo "退出脚本。"
        exit 0
        ;;
    * )
        echo "无效输入，请输入 'y' 或 'n'。"
        ;;
esac
    
