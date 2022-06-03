sudo apt update

# unzipのインストール
sudo apt install unzip

# pt-query-digestのインストール
sudo apt install percona-toolkit

# alpのインストール
wget https://github.com/tkuchiki/alp/releases/download/v1.0.8/alp_linux_amd64.zip
unzip alp_linux_amd64.zip
sudo install ./alp /usr/local/bin
rm alp_linux_amd64.zip
rm alp

# nginx.confにログフォーマットを追加
sudo cp nginx_log_format.conf /etc/nginx/sites-enabled/.