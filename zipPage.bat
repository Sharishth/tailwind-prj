@echo off
rmdir /S /Q .\server_out\*
del /S /Q .\server_out\* && echo "OLD FILES CLEANED"
timeout /t 2 /NOBREAK
xcopy src\index.html server_out\
xcopy dist server_out\dist\
xcopy img server_out\img\
7za a server_out\serverpage.zip server_out\.\*
del server_out\index.html
rmdir /S /Q server_out\dist\
rmdir /S /Q server_out\img\
cls
echo "FILES ARE ARCHIVED"