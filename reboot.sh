#!/bin/sh

# nginxnのログを更新
sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d-%H%M%S`
sudo nginx -s reopen

# mysqlのログを更新
sudo rm /var/log/mysql/mysql-slow.log
sudo mysqladmin flush-logs

# mysqlを再起動
sudo systemctl restart mysql