@echo off
git add .
git commit -m"administrator"
git push -u
hexo clean
hexo g -d