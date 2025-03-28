#!/bin/bash

# 定义全局变量，方便后续修改和使用
DOWNLOAD_DIR="/usr/local/bin"
DOWNLOAD_URL="https://github.com/qjfoidnh/BaiduPCS-Go/releases/download/v3.9.7/BaiduPCS-Go-v3.9.7-linux-amd64.zip"
ZIP_FILE="${DOWNLOAD_DIR}/$(basename ${DOWNLOAD_URL})"
EXTRACT_DIR="${DOWNLOAD_DIR}/$(basename ${DOWNLOAD_URL} .zip)"
TARGET_BINARY="${DOWNLOAD_DIR}/BaiduPCS-Go"

# 函数：执行命令并检查结果
execute_command() {
    local command="$1"
    local error_message="$2"
    if ! eval "$command"; then
        echo "$error_message" >&2
        exit 1
    fi
}

# 下载并安装 BaiduPCS-Go
echo "开始下载并安装 BaiduPCS-Go..."
execute_command "cd $DOWNLOAD_DIR" "无法切换到目录 $DOWNLOAD_DIR"
execute_command "wget $DOWNLOAD_URL" "下载 $DOWNLOAD_URL 失败"
execute_command "unzip $ZIP_FILE" "解压 $ZIP_FILE 失败"
if [ ! -d "$EXTRACT_DIR" ]; then
    echo "解压后的目录 $EXTRACT_DIR 不存在" >&2
    rm -f "$ZIP_FILE"
    exit 1
fi
execute_command "cd $EXTRACT_DIR" "无法切换到目录 $EXTRACT_DIR"
if [ ! -f "BaiduPCS-Go" ]; then
    echo "未找到 BaiduPCS-Go 文件" >&2
    rm -f "$ZIP_FILE"
    rm -rf "$EXTRACT_DIR"
    exit 1
fi
execute_command "mv BaiduPCS-Go $TARGET_BINARY" "移动 BaiduPCS-Go 到 $TARGET_BINARY 失败"
rm -f "$ZIP_FILE"
rm -rf "$EXTRACT_DIR"
execute_command "chmod +x $TARGET_BINARY" "为 $TARGET_BINARY 添加执行权限失败"
execute_command "$TARGET_BINARY -v" "执行 $TARGET_BINARY -v 失败"
echo "BaiduPCS-Go 安装并验证版本成功"

# 选择最大并行下载数量
MAX_PARALLEL=""
while [ -z "$MAX_PARALLEL" ]; do
    read -p "请选择最大并行下载数量（1: 普通用户设置为1；2: SVIP用户设置为20）: " CHOICE
    case $CHOICE in
        1)
            MAX_PARALLEL=1
            ;;
        2)
            MAX_PARALLEL=20
            ;;
        *)
            echo "无效的选择，请输入 1 或 2。"
            ;;
    esac
done
execute_command "$TARGET_BINARY config set -max_parallel=$MAX_PARALLEL" "设置最大并行下载数量失败"
echo "最大并行下载数量已成功设置为 $MAX_PARALLEL"

# 登录百度账号
read -p "请输入你的 BDUSS 以登录百度账号: " BDUSS
if [ -z "$BDUSS" ]; then
    echo "未输入有效的 BDUSS，登录取消。" >&2
    exit 1
fi
execute_command "$TARGET_BINARY login -bduss=$BDUSS" "使用 BDUSS 登录百度账号失败。"
echo "使用 BDUSS 登录百度账号成功。"

# 获取并确认保存路径
SAVE_PATH=""
while [ -z "$SAVE_PATH" ]; do
    read -p "请输入要保存文件的本地路径: " SAVE_PATH
    read -p "你输入的保存路径是 $SAVE_PATH，确认继续执行吗？(y/n): " CONFIRM
    case $CONFIRM in
        [Yy])
            if [ ! -d "$SAVE_PATH" ]; then
                execute_command "mkdir -p $SAVE_PATH" "无法创建保存目录 $SAVE_PATH"
            fi
            break
            ;;
        [Nn])
            SAVE_PATH=""
            echo "请重新输入保存路径。"
            ;;
        *)
            echo "无效的输入，请输入 y 或 n。"
            ;;
    esac
done

# 下载 Images.zip 文件
echo "正在下载 /Images.zip 到 $SAVE_PATH ..."
DOWNLOADED_FILE="$SAVE_PATH/Images.zip"
execute_command "$TARGET_BINARY download /Images.zip -saveto $SAVE_PATH" "下载 /Images.zip 失败"
echo "文件 /Images.zip 下载成功，已保存到 $SAVE_PATH"

# 检查下载的文件是否存在
if [ ! -f "$DOWNLOADED_FILE" ]; then
    echo "未找到下载的文件 $DOWNLOADED_FILE，可能下载过程出现问题。"
    exit 1
fi

# 解压下载的文件
echo "正在解压 $DOWNLOADED_FILE 到 $SAVE_PATH ..."
execute_command "unzip $DOWNLOADED_FILE -d $SAVE_PATH" "解压 $DOWNLOADED_FILE 失败"
echo "文件 $DOWNLOADED_FILE 解压成功，已解压到 $SAVE_PATH"

# 定义解压后路径
EXTRACT_DIR="$SAVE_PATH/Images"

# 检查解压后路径是否存在
while [ ! -d "$EXTRACT_DIR" ]; do
    echo "解压后路径 $EXTRACT_DIR 不存在" >&2
    read -p "请输入新的解压后路径: " EXTRACT_DIR
    if [ -d "$EXTRACT_DIR" ]; then
        break
    else
        echo "你输入的路径仍然不存在，请重新输入。"
    fi
done

# 进入解压后路径
execute_command "cd $EXTRACT_DIR" "无法进入解压后路径 $EXTRACT_DIR"

# 检查 images_load.sh 脚本是否存在
SCRIPT_PATH="$EXTRACT_DIR/images_load.sh"
if [ ! -f "$SCRIPT_PATH" ]; then
    echo "未找到 $SCRIPT_PATH 脚本" >&2
    exit 1
fi

# 为脚本添加执行权限
execute_command "chmod +x $SCRIPT_PATH" "为 $SCRIPT_PATH 添加执行权限失败"

# 运行 images_load.sh 脚本
echo "正在运行 $SCRIPT_PATH 脚本..."
execute_command "$SCRIPT_PATH" "运行 $SCRIPT_PATH 脚本失败"
echo "脚本 $SCRIPT_PATH 运行成功"
