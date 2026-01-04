# 🌊 Flood Safety Voice Assistant

A comprehensive offline-first voice and text-based assistant application designed to provide critical guidance and recommendations during flood emergencies.

# Video link of the prototype

https://drive.google.com/file/d/1-dI7Rwx7BJO5ARsxe8TnVzXi-jIV7MU3/view?usp=drivesdk

## Features

✅ **Voice Input/Output** - Ask questions and receive voice responses using Web Speech API  
✅ **Text Support** - Type questions for accessibility  
✅ **Offline Functionality** - Works completely offline with PWA technology  
✅ **Real-time Transcription** - Live speech-to-text conversion  
✅ **Emergency Detection** - Automatically identifies and prioritizes emergency situations  
✅ **Comprehensive Database** - Flood safety FAQs, recommendations, and emergency contacts  
✅ **Multi-tab Interface** - Safety tips, emergency contacts, flood facts  
✅ **Responsive Design** - Works on desktop, tablet, and mobile devices  
✅ **No Internet Required** - Service Worker enables offline operation  

## Tech Stack

- **Frontend**: React 18 with TypeScript
- **Voice API**: Web Speech API (SpeechRecognition, SpeechSynthesis)
- **Styling**: CSS3 with responsive design
- **Backend**: Express.js (optional, for API endpoints)
- **PWA**: Service Worker for offline support
- **Database**: JSON-based offline knowledge base

## Project Structure

```
app_flood/
├── src/
│   ├── components/           # React components
│   │   ├── VoiceAssistant.tsx    # Main voice assistant component
│   │   └── InfoPanel.tsx         # Information panel with tabs
│   ├── services/             # Business logic
│   │   ├── voiceService.ts       # Speech recognition & synthesis
│   │   └── aiService.ts          # Query processing & responses
│   ├── data/
│   │   └── floodDatabase.ts      # Flood knowledge base (FAQs, recommendations)
│   ├── styles/               # CSS files
│   │   ├── index.css
│   │   ├── VoiceAssistant.css
│   │   └── InfoPanel.css
│   ├── App.tsx               # Main app component
│   └── index.tsx             # Entry point
├── public/
│   ├── index.html            # HTML template
│   ├── manifest.json         # PWA manifest
│   └── service-worker.js     # Service worker for offline support
├── server/
│   └── index.js              # Express server (optional)
├── package.json              # Dependencies and scripts
├── tsconfig.json             # TypeScript configuration
└── README.md                 # This file
```

## Installation

### Prerequisites
- Node.js (v14 or higher)
- npm or yarn

### Setup Steps

1. **Clone/Navigate to the project**
```bash
cd c:\Users\Sweta\ Sri\Desktop\app_flood
```

2. **Install dependencies**
```bash
npm install
```

3. **Start development server**
```bash
npm start
```

The app will open at `http://localhost:3000`

## Usage

### Voice Input
1. Click **"🎤 Start Listening"** button
2. Speak your question clearly
3. The app transcribes and processes your query
4. Receive voice response via text-to-speech

### Text Input
1. Type your question in the text field
2. Press **Send** or Enter
3. Receive both text and voice response

### Example Questions
- "What should I do during a flood?"
- "Is it safe to drive through flooded roads?"
- "How do I prepare my home for flooding?"
- "What should I keep in an emergency kit?"
- "I need help! There's water rising in my house!"

## Features in Detail

### Voice Recognition
- Continuous speech recognition with interim results
- Automatic language detection (US English default)
- Error handling for microphone issues
- Support for long-form speech input

### Text-to-Speech
- Natural-sounding voice response
- Adjustable rate, pitch, and volume
- Multiple voice options
- Fallback for browsers without TTS support

### Emergency Response
- Automatic detection of emergency keywords
- Priority escalation for critical situations
- Direct emergency contact information
- Clear action-oriented guidance

### Knowledge Base
- 10+ frequently asked questions
- 8 recommendation categories
- Emergency contact database
- Flood safety facts and tips

### Offline Support
- Service Worker caching
- PWA manifest for app-like experience
- Works without internet connection
- Data persists locally

## Building for Production

```bash
npm run build
```

Creates an optimized build in the `build/` folder.

### Running Production Build Locally

```bash
npm run server
```

The Express server serves the built app on `http://localhost:5000`

## API Endpoints (Optional Server)

If using the Express backend:

- `GET /api/health` - Server health check
- `GET /api/faqs` - Get all FAQs
- `GET /api/faqs/:id` - Get specific FAQ
- `GET /api/recommendations` - Get all recommendations
- `POST /api/query` - Process a user query

## Browser Support

| Browser | Support |
|---------|---------|
| Chrome  | ✅ Full |
| Firefox | ✅ Full |
| Safari  | ✅ Full |
| Edge    | ✅ Full |
| Mobile  | ✅ Full |

**Note**: Speech Recognition and Synthesis APIs work best on modern browsers. Check [caniuse.com](https://caniuse.com) for detailed support.

## Accessibility Features

- Keyboard navigation support
- Clear visual feedback
- ARIA labels on interactive elements
- High contrast colors
- Text alternatives for voice features

## Performance Optimizations

- Lazy loading of components
- Optimized CSS animations
- Minimal bundle size (~200KB gzipped)
- Service Worker caching strategy
- Efficient message rendering

## Known Limitations

1. **Speech Recognition**: 
   - Requires microphone permissions
   - Works best in quiet environments
   - Currently supports English (can be extended)

2. **Browser Compatibility**:
   - Older browsers may not support Speech APIs
   - Fallback to text-only mode available

3. **Offline Mode**:
   - Limited to pre-cached data
   - No real-time information updates

## Future Enhancements

- [ ] Multi-language support
- [ ] Location-based recommendations
- [ ] Real-time weather/flood alerts integration
- [ ] Voice command shortcuts
- [ ] Chat history persistence
- [ ] Mobile app versions (iOS/Android)
- [ ] Machine learning for better query matching
- [ ] Community feedback system

## Troubleshooting

### Microphone Not Working
- Check browser permissions
- Ensure no other app is using the microphone
- Try a different browser
- Restart the browser

### Voice Not Playing
- Check system volume
- Enable audio output
- Check browser TTS settings
- Try reloading the page

### App Not Working Offline
- Ensure Service Worker is registered
- Check DevTools > Application > Service Workers
- Clear cache and reinstall
- Use HTTPS in production (Service Workers require HTTPS)

## Privacy & Data

- **No data collection**: The app works entirely client-side
- **No cloud storage**: All data stored locally in your browser
- **No tracking**: No analytics or telemetry
- **Open source**: Full transparency on how data is processed

## Contributing

Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

This project is open source and available under the MIT License.

## Emergency Resources

**In Case of Actual Emergency:**
- Call 911 (US Emergency Services)
- Contact local emergency management
- Listen to local news and official broadcasts
- Visit [fema.gov](https://www.fema.gov) for official guidance

## Support

For questions or issues:
1. Check the troubleshooting section
2. Review the code comments
3. Create an issue on GitHub
4. Contact the development team

---

**Stay Safe During Floods** 🌊

Remember: This app is a supplement to official emergency guidance. Always follow instructions from local authorities and emergency services.

