#!/bin/bash
# 开发环境构建脚本
echo "正在为开发环境构建站点..."
rm -rf public
hugo --environment development 