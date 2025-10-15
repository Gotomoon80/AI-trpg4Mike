@echo off
echo 正在推送代码到GitHub...
cd /d D:\TRPG
git add .
git commit -m "Auto commit %date% %time%"
git push origin main
echo 推送完成！
pause