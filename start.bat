@echo off
REM Flood Safety Voice Assistant - Windows Startup Script

echo.
echo ╔══════════════════════════════════════════════════════════════╗
echo ║   🌊 Flood Safety Voice Assistant                           ║
echo ║   Starting up your application...                           ║
echo ╚══════════════════════════════════════════════════════════════╝
echo.

REM Check if node is installed
node -v >nul 2>&1
if errorlevel 1 (
    echo ❌ ERROR: Node.js is not installed
    echo.
    echo Please install Node.js from: https://nodejs.org
    echo.
    pause
    exit /b 1
)

echo ✓ Node.js is installed
echo.

REM Check if npm is installed
npm -v >nul 2>&1
if errorlevel 1 (
    echo ❌ ERROR: npm is not installed
    pause
    exit /b 1
)

echo ✓ npm is installed
echo.

REM Check if node_modules exists
if not exist "node_modules\" (
    echo 📦 Installing dependencies...
    echo This may take a few moments...
    echo.
    call npm install
    if errorlevel 1 (
        echo ❌ Failed to install dependencies
        pause
        exit /b 1
    )
    echo ✓ Dependencies installed
    echo.
)

REM Start the development server
echo.
echo 🚀 Starting development server...
echo.
echo 📍 The app will open at: http://localhost:3000
echo.
echo ⏳ Please wait while the server starts...
echo.

call npm start

pause
