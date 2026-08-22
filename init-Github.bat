@echo off
title First Push to GitHub - Thai-Tone-TTS-Project
cd /d "C:\Users\kamph\Thai-Tone-TTS-Project"

echo ===================================================
echo   Initialising and Pushing to GitHub...
echo ===================================================

git init
git add .
git commit -m "Initial commit with index.html"
git branch -M main
git remote add origin https://github.com/tom-nz/Thai-Tone-TTS-Project.git
git push -u origin main

echo ===================================================
echo   Completed!
echo ===================================================
pause