FROM node:18-alpine
# nextのアプリ名を引数で受け取る
ARG APPNAME
ENV APPNAME=${APPNAME}
WORKDIR /app/${APPNAME}

# スクリプトに実行権限を付与
COPY ./build/next/init.sh /init.sh
RUN chmod +x /init.sh

# スクリプトの改行コードをLFに変換
RUN apk add --no-cache dos2unix
RUN dos2unix /init.sh
CMD [ "sh","/init.sh" ]