#!/bin/bash

# 下载并安装Hugo
echo "正在下载并安装Hugo..."
wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.145.0/hugo_extended_0.145.0_linux-amd64.deb
dpkg -x /tmp/hugo.deb /tmp/hugo
export PATH=/tmp/hugo/usr/local/bin:$PATH

# 检查Hugo是否安装成功
hugo version

# 使用生产环境配置构建站点
echo "正在为生产环境构建站点..."
hugo --environment production 