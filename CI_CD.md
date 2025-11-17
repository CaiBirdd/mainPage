# CI/CD 部署说明

## 概述

本项目使用 GitLab CI/CD 进行自动化构建、测试、部署和回滚。CI/CD 流程包括以下阶段：

1. **test** - 运行测试
2. **build** - 构建 Docker 镜像
3. **deploy** - 部署到测试/生产环境
4. **rollback** - 回滚生产环境

## 环境说明

### 测试环境
- 服务器地址：172.16.1.19
- 用户：dev
- 部署路径：/home/dev/gitlabci/synapnote-frontend

### 生产环境
- 服务器地址：3.25.121.26
- 用户：ubuntu
- 部署路径：/home/ubuntu/gitlabci/synapnote-frontend

## 环境变量配置

### 环境变量模板

项目使用 `env.example` 作为环境变量模板。该文件定义了所有需要的环境变量及其占位符。

### GitLab CI/CD 变量配置

在 GitLab 项目的 **Settings > CI/CD > Variables** 中配置以下变量：

#### 必需变量

**SSH 密钥（用于服务器访问）**：
- `SSH_PRIVATE_KEY_TEST` - 测试环境 SSH 私钥
- `SSH_PRIVATE_KEY_PROD` - 生产环境 SSH 私钥

**环境变量（用于替换 env.example 中的占位符）**：

命名规则：`<环境变量名>_<环境后缀>`

- `<环境变量名>_TEST` - 测试环境变量（例如：`DEPLOY_ENV_TEST=development`）
- `<环境变量名>_PROD` - 生产环境变量（例如：`DEPLOY_ENV_PROD=production`）

**示例**：
- 如果 `env.example` 中有 `DEPLOY_ENV=deploy_env`，则配置：
  - `DEPLOY_ENV_TEST=development`（测试环境）
  - `DEPLOY_ENV_PROD=production`（生产环境）

### 环境变量处理逻辑

1. **不敏感的环境变量**：直接在 `docker-compose`中或者`env.example` 中写入实际值，不需要在 GitLab CI 中配置
2. **敏感的环境变量**：在 `env.example` 中使用占位符，通过 GitLab CI 变量替换


### 环境变量生成流程

1. CI/CD 读取 `env.example` 模板
2. 对于每行环境变量：
   - 如果 GitLab CI 中存在对应变量（`<变量名>_TEST` 或 `<变量名>_PROD`），使用 GitLab CI 变量的值
   - 如果不存在，使用 `env.example` 中的原始值（占位符或实际值）
3. 生成 `.env` 文件并传输到服务器

## CI/CD 流程详解

### 1. 测试阶段 (test)

- **触发条件**：默认分支提交
- **功能**：运行测试用例（当前暂未实现）
- **状态**：暂时跳过测试失败

### 2. 构建阶段 (build)

- **触发条件**：默认分支提交
- **功能**：
  - 构建 Docker 镜像
  - 生成构建标签：`<日期时间>-<提交SHA>`
  - 推送镜像到镜像仓库：
    - `172.16.1.11:80/library/synapnote-frontend:latest`
    - `172.16.1.11:80/library/synapnote-frontend:<BUILD_TAG>`

### 3. 部署阶段 (deploy)

#### 测试环境部署 (deploy-test)

- **触发条件**：默认分支提交
- **流程**：
  1. 根据 `env.example` 生成 `.env` 文件
  2. 传输 `docker-compose.yml` 和 `.env` 到测试服务器
  3. 拉取最新镜像
  4. 使用 Docker Compose 部署服务

#### 生产环境部署 (deploy-prod)

- **触发条件**：默认分支提交，**手动触发**
- **流程**：
  1. 根据 `env.example` 生成 `.env` 文件
  2. 保存环境变量快照：`env_<BUILD_TAG>.env`
  3. 传输 `docker-compose-prod.yml`、`.env` 和快照文件到生产服务器
  4. 打包镜像并传输到生产服务器
  5. 使用 Docker Compose 部署服务
  6. 记录版本信息到 `current_version.txt` 和 `version_history.txt`

### 4. 回滚阶段 (rollback)

#### 生产环境回滚 (rollback-prod)

- **触发条件**：默认分支提交，**手动触发**
- **允许失败**：是（`allow_failure: true`）
- **流程**：
  1. 确定回滚版本：
     - 如果 `ROLLBACK_TAG` 未设置，自动选择上一个版本
     - 如果设置为 `previous`，从服务器读取版本历史并选择上一个版本
     - 如果指定具体版本号，使用指定版本
  2. **环境变量处理**：
     - 检查服务器上是否存在环境变量快照文件 `env_<ROLLBACK_TAG>.env`
     - **如果存在**：使用快照文件恢复 `.env`（精确回滚）
     - **如果不存在**：使用当前配置生成 `.env`（降级方案）
  3. 拉取指定版本的镜像
  4. 传输镜像和配置文件到生产服务器
  5. 使用 Docker Compose 部署服务
  6. 更新版本信息

## 版本管理

### 版本标签格式

`<YYYYMMDD-HHMMSS>-<COMMIT_SHA>`

示例：`20240115-143022-abc1234`

### 版本历史文件

生产服务器上维护以下文件：

- `current_version.txt` - 当前部署版本
- `version_history.txt` - 版本部署历史记录

### 环境变量快照

每次生产环境部署时，会保存环境变量快照文件：
- 文件名格式：`env_<BUILD_TAG>.env`
- 保存位置：生产服务器 `/home/ubuntu/gitlabci/synapnote-frontend/`
- 用途：回滚时恢复对应版本的环境变量配置

## 手动操作

### 手动部署生产环境

1. 在 GitLab CI/CD 页面找到 `deploy-prod` job
2. 点击 "Play" 按钮手动触发
3. 等待部署完成

### 手动回滚生产环境

#### 方式一：回滚到上一个版本

1. 在 GitLab CI/CD 页面找到 `rollback-prod` job
2. 点击 "Play" 按钮（不设置 `ROLLBACK_TAG` 变量）
3. 系统会自动选择上一个版本进行回滚

#### 方式二：回滚到指定版本

1. 在 GitLab CI/CD 页面找到 `rollback-prod` job
2. 点击 "Play" 按钮旁边的变量设置
3. 添加变量：
   - Key: `ROLLBACK_TAG`
   - Value: 要回滚的版本号（例如：`20240115-143022-abc1234`）
4. 点击 "Play" 按钮触发回滚

