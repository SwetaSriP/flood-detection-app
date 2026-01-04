#!/bin/bash
# Flood Safety Voice Assistant - Installation & Verification Script

echo "╔══════════════════════════════════════════════════════════════╗"
echo "║   🌊 Flood Safety Voice Assistant - Setup Verification      ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""

# Color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to check if command exists
check_command() {
    if command -v $1 &> /dev/null; then
        echo -e "${GREEN}✓${NC} $1 is installed"
        return 0
    else
        echo -e "${RED}✗${NC} $1 is NOT installed"
        return 1
    fi
}

# Function to check if file exists
check_file() {
    if [ -f "$1" ]; then
        echo -e "${GREEN}✓${NC} $1 exists"
        return 0
    else
        echo -e "${RED}✗${NC} $1 is missing"
        return 1
    fi
}

# Function to check if directory exists
check_dir() {
    if [ -d "$1" ]; then
        echo -e "${GREEN}✓${NC} $1 directory exists"
        return 0
    else
        echo -e "${RED}✗${NC} $1 directory is missing"
        return 1
    fi
}

echo "1. Checking System Requirements"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
check_command "node"
check_command "npm"
echo ""

echo "2. Checking Project Structure"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
check_file "package.json"
check_file "tsconfig.json"
check_file "README.md"
check_dir "src"
check_dir "public"
check_dir "server"
echo ""

echo "3. Checking Source Files"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
check_file "src/App.tsx"
check_file "src/index.tsx"
check_file "src/components/VoiceAssistant.tsx"
check_file "src/components/InfoPanel.tsx"
check_file "src/services/voiceService.ts"
check_file "src/services/aiService.ts"
check_file "src/data/floodDatabase.ts"
echo ""

echo "4. Checking Configuration Files"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
check_file "public/index.html"
check_file "public/manifest.json"
check_file "public/service-worker.js"
check_file ".gitignore"
check_file ".prettierrc"
check_file ".eslintrc.json"
echo ""

echo "5. Checking Documentation"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
check_file "README.md"
check_file "QUICKSTART.md"
check_file "SETUP_COMPLETE.md"
check_file "ARCHITECTURE.md"
echo ""

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✨ Verification Complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

echo "📋 Next Steps:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "1. Install dependencies:"
echo "   ${YELLOW}npm install${NC}"
echo ""
echo "2. Start development server:"
echo "   ${YELLOW}npm start${NC}"
echo ""
echo "3. Open browser:"
echo "   ${YELLOW}http://localhost:3000${NC}"
echo ""
echo "4. Grant microphone permission when prompted"
echo ""
echo "5. Try asking: 'What should I do in a flood?'"
echo ""

echo "📚 Documentation:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "• README.md        - Complete documentation"
echo "• QUICKSTART.md    - Quick start guide"
echo "• SETUP_COMPLETE.md - Detailed setup guide"
echo "• ARCHITECTURE.md  - System architecture"
echo ""

echo "🎯 Available Commands:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "• npm start        - Start development server"
echo "• npm run build    - Build for production"
echo "• npm run server   - Run Express backend"
echo "• npm run dev      - Run frontend + backend"
echo ""

echo "🌊 Stay Safe During Floods!"
echo "╚══════════════════════════════════════════════════════════════╝"
