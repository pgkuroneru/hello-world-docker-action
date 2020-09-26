# コードを実行するコンテナイメージ
FROM alpine:3.10

# アクションのリポジトリからコードファイルをファイルシステムパスへコピー
COPY entrypoint.sh /entrypoint.sh

# 権限の変更
RUN chmod +x /entrypoint.sh 

# dockerコンテナが起動する際に実行されるコードファイル (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
