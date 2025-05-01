#!/bin/bash

read -e -p "请输入媒体服务器名称: " jellyfin_server_name
read -e -p "请输入媒体服务器类型 (jellyfin/emby): " jellyfin_server_type
read -e -p "请输入媒体服务器地址:端口: " jellyfin_base_url
read -e -p "请输入媒体服务器用户名: " jellyfin_user_name
read -e -p "请输入媒体服务器密码: " jellyfin_password
read -e -p "是否更新海报 (true/false): " jellyfin_update_poster
read -e -p "请输入 cron 表达式: " cron_expression
read -e -p "请输入要排除更新的媒体库名称，多个名称用空格分隔: " -a exclude_update_library
read -e -p "请输入样式名称（仅支持 style1）: " style_name
read -e -p "请输入中文字体文件名称，例如:xxx.ttf: " style_ch_font
read -e -p "请输入英文字体文件名称，例如:xxx.ttf: " style_eng_font
read -e -p "请输入媒体库数量: " template_mapping_count
template_mapping=()
for ((i = 0; i < template_mapping_count; i++)); do
    read -e -p "请输入第 $((i + 1)) 组模板映射的库名称: " library_name
    read -e -p "请输入第 $((i + 1)) 组模板映射的中文库名称: " library_ch_name
    read -e -p "请输入第 $((i + 1)) 组模板映射的英文库名称: " library_eng_name
    echo "以下是可用的海报排序方式："
    echo "按创建时间排序（DateCreated）"
    echo "按最后添加内容排序（DateLastContentAdded）"
	echo "随机排序（Random）"
	echo "按名称排序（SortName）"
	echo "按系列播放日期排序（SeriesDatePlayed）"
	echo "按首映日期排序（PremiereDate）"
    read -e -p "请输入第 $((i + 1)) 组模板映射的海报排序方式: " poster_sort

    template_mapping+=("{
      \"library_name\": \"$library_name\",
      \"library_ch_name\": \"$library_ch_name\",
      \"library_eng_name\": \"$library_eng_name\",
      \"poster_sort\": \"$poster_sort\"
    }")
done

json_content="{
  \"jellyfin\": [
    {
      \"server_name\": \"$jellyfin_server_name\",
      \"server_type\": \"$jellyfin_server_type\",
      \"base_url\": \"$jellyfin_base_url\",
      \"user_name\": \"$jellyfin_user_name\",
      \"password\": \"$jellyfin_password\",
      \"update_poster\": $jellyfin_update_poster
    }
  ],
  \"cron\": \"$cron_expression\",
  \"exclude_update_library\": ["
for ((i = 0; i < ${#exclude_update_library[@]}; i++)); do
    if [ $i -gt 0 ]; then
        json_content+=", "
    fi
    json_content+="\"${exclude_update_library[$i]}\""
done
json_content+="],
  \"style_config\": [
    {
      \"style_name\": \"$style_name\",
      \"style_ch_font\": \"$style_ch_font\",
      \"style_eng_font\": \"$style_eng_font\"
    }
  ],
  \"template_mapping\": ["
for ((i = 0; i < ${#template_mapping[@]}; i++)); do
    if [ $i -gt 0 ]; then
        json_content+=", "
    fi
    json_content+="${template_mapping[$i]}"
done
json_content+="]
}"

read -e -p "请输入要保存 JSON 文件的路径: " save_path

if [ ! -d "$save_path" ]; then
    mkdir -p "$save_path"
    if [ $? -ne 0 ]; then
        echo "无法创建路径 $save_path，请检查权限或路径是否合法。"
        exit 1
    fi
fi

json_file="$save_path/config.json"

echo "$json_content" > "$json_file"
if [ $? -eq 0 ]; then
    echo "JSON 文件 $json_file 创建成功！"
else
    echo "创建 JSON 文件时出现错误。"
fi
