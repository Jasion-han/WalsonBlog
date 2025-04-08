---
title: "使用Hugo、GitHub和Vercel搭建个人博客指南"
date: 2025-04-03T10:00:00+08:00
draft: false
tags: ["Hugo", "GitHub", "Vercel", "教程"]
categories: ["技术教程"]
author: "Walson"
---

本文将详细介绍如何使用Hugo搭建个人博客，结合GitHub进行版本控制，并通过Vercel进行自动部署和托管。无需购买服务器，完全免费，适合个人博客和项目展示。

## 一、前期准备

### 1.1 安装必要工具

在开始之前，您需要安装以下工具：

- **Git**：用于版本控制
- **Hugo**：静态网站生成框架
- **GitHub账号**：用于代码托管
- **Vercel账号**：用于网站部署（可使用GitHub账号直接登录）

#### 安装Git
根据您的操作系统，从[Git官网](https://git-scm.com/downloads)下载并安装Git。

#### 安装Hugo
**macOS用户**：
```bash
brew install hugo
```

**Windows用户**：
```bash
choco install hugo -confirm
```

**Linux用户**：
```bash
sudo apt-get install hugo
```

安装完成后，验证安装：
```bash
hugo version
```

## 二、创建Hugo站点

### 2.1 初始化项目

创建一个新的Hugo站点：

```bash
hugo new site my-blog
cd my-blog
```

### 2.2 添加主题

Hugo需要一个主题才能正常工作。以LoveIt主题为例：

```bash
git init
git submodule add https://github.com/dillonzq/LoveIt.git themes/LoveIt
```

### 2.3 配置站点

编辑`config.toml`文件（或创建`config/_default/config.toml`）：

```toml
title = "我的个人博客"
theme = "LoveIt"

[params]
  description = "我的个人博客描述"
  author = "您的名字"
  defaultTheme = "auto"
  
[menu]
  [[menu.main]]
    identifier = "posts"
    name = "文章"
    url = "/posts/"
    weight = 10
  [[menu.main]]
    identifier = "categories"
    name = "分类"
    url = "/categories/"
    weight = 20
  [[menu.main]]
    identifier = "tags"
    name = "标签"
    url = "/tags/"
    weight = 30
```

## 三、创建内容

### 3.1 创建第一篇文章

```bash
hugo new posts/my-first-post.md
```

编辑新创建的文件：

```markdown
---
title: "我的第一篇文章"
date: 2023-04-03T10:00:00+08:00
draft: false
tags: ["Hugo"]
categories: ["博客"]
---

## 你好，世界！

这是我使用Hugo创建的第一篇博客文章。
```

### 3.2 本地预览

启动Hugo的开发服务器：

```bash
hugo server -D
```

访问`http://localhost:1313`查看您的网站。

## 四、GitHub托管

### 4.1 创建GitHub仓库

在GitHub上创建一个新的仓库，例如`my-blog`。

### 4.2 将项目推送到GitHub

```bash
git add .
git commit -m "初始化博客"
git branch -M master
git remote add origin https://github.com/您的用户名/my-blog.git
git push -u origin master
```

## 五、Vercel部署

### 5.1 连接Vercel与GitHub

1. 登录[Vercel](https://vercel.com)（可使用GitHub账号）
2. 点击"New Project"（新项目）
3. 导入您的GitHub仓库
4. 在配置页面中，设置以下内容：
   - Framework Preset: Hugo
   - Build Command: `hugo --gc --minify`
   - Output Directory: `public`

5. 如果使用的是最新版Hugo，可能需要添加环境变量：
   - 名称: `HUGO_VERSION`
   - 值: `0.110.0`（或您使用的Hugo版本）

6. 点击"Deploy"开始部署

### 5.2 自定义域名（可选）

如果您有自己的域名：

1. 在Vercel项目中，进入"Settings" > "Domains"
2. 添加您的域名
3. 按照指示在您的DNS提供商处添加相应的记录

## 六、持续集成与部署

每当您向GitHub仓库推送更改时，Vercel将自动重新构建和部署您的网站。

要添加新文章，只需：

```bash
hugo new posts/new-article.md
# 编辑文章内容
git add .
git commit -m "添加新文章"
git push
```

## 七、写作技巧

### 7.1 文章前置参数

Hugo文章开头的YAML前置参数非常重要：

```yaml
---
title: "文章标题"
date: 2023-04-03T10:00:00+08:00
draft: false  # true为草稿，不会发布
tags: ["标签1", "标签2"]
categories: ["分类"]
author: "作者名"  # 可选
description: "文章描述"  # 可选
---
```

### 7.2 Markdown语法

Hugo使用Markdown格式，您可以使用各种Markdown语法来丰富文章：

- 标题：`# 一级标题` 到 `###### 六级标题`
- 强调：`**粗体**`, `*斜体*`
- 列表：`1. 有序列表` 或 `- 无序列表`
- 链接：`[链接文本](URL)`
- 图片：`![替代文本](图片URL)`
- 代码：``` ``` 包围的代码块，或 ` 包围的行内代码

## 八、总结

通过以上步骤，您已经成功创建了一个由Hugo驱动、GitHub托管、Vercel部署的个人博客。这种方式免费、高效、易于维护，并且拥有自动化的部署流程。

随着您对Hugo的深入了解，可以进一步定制主题、添加评论系统、集成分析工具等，打造专属于您的个性化博客平台。

尝试搭建一套自己的个人博客吧！