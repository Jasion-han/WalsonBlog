#!/bin/bash
# 部署到Vercel脚本

# 清理public目录
echo "清理构建目录..."
rm -rf public

# 创建预览部署
echo "创建预览部署..."
vercel

# 询问是否部署到生产环境
read -p "预览部署是否成功？是否部署到生产环境？(y/n) " answer
if [[ $answer == "y" || $answer == "Y" ]]; then
  echo "部署到生产环境..."
  vercel --prod
  
  # 询问是否提交到GitHub
  read -p "是否提交更改到GitHub？(y/n) " git_answer
  if [[ $git_answer == "y" || $git_answer == "Y" ]]; then
    read -p "输入提交信息: " commit_message
    git add .
    git commit -m "$commit_message"
    git push origin master
    echo "已提交并推送到GitHub。"
  else
    echo "跳过提交到GitHub。"
  fi
else
  echo "部署已取消。"
fi 