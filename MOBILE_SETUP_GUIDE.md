# 📱 Connect to Mobile - Quick Setup Guide

## 🚀 **FASTEST WAY (WiFi + Install App)**

### **Step 1: Get Computer IP Address**
```
1. Open PowerShell
2. Type: ipconfig
3. Find line: "IPv4 Address" 
4. Copy the number (e.g., 192.168.0.105)
```

### **Step 2: Connect Phone to Same WiFi**
```
1. Phone WiFi Settings
2. Connect to your home/office WiFi
3. IMPORTANT: Same WiFi as your computer
```

### **Step 3: Open App on Phone**
```
1. Phone Browser (Chrome/Safari)
2. Type: http://[YOUR_IP]:3000
3. Example: http://192.168.0.105:3000
4. Press Enter
```

### **Step 4: Install as App**
```
ANDROID:
1. Wait for page to load
2. Tap Menu (⋮) icon
3. Tap "Install app"
4. Confirm

iPhone:
1. Wait for page to load
2. Tap Share icon (↗️)
3. Tap "Add to Home Screen"
4. Confirm
```

### **Step 5: Done! 🎉**
```
App is now on your home screen
Works offline too!
```

---

## 🔌 **USB TETHERING METHOD (No WiFi)**

### **Step 1: Connect Phone with USB Cable**
```
Plug phone into computer with USB cable
```

### **Step 2: Enable USB Tethering on Phone**
```
ANDROID:
1. Settings → Network & Internet
2. Tethering → USB Tethering (toggle ON)
3. Wait 5 seconds

iPhone:
1. Settings → Personal Hotspot
2. Allow Others to Join (ON)
```

### **Step 3: Get Computer IP**
```
PowerShell: ipconfig | findstr "IPv4"
Note the IP address (e.g., 192.168.137.1)
```

### **Step 4: Access on Phone**
```
Phone Browser:
Type: http://[YOUR_IP]:3000
Example: http://192.168.137.1:3000
Press Enter
```

### **Step 5: Install as App**
```
Same as above (Android or iPhone steps)
```

---

## 📋 **TROUBLESHOOTING**

### **"Cannot reach website"**
- [ ] Check both devices on same WiFi (if using WiFi method)
- [ ] Verify IP address is correct
- [ ] Check npm server is running (`npm start`)
- [ ] Disable firewall temporarily on PC

### **"App won't load"**
- [ ] Try: http://localhost:3000 on computer (should work)
- [ ] Restart `npm start`
- [ ] Use correct IP from `ipconfig`

### **Phone can't find server**
- [ ] Ensure same WiFi network
- [ ] Try IP address instead of localhost
- [ ] Check Windows Firewall allows Node.js

### **App works but no map**
- [ ] Map loads with default Chennai location
- [ ] This is normal behavior
- [ ] All features work offline

---

## ⚡ **QUICK REFERENCE**

| Step | What to Do |
|------|-----------|
| 1️⃣ | Get IP: `ipconfig` |
| 2️⃣ | Phone on same WiFi |
| 3️⃣ | Browser: `http://IP:3000` |
| 4️⃣ | Menu → Install App |
| 5️⃣ | Done! |

---

## 🎯 **YOUR IP ADDRESS**

Run this now:
```powershell
ipconfig | findstr "IPv4"
```

**Write it down:**
```
MY IP: ___________________
URL: http://[IP]:3000
```

---

## ✅ **FEATURES ON MOBILE**

After installation:
- ✅ Voice Assistant (works offline)
- ✅ Interactive Map (with geolocation)
- ✅ Evacuation Timer
- ✅ Emergency SOS
- ✅ All 10 features
- ✅ Full-screen experience
- ✅ Works without internet

---

## 📞 **SUPPORT**

**If it doesn't work:**
1. Check Windows Firewall
2. Try different IP address
3. Restart `npm start`
4. Check phone browser can reach: `http://localhost:3000` from PC

---

**Last Updated:** January 3, 2026  
**App Status:** ✅ Ready for Mobile  
**All Features:** ✅ Working Offline
