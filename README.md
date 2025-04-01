# My Hugo Blog

这是一个使用Hugo构建的个人博客，具有集中管理URL的功能。

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

这将生成使用生产环境URL（当前配置为https://my-hugo-blog-iota.vercel.app/）的静态文件。

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

项目配置为在Vercel上自动部署。当推送到GitHub仓库时，Vercel将自动使用生产环境配置构建站点。

## 配置文件结构

- `config/_default/config.toml`: 基本配置
- `config/development/config.toml`: 开发环境URL配置
- `config/production/config.toml`: 生产环境URL配置

这种结构使我们可以轻松地在不同环境之间切换，并且在更改域名时只需修改一个文件。 