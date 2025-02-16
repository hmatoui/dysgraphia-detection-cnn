@echo off
echo Cleaning build files...

cd ..

:: Remove the data directory
if exist data (
    rmdir /s /q data
    echo Removed 'data' directory.
) else (
    echo 'data' directory not found.
)

:: Add more folders or files to clean as needed
pause
