FROM node:alpine

LABEL org.opencontainers.image.source="https://github.com/thoulee21/interview-ai"

RUN apk update && apk upgrade

# 设置时区
ENV TZ=Asia/Shanghai
RUN apk add --no-cache tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

WORKDIR /app

RUN npm install -g npm@latest

# 安装依赖
COPY package.json package-lock.json* ./
RUN npm ci

# 复制项目文件
COPY . .

RUN npx next telemetry --disable

# 构建应用
RUN npm run build

# 暴露端口
EXPOSE 3000

# 运行应用
CMD ["npm", "start"]