#!/bin/bash
# 生产环境构建脚本
echo "正在为生产环境构建站点..."
rm -rf public
hugo --environment production 