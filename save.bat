@echo off
git add .
git commit -m"UpdateByRobot"
git push -u
hexo clean & hexo g -d