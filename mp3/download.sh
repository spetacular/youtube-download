#!/bin/bash

# 指定文件路径
file_path="./urls.txt"

# 使用 read 命令逐行读取文件并输出
while IFS= read -r line || [ -n "$line" ]; do
  # 输出当前行
  echo "Downloading: $line"
  # 使用 youtube-dl 下载音频
  ../yt-dlp_macos --config-locations "./yt-dlp.conf" "$line"
  # 输出下载完成
  echo "Downloaded: $line"
  # 输出空行
  echo
done < "$file_path"
