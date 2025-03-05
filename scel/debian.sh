#!/bin/bash

# 假设所有的 .scel 文件都在当前目录下
for file in scel/*.scel; do
    # 提取文件名（不含扩展名）
    filename=$(basename "$file" .scel)
    # 调用 Python 脚本进行转换
    scel2org5 "$file" -o "${filename}.txt"
done
