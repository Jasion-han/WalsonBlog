# Walson Blog

这是一个使用Hugo构建的个人博客。

## 开发

在本地开发时，使用以下命令：

```bash
npm run dev
```

这将启动一个本地服务器，使用http://localhost:1313/作为baseURL。

## 构建

### 开发环境构建

```bash
npm run build:dev
```

这将生成使用开发环境URL（http://localhost:1313/）的静态文件。

### 生产环境构建

```bash
npm run build:prod
```

这将生成使用生产环境URL（当前配置为https://www.walson.xyz/）的静态文件。

## 更改域名

如果需要更改网站的域名，可以使用以下命令：

```bash
npm run change-domain https://your-new-domain.com
```

然后重新构建站点：

```bash
npm run build:prod
```

## 部署

### 通过GitHub部署到Vercel

项目配置为在Vercel上自动部署。当推送到GitHub仓库时，Vercel将自动使用生产环境配置构建站点。

### 直接从本地部署到Vercel

无需先推送到GitHub，可以直接从本地部署到Vercel：

#### 预览部署

```bash
npm run deploy:preview
```

或者：

```bash
vercel
```

#### 生产部署

```bash
npm run deploy:prod
```

或者：

```bash
vercel --prod
```

#### 完整部署流程（包含提示）

```bash
npm run deploy
```

这将引导你完成预览部署、生产部署和GitHub提交的完整流程。

## 配置文件结构

- `config/_default/config.toml`: 基本配置
- `config/development/config.toml`: 开发环境URL配置
- `config/production/config.toml`: 生产环境URL配置
- `vercel.json`: Vercel部署配置

这种结构使我们可以轻松地在不同环境之间切换，并且在更改域名时只需修改一个文件。 