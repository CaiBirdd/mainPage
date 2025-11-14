# 使用 Node.js 20
FROM node:20-alpine

WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 配置 npm 使用淘宝镜像并安装依赖和 serve
RUN npm config set registry https://registry.npmmirror.com && \
    npm install && \
    npm install -g serve

# 复制项目文件
COPY . .

# 构建项目
RUN npm run build

# 暴露端口
EXPOSE 3000

# 使用 serve 服务静态文件
CMD ["serve", "-s", "dist", "-l", "3000"]

