# 📖 Flood Safety Assistant - Quick Reference Guide

## 🚀 Quick Start Commands

```bash
# Installation
npm install

# Development
npm run dev              # Start both React + Node server
npm start              # React server only (port 3000)
npm run server         # Node server only (port 5000)

# Build
npm run build          # Production bundle

# Mobile
npx cap add android
npx cap copy android
npx cap build android

# Testing
npm test              # Run tests
```

---

## 📂 File Structure Quick Reference

```
src/
├── App.tsx                    # Main app (router logic)
├── index.tsx                  # React entry point
│
├── pages/ (23 files)          # Page components
│   ├── Dashboard.tsx          # Home page
│   ├── LoginPage.tsx          # Authentication
│   ├── MapPage.tsx            # Flood risk map
│   ├── LocationPage.tsx       # User location
│   ├── EmergencyPage.tsx      # Emergency info
│   ├── SOSPage.tsx            # SOS signal
│   ├── AlertsPage.tsx         # Alerts management
│   └── ... (16 more pages)
│
├── components/ (3 files)      # Reusable components
│   ├── VoiceAssistant.tsx     # Voice interface
│   ├── Card.tsx               # Card wrapper
│   └── InfoPanel.tsx          # Info display
│
├── services/ (6 files)        # Business logic
│   ├── voiceService.ts        # Speech API
│   ├── aiService.ts           # Query processing
│   ├── geolocationService.ts  # Location tracking
│   ├── floodDataService.ts    # Flood data
│   ├── chatHistoryService.ts  # Message storage
│   └── localizationService.ts # Multi-language
│
├── data/                      # Static data
│   └── floodDatabase.ts       # FAQs & recommendations
│
├── hooks/                     # Custom React hooks
│   └── useVoiceAssistant.ts   # Voice assistant hook
│
├── utils/                     # Helper functions
│   └── helpers.ts             # Utility functions
│
└── styles/                    # CSS files
    ├── index.css              # Global styles
    ├── VoiceAssistant.css     # Component styles
    └── InfoPanel.css          # Component styles
```

---

## 🎯 Key Services Overview

### 1. Voice Service

```typescript
// Start listening
voiceService.startListening(
  (transcript, isFinal) => { },
  (error) => { }
);

// Speak text
voiceService.speak("Hello world", "en");

// Stop listening
voiceService.stopListening();

// Check support
voiceService.isSpeechRecognitionSupported();
```

### 2. AI Service

```typescript
// Process query
const response = await aiService.processQuery(
  "How to prepare for flood?",
  context
);

// Generate response
const text = aiService.generateResponse("flood tips");

// Detect emergency
const isEmergency = aiService.detectEmergency("Help!");
```

### 3. Geolocation Service

```typescript
// Get user location
const location = await geolocationService.getLocation();

// Watch location
geolocationService.watchLocation((coords) => {
  console.log(coords.lat, coords.lng);
});

// Find nearby shelters
const shelters = await geolocationService.getNearByShelters(10);

// Calculate distance
const km = geolocationService.calculateDistance(
  lat1, lng1, lat2, lng2
);
```

### 4. Flood Data Service

```typescript
// Get flood zones
const zones = await floodDataService.getFloodZones(lat, lng, 15);

// Get water levels
const levels = await floodDataService.getWaterLevels();

// Get alerts
const alerts = await floodDataService.getWeatherAlerts();

// Check if critical
const isCritical = await floodDataService.isCriticalZone(lat, lng);
```

### 5. Chat History Service

```typescript
// Initialize
chatHistoryService.initialize();

// Start session
chatHistoryService.startSession();

// Add message
chatHistoryService.addMessage("user", "Hello", "text");

// Get history
const messages = chatHistoryService.getHistory();

// Clear history
chatHistoryService.clearHistory();
```

### 6. Localization Service

```typescript
// Get current language
const lang = localizationService.getCurrentLanguage();

// Set language
localizationService.setLanguage("ta"); // Tamil

// Translate
const text = localizationService.t("app_title");

// Get all translations
const translations = localizationService.getTranslations();

// Available: 'en', 'ta'
```

---

## 🔧 Common Development Tasks

### Add New Page

```typescript
// 1. Create file: src/pages/NewPage.tsx
import React from "react";
import Card from "../components/Card";
import "../styles/index.css";

interface Props {
  onBack: () => void;
}

const NewPage: React.FC<Props> = ({ onBack }) => {
  return (
    <div className="feature-page">
      <header className="app-header">
        <button className="btn link back-btn" onClick={onBack}>← Back</button>
        <h1 className="app-title">Page Title</h1>
      </header>
      <main className="page-content">
        <Card title="Title">
          {/* Content */}
        </Card>
      </main>
    </div>
  );
};

export default NewPage;

// 2. Add to App.tsx routing
// 3. Add to Dashboard navigation
```

### Add New Service

```typescript
// 1. Create file: src/services/newService.ts
class NewService {
  async initialize() {
    // Initialization logic
  }

  async getData() {
    // Data fetching
    return {};
  }
}

const newServiceInstance = new NewService();
export default newServiceInstance;

// 2. Import in component
import newService from "../services/newService";

// 3. Use in component
useEffect(() => {
  const data = newService.getData();
}, []);
```

### Add Styling

```css
/* Global in src/styles/index.css */
.my-class {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 1rem;
}

/* Responsive */
@media (max-width: 768px) {
  .my-class {
    padding: 0.5rem;
  }
}
```

---

## 🐛 Debugging Tips

### React DevTools

```bash
# Chrome/Firefox extension
- Inspect component hierarchy
- Check state values
- Trace renders
```

### Console Logging

```typescript
// Component
console.log("State:", state);

// Service
console.log("Data:", data);

// Performance
console.time("operation");
// code...
console.timeEnd("operation");
```

### TypeScript Errors

```bash
# Check types
npx tsc --noEmit

# Show all errors
npm run build
```

### Network Debugging

```bash
# DevTools Network tab
# Check API calls
# Monitor size/timing
# Check service worker
```

---

## 🎨 Styling Guide

### Color Scheme

```css
/* Primary Colors */
--primary: #667eea
--secondary: #764ba2

/* Status Colors */
--success: #4CAF50
--warning: #FFB300
--danger: #E0245E
--error: #F7630C

/* Neutral */
--text-dark: #333
--text-light: #999
--bg-light: #f9f9f9
--border: #ddd
```

### Typography

```css
/* Font Stack */
font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto;

/* Sizes */
h1: 2rem
h2: 1.5rem
h3: 1.25rem
body: 1rem
small: 0.875rem
```

### Spacing

```css
/* Padding/Margin Scale */
0: 0
0.5: 0.5rem (8px)
1: 1rem (16px)
1.5: 1.5rem (24px)
2: 2rem (32px)
3: 3rem (48px)
4: 4rem (64px)
```

---

## 🔐 Environment Variables

```bash
# .env or environment setup
REACT_APP_API_URL=http://localhost:5000/api
REACT_APP_ENV=development
REACT_APP_VERSION=2.0
REACT_APP_LANGUAGE=en
```

---

## 📊 Performance Checklist

```
✅ Bundle Size < 150 KB
✅ Initial Load < 3 seconds
✅ Time to Interactive < 5 seconds
✅ Lighthouse Score > 90
✅ Mobile Friendly
✅ Accessibility (WCAG 2.1)
✅ Security Headers
✅ PWA Support
```

---

## 🚀 Deployment Checklist

### Before Production

```
□ Run npm run build
□ Test in production mode
□ Check console for errors
□ Verify all features work
□ Test on mobile
□ Check offline functionality
□ Validate accessibility
□ Performance testing
□ Security audit
□ Update version number
□ Update documentation
```

### Deployment Steps

```bash
# 1. Build
npm run build

# 2. Test build locally
npx serve -s build

# 3. Deploy to hosting
# (Choose your platform)

# 4. Monitor
# Check logs
# Monitor errors
# Track performance
```

---

## 📱 APK Build Checklist

```bash
# Prerequisites
□ Android SDK installed
□ Java JDK installed
□ Gradle configured
□ Capacitor installed

# Build steps
npm run build
npx cap add android
npx cap copy android
cd android
./gradlew.bat assembleRelease

# Output
Output: android/app/build/outputs/apk/release/
File: app-release-unsigned.apk (3.48 MB)

# For Play Store
□ Sign APK with keystore
□ Optimize assets
□ Prepare store listing
□ Submit for review
```

---

## 🔗 Important Links

### Documentation
- [React Docs](https://react.dev)
- [TypeScript](https://www.typescriptlang.org)
- [Leaflet](https://leafletjs.com)
- [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Speech_API)

### Tools
- [GitHub](https://github.com)
- [npm](https://npmjs.com)
- [Chrome DevTools](https://developer.chrome.com/docs/devtools/)
- [Postman](https://postman.com)

### Resources
- [MDN Web Docs](https://developer.mozilla.org)
- [Can I Use](https://caniuse.com)
- [CSS-Tricks](https://css-tricks.com)
- [Dev.to](https://dev.to)

---

## 🎓 Learning Resources

### For React
- Official React Tutorial
- React Hooks Guide
- Component Patterns
- State Management

### For TypeScript
- TypeScript Handbook
- Type System Guide
- Advanced Types
- Best Practices

### For Web APIs
- MDN Web APIs
- Browser Compatibility
- Feature Detection
- Polyfills

---

## ❓ FAQ

**Q: How do I enable voice on my device?**
A: Grant microphone permission when prompted. Voice works in modern browsers.

**Q: Can I use this offline?**
A: Yes! Service workers enable offline functionality. Download maps first.

**Q: How do I change language?**
A: Use language switcher in voice assistant or settings. Currently: English, Tamil.

**Q: Where is my location data stored?**
A: Only in browser LocalStorage. Never sent to external servers.

**Q: How do I update the app?**
A: Update web version automatically. For APK, download new version.

**Q: Can I contribute?**
A: Yes! Check GitHub for contribution guidelines.

---

## 📞 Support

### Getting Help

```
Bug Report: GitHub Issues
Feature Request: GitHub Discussions
Questions: Documentation or GitHub
Emergency: Local authorities
```

### Contact

```
Email: dev@floodsafety.local
GitHub: flood-safety-assistant
Issues: github.com/issues
```

---

## 📝 License

MIT License - Free to use, modify, distribute

---

**Last Updated:** January 3, 2026  
**Version:** 2.0  
**Status:** Production Ready
