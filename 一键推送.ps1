# 一键推送脚本
Write-Host "正在推送代码到GitHub..." -ForegroundColor Green

# 设置工作目录
Set-Location "D:\TRPG"

# 添加所有更改
git add .

# 获取当前时间作为提交信息
$commitMessage = "Auto commit $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"

# 提交更改
git commit -m $commitMessage

# 推送到远程仓库
git push origin main

Write-Host "推送完成！" -ForegroundColor Green
Write-Host "按任意键退出..."
$host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")