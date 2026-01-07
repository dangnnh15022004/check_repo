@echo off
:: Định nghĩa đường dẫn đích CỐ ĐỊNH
set INSTALL_PATH="C:\Program Files\DlpAgent"

:: 1. Tạo thư mục đích
if not exist %INSTALL_PATH% mkdir %INSTALL_PATH%

:: 2. CHỈ COPY FILE EXE (vì các file khác đã được nhúng)
copy /Y "%~dp0DlpAgent.exe" %INSTALL_PATH%

:: 3. Chạy file từ vị trí CỐ ĐỊNH để kích hoạt logic Registry và Autorun
start /wait %INSTALL_PATH%\DlpAgent.exe

exit 0