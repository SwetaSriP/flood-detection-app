#!/bin/bash
# Flood Safety Voice Assistant - macOS/Linux Startup Script

echo ""
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║   🌊 Flood Safety Voice Assistant                           ║"
echo "║   Starting up your application...                           ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""

# Check if node is installed
if ! command -v node &> /dev/null; then
    echo "❌ ERROR: Node.js is not installed"
    echo ""
    echo "Please install Node.js from: https://nodejs.org"
    echo ""
    exit 1
fi

echo "✓ Node.js is installed ($(node -v))"
echo ""

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ ERROR: npm is not installed"
    exit 1
fi

echo "✓ npm is installed ($(npm -v))"
echo ""

# Check if node_modules exists
if [ ! -d "node_modules" ]; then
    echo "📦 Installing dependencies..."
    echo "This may take a few moments..."
    echo ""
    npm install
    if [ $? -ne 0 ]; then
        echo "❌ Failed to install dependencies"
        exit 1
    fi
    echo ""
    echo "✓ Dependencies installed"
    echo ""
fi

# Start the development server
echo ""
echo "🚀 Starting development server..."
echo ""
echo "📍 The app will open at: http://localhost:3000"
echo ""
echo "⏳ Please wait while the server starts..."
echo ""

npm start
