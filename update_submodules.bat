@echo off
echo ===============================
echo 🧩 正在逐一更新所有子模組...
echo ===============================

setlocal enabledelayedexpansion

:: 子模組清單
set modules=JAVA_11302_Project JAVA_TA_2024 JAVA-B11207014-Morris-B11207029-Johnson JavaFinal Space_Invader Tetris

for %%M in (%modules%) do (
    echo.
    echo 🔄 處理子模組: %%M
    cd %%M

    git status
    git add .
    git commit -m "更新 %%M 子模組內容"
    git push origin main

    cd ..
    echo ✅ 完成子模組: %%M
)

echo.
echo 🎉 所有子模組已提交與推送完成。
endlocal
