@echo off
title Python 3.12 Project

:: ย้ายไปยังโฟลเดอร์โปรเจกต์
cd /d "C:\Users\kamph\Thai-Tone-TTS-Project"

:: เปิดใช้งาน Virtual Environment
call venv\Scripts\activate.bat

:: แสดงเวอร์ชันที่ใช้งาน
python --version
echo ---------------------------------------------------
echo Virtual Environment (Python 3.12) is ready!
echo ---------------------------------------------------

:: คงหน้าต่าง Command Prompt ไว้สำหรับพิมพ์คำสั่งต่อ
cmd /k