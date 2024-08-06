#!/bin/bash

REPO_PATH="/home/yuyu/Documents/product_2024/ob-btc-future"

while true; do
    cd "$REPO_PATH" || { echo "Không thể thay đổi thư mục đến $REPO_PATH"; exit 1; }

    NOW=$(date +"%Y-%m-%d %H:%M:%S")
    COMMIT_MESSAGE="Auto commit at $NOW"
    #aa
    git add .
    git commit -m "$COMMIT_MESSAGE"
    #git pull origin master
    git push origin master

    # Đợi 10 phút (600 giây) trước khi thực hiện lần tiếp theo
    sleep 620
done