#!/bin/bash

read -p "请输入要替换的新地址: " new_address

for file in *.json; do
    if [ -f "$file" ]; then
        sed -i "s|http://127.0.0.1:|$new_address|g" "$file"
        echo "已在 $file 中完成替换"
    fi
done
