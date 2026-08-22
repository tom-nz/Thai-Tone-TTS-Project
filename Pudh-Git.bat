@echo off
title Auto Push to GitHub - Thai-Tone-TTS-Project
cd /d "C:\Users\kamph\Thai-Tone-TTS-Project"

echo ===================================================
echo   Syncing updates with GitHub...
echo ===================================================

git add .
set /p commit_msg="Enter commit message (or press Enter for default): "
if "%commit_msg%"=="" set commit_msg=Update project files

git commit -m "%commit_msg%"
git push origin main

echo ===================================================
echo   Sync Completed!
echo ===================================================
pause