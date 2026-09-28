@echo off
chcp 65001
set "REPO_PATH=D:\HexoProjects\pic_bed"
cd /d %REPO_PATH%

echo ========= Git 图片仓库一键推送 =========
git add .
git status

git commit -m "update images %date% %time%"
if %errorlevel% neq 0 (
    echo 无文件更新，无需提交
) else (
    echo 正在推送到GitHub
    git push
    echo 推送完成
)
pause