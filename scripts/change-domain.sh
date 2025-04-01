#!/bin/bash
# 更改域名脚本

if [ $# -eq 0 ]; then
  echo "使用方法: $0 <新域名>"
  echo "例如: $0 https://my-new-domain.com"
  exit 1
fi

NEW_DOMAIN=$1

# 更新生产环境配置文件
echo "baseURL = \"$NEW_DOMAIN/\"" > config/production/config.toml

echo "域名已更新为: $NEW_DOMAIN"
echo "现在，请运行 ./scripts/build-prod.sh 重新构建站点" 