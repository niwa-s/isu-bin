sudo apt update


# dirname $0 でスクリプトの存在するディレクトリが得られる
# インラインコマンドで cd して pwd すれば絶対パスが得られる
SCRIPT_DIR=$(cd $(dirname $0) && pwd)

export PATH=$PATH:$SCRIPT_DIR

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
sudo cp "${SCRIPT_DIR}/nginx_log_format.conf" /etc/nginx/sites-enabled/.