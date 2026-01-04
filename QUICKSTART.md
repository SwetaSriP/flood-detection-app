# Quick Start Guide

## 🚀 Getting Started in 3 Steps

### Step 1: Install Dependencies
```bash
npm install
```

### Step 2: Start Development Server
```bash
npm start
```

This will:
- Open the app at `http://localhost:3000`
- Enable auto-reload on file changes
- Show any errors in the console

### Step 3: Grant Microphone Permission
When prompted, click **"Allow"** to grant microphone access for voice features.

---

## 📝 Commands Cheat Sheet

| Command | Purpose |
|---------|---------|
| `npm start` | Start development server |
| `npm run build` | Build for production |
| `npm test` | Run tests |
| `npm run server` | Run Express backend |
| `npm run dev` | Run both frontend and backend |
| `npm run server:dev` | Run server with auto-reload |

---

## 🎤 How to Use the Voice Assistant

### Voice Input (Recommended)
1. Click **"🎤 Start Listening"** 
2. Speak your question clearly (e.g., "What should I do during a flood?")
3. Wait for transcription to complete
4. The assistant responds with voice and text

### Text Input (Keyboard)
1. Type your question in the text field
2. Click **"Send"** or press Enter
3. Receive voice and text response

### Emergency Mode
- Say or type emergency keywords: "help", "danger", "911", "emergency", "drowning"
- The app instantly recognizes and escalates the response
- Provides critical safety guidance

---

## 🌐 Features You Can Try

### Safety Tips Tab
- Browse flood preparation checklist
- Learn prevention strategies
- Understand response procedures

### Emergency Contacts Tab
- Find important phone numbers
- Get contact info for local authorities
- Quick reference for disaster management

### Flood Facts Tab
- Learn surprising flood statistics
- Understand water hazards
- Get important safety facts

---

## 🔧 Configuration

### Change Language (Future Feature)
Currently English only. To add languages, edit `src/services/voiceService.ts`:
```typescript
this.recognition.lang = "en-US"; // Change language code
```

### Adjust Voice Settings
In `src/components/VoiceAssistant.tsx`:
```typescript
await voiceService.speak(text, {
  rate: 1,      // Speech speed (0.1 - 10)
  pitch: 1,     // Voice pitch (0 - 2)
  volume: 1     // Volume (0 - 1)
});
```

---

## 📱 Mobile Usage

The app is fully responsive and works on:
- ✅ iPhone (Safari)
- ✅ Android (Chrome, Firefox)
- ✅ Tablets (iPad, Android Tablets)

**Best experience on portrait orientation.**

---

## 🔌 Offline Mode

The app automatically works offline:
1. **First visit**: Loads and caches all resources
2. **Without internet**: Works seamlessly with cached data
3. **Service Worker**: Manages offline functionality

For Production (HTTPS):
```bash
npm run build
npm run server
# Visit https://localhost:5000 (enable HTTPS)
```

---

## 🐛 Troubleshooting

### "Speech Recognition not supported"
- Your browser doesn't support Web Speech API
- **Solution**: Use Chrome, Firefox, Safari, or Edge (latest versions)

### Microphone not working
- Permission denied: Check browser settings
- Device issue: Test microphone in another app
- Browser cache: Clear cache and try again

### Voice feedback not playing
- System volume too low: Increase volume
- Muted browser tab: Click to unmute
- Browser restrictions: Check privacy settings

### App not loading
```bash
# Clear cache and reinstall
rm -rf node_modules package-lock.json
npm install
npm start
```

---

## 📚 Knowledge Base

The app includes information about:

**Before Flooding**
- Home preparation
- Emergency supply lists
- Evacuation planning
- Insurance considerations

**During Flooding**
- Immediate response actions
- Water safety
- Evacuation procedures
- Emergency contacts

**After Flooding**
- Recovery steps
- Damage documentation
- Health and safety
- Insurance claims

---

## 🎯 Next Steps

1. ✅ Run `npm install` to set up
2. ✅ Run `npm start` to launch the app
3. ✅ Grant microphone permission
4. ✅ Try asking "What should I do in a flood?"
5. ✅ Explore the Safety Tips, Contacts, and Facts tabs
6. ✅ Try voice input vs text input
7. ✅ Build production version with `npm run build`

---

## 📞 Emergency Resources

**If you're in actual danger:**
- 🚨 **Call 911** (US Emergency Services)
- 📻 **Listen to local news** for official guidance
- 🏘️ **Follow evacuation orders** from authorities
- 🌐 **Visit FEMA.gov** for official information

---

## ✨ Tips for Best Experience

1. **Use headphones** for better voice feedback
2. **Speak clearly** when using voice input
3. **Use in quiet environment** for better recognition
4. **Keep app updated** for latest flood information
5. **Share with others** who might need it during emergencies

---

## 🔒 Privacy & Security

✅ No data is sent to servers  
✅ Everything processed locally  
✅ No cookies or tracking  
✅ No account required  
✅ Works completely offline  

---

## 📖 More Information

See **README.md** for:
- Detailed feature documentation
- Browser support details
- API endpoints (if using server)
- Contributing guidelines

---

**Happy and Safe Using!** 🌊  
Remember: This is a supplement to official emergency guidance.
