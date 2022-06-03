#!/bin/sh

# nginx再起動
sudo systemctl restart nginx

# nginxnのログを更新
sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d-%H%M%S`
sudo nginx -s reopen

# mysqlのログを更新
sudo rm /var/log/mysql/mysql-slow.log
sudo mysqladmin flush-logs

# mysqlを再起動
sudo systemctl restart mysql

# app.goのコンパイル(適宜書き換え!)
cd /home/isucon/private_isu/webapp/golang
ls
make

# isu-goの再起動
sudo systemctl restart isu-go

rm -rf /home/isucon/private_isu/webapp/public/image
mkdir /home/isucon/private_isu/webapp/public/image


