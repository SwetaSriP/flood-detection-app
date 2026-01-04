# 🚀 Quick Start: New Features Guide

## Installation & First Run

### Step 1: Install & Start
```bash
cd c:\Users\Sweta Sri\Desktop\app_flood
npm install
npm start
```

### Step 2: Grant Permissions
When the app loads:
- ✅ Allow microphone access (for voice)
- ✅ Allow location access (for geolocation features)

---

## 🌍 Feature #1: Real Flood Data Integration

### What It Does
Provides real-time water level monitoring and flood alerts for your area.

### How to Use
1. Go to **"Water Level"** dashboard card
2. See rivers/lakes with current levels
3. Color coding:
   - 🟢 **Green**: Safe (below 70%)
   - 🟠 **Orange**: Caution (70-90%)
   - 🔴 **Red**: Danger (90%+)

### What You'll See
```
💧 Cooum River - Downtown
🟠 Current: 2.8m | Normal: 1.5m | Danger: 3.5m
Trend: 📈 Rising
Progress bar showing 80% of danger level
⚠️ HIGH ALERT: Water level approaching critical threshold!
```

### Voice Assistant Integration
When critical levels detected, the assistant automatically alerts you:
```
"Critical Alert: Cooum River has reached 2.8m (danger level: 3.5m)"
```

---

## 🌍 Feature #2: Multi-Language Support

### Supported Languages
- 🇬🇧 English
- 🇪🇸 Spanish (Español)
- 🇫🇷 French (Français)
- 🇮🇳 Hindi (हिंदी)
- 🇵🇹 Portuguese (Português)
- 🇯🇵 Japanese (日本語)

### How to Change Language
1. Click **⚙️** button in top-right of VoiceAssistant
2. Select language from dropdown
3. UI translates instantly ✨
4. Your preference is saved

### What Gets Translated
- All UI buttons and labels
- Voice assistant messages
- Page titles
- Alerts and notifications
- Help text

### Example
```
English:  "What should I do in a flood?"
Spanish:  "¿Qué debo hacer en una inundación?"
Hindi:    "बाढ़ में मुझे क्या करना चाहिए?"
```

---

## 📍 Feature #3: Geolocation Mapping

### What It Does
Automatically finds your location and shows nearby safe shelters and evacuation routes.

### Permissions Required
When you first use map features:
- Your browser asks: "Allow location access?"
- Click ✅ **Allow** to enable
- Location saved locally, never sent to servers

### Finding Nearby Shelters
1. Go to **"Shelters"** card on dashboard
2. App automatically finds nearby shelters (within 15km)
3. For each shelter, you see:
   - 📍 Distance away
   - 👥 Capacity
   - ✅ Availability status
   - 📞 Phone number
   - 🗺️ Google Maps link

### Using the Map
1. Go to **"Risk Map"** card
2. See your location (🟢 Green dot)
3. See nearby shelters (🏘️ Emoji markers)
4. See flood zones (Color-coded circles)
   - 🔴 Critical risk
   - 🟠 High risk
   - 🟡 Medium risk

### One-Click Actions
- Click shelter marker → See full details
- Click "🗺️ Open in Maps" → Get turn-by-turn navigation
- Click phone number → Call directly

### Example Shelter Info
```
Community Center Downtown
📍 123 Main St, Downtown
👥 Capacity: 500 people
✅ Currently Available
📏 Distance: 2.3 km away
📞 Phone: +1-555-0101
[🗺️ Open in Maps] [📞 Call]
```

---

## 💾 Feature #4: Offline Chat History

### What It Does
Automatically saves every conversation so you can:
- Review past conversations
- Search for important information
- Export history for backup
- Access chats offline

### Auto-Save
- Every message you send → Saved ✅
- Every assistant reply → Saved ✅
- Happens automatically, no extra steps
- Works offline completely

### Access Your History
1. Click **⚙️** button in VoiceAssistant
2. You'll see two options:

#### Option A: Export History
- Click 📾 **Export History**
- Downloads as JSON file
- Contains all conversations with timestamps
- Safe to share or backup

#### Option B: Clear History
- Click 🗑️ **Clear History**
- App asks for confirmation
- Deletes all saved messages
- Cannot be undone

### What Gets Saved
```json
{
  "id": "session-1704283200000-abc123",
  "messages": [
    {
      "id": "msg-001",
      "role": "user",
      "content": "What should I do in a flood?",
      "timestamp": "2024-01-03T10:30:00.000Z"
    },
    {
      "id": "msg-002",
      "role": "assistant",
      "content": "Follow these steps...",
      "timestamp": "2024-01-03T10:30:05.000Z"
    }
  ]
}
```

### Search Previous Conversations
(Coming soon in future update)

---

## 🎯 Real-World Scenarios

### Scenario 1: Flash Flood Warning
```
1. ⚠️ App automatically detects critical water levels
2. Voice assistant announces: "CRITICAL ALERT: River levels critical!"
3. Go to "Water Level" → See which rivers are dangerous
4. Go to "Shelters" → Find nearest shelter
5. Click shelter → Get navigation
6. Chat history saved for emergency services reference
```

### Scenario 2: Evacuation Order
```
1. Language barrier? Click ⚙️ → Change to your language
2. Get instructions in your preferred language
3. Click "Risk Map" → See safe routes and shelters
4. Export chat history before leaving
5. Navigate to nearest shelter with map
6. Everything works offline - no internet needed
```

### Scenario 3: Information Recovery
```
1. After emergency, click ⚙️
2. Click 📾 "Export History"
3. Send to insurance company or authorities
4. Complete record of all safety guidance received
```

---

## ⚙️ Settings Menu (⚙️ Button)

When you click the **⚙️ button**, you get access to:

### Language Selector 🌐
```
Language: [Dropdown]
├─ English
├─ Español
├─ Français
├─ हिंदी
├─ Português
└─ 日本語
```

### Export Button 📾
- Saves chat history as JSON file
- Named: `flood-assistant-history-[timestamp].json`
- Safe to download and keep

### Clear Button 🗑️
- Deletes all chat messages
- Asks for confirmation first
- Creates new empty session
- Cannot be undone

---

## 📱 Mobile Tips

### On Phone Browser
1. Geolocation works better with:
   - GPS enabled
   - Location services on
   - Exact location (not approximate)

2. For best experience:
   - Keep screen on while using map
   - Allow all permissions
   - Use in portrait orientation

3. In emergencies:
   - Open map to see nearby shelters
   - Share location with contacts if needed
   - Export history if internet available

---

## 🔒 Privacy & Security

### Your Data Stays Local
- ✅ Location never sent to servers
- ✅ Chat history never sent to servers
- ✅ Language preference saved locally
- ✅ All processing happens on your device

### Clear Your Data Anytime
- ⚙️ → 🗑️ Clear History (removes all chats)
- Check browser settings for location permissions

### What's Shared?
- Only you decide what to share
- Export button lets you download your data
- Can share with emergency services if needed
- Nothing automatic or forced

---

## ✨ Pro Tips

### Tip 1: Pre-download Routes
- Visit map before emergency
- Review nearby shelters
- Know distance to safety

### Tip 2: Language Learning
- Bookmark emergency phrases in different languages
- Practice using app in your language
- Helps family members prepare

### Tip 3: Battery Saving
- Screenshot key shelter info
- Save favorite shelter numbers
- Download maps while plugged in

### Tip 4: Keep History
- Export history regularly
- Store in cloud backup
- Helps emergency planning

### Tip 5: Location Updates
- App auto-updates location every few minutes
- Turn on GPS for accuracy
- Better navigation when walking to shelter

---

## 🆘 Troubleshooting

### Location Not Working?
1. Check browser location permission
2. Open Settings → Privacy → Location
3. Ensure app has location permission
4. Try refreshing page

### Language Not Translating?
1. Refresh the page
2. Click ⚙️ again
3. Select language again
4. Wait for translation

### Chat History Not Saving?
1. Check browser allows IndexedDB (Local Storage)
2. Ensure device has free storage space
3. Try clearing browser cache
4. Refresh and try again

### Map Not Showing Shelters?
1. Grant location permission
2. Wait 3-5 seconds for location
3. Refresh map page
4. Check internet connection (if using real APIs)

---

## 📞 Need Help?

### In-App Help
- Speak: "Help" or "What do I do?"
- Type: "Help" in chat
- Read welcome messages on each page

### Emergency
- Always call local emergency number
- 911 in USA, 999 in UK, 112 in EU
- Use app as supplement, not replacement

---

## 🎉 You're All Set!

You now have a powerful flood safety assistant with:
- ✅ Real flood data monitoring
- ✅ Multi-language support
- ✅ Your location & nearby shelters
- ✅ Complete chat history offline

**Stay safe! 🌊💚**
