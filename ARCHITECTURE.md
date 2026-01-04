# Architecture & System Design

## System Architecture Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│                         USER INTERFACE                           │
│  ┌──────────────────────────────────────────────────────────┐   │
│  │           React Components (TSX)                         │   │
│  │  ┌──────────────────┐  ┌──────────────────────────┐    │   │
│  │  │ VoiceAssistant   │  │ InfoPanel               │    │   │
│  │  │ - Messages list  │  │ - Safety Tips           │    │   │
│  │  │ - Voice buttons  │  │ - Emergency Contacts    │    │   │
│  │  │ - Text input     │  │ - Flood Facts           │    │   │
│  │  └──────────────────┘  └──────────────────────────┘    │   │
│  └──────────────────────────────────────────────────────────┘   │
│                              │                                    │
└──────────────────────────────┼────────────────────────────────────┘
                               │
                    ┌──────────▼──────────┐
                    │  Service Layer      │
        ┌───────────┼─────────┬──────────┬──────────┐
        │           │         │          │          │
   ┌────▼───┐  ┌────▼────┐ ┌─▼──────┐ ┌─▼────────┐│
   │VoiceService   │ │ AIService  │ │Utils  │ │Helpers ││
   │- Speech Rec.  │ │- Query     │ │- Types │ │- Data  ││
   │- TTS          │ │- Matching  │ │        │ │- Util  ││
   └────────┘  └────────┘ └────────┘ └────────┘│
                                                │
        ┌───────────────────────────────────────┘
        │
┌───────▼─────────────────────────────────────┐
│         Data Layer (Offline)                │
│  ┌──────────────────────────────────────┐  │
│  │ Flood Knowledge Base (JSON)          │  │
│  │ - FAQs (10+)                         │  │
│  │ - Recommendations (8)                │  │
│  │ - Emergency Contacts                 │  │
│  │ - Flood Facts                        │  │
│  └──────────────────────────────────────┘  │
└────────────────────────────────────────────┘

        ┌──────────────────────────────┐
        │  Service Worker (Offline)    │
        │  - Resource Caching          │
        │  - Network Fallback          │
        │  - App Shell Architecture    │
        └──────────────────────────────┘
```

## Component Hierarchy

```
App
├── VoiceAssistant
│   ├── Header
│   ├── Messages Container
│   │   ├── WelcomeMessage
│   │   └── Message List
│   │       ├── UserMessage
│   │       └── AssistantMessage
│   ├── Controls Section
│   │   ├── Voice Buttons
│   │   │   ├── Start Listening
│   │   │   └── Stop Listening
│   │   ├── Text Input Form
│   │   │   ├── Input Field
│   │   │   └── Send Button
│   │   └── Status Bar
│   └── Error Message
│
└── InfoPanel
    ├── Tab Buttons
    │   ├── Safety Tips Tab
    │   ├── Emergency Contacts Tab
    │   └── Flood Facts Tab
    │
    └── Tab Content
        ├── Tips Content
        ├── Contacts Content
        └── Facts Content
```

## Data Flow Diagram

```
User speaks/types
       │
       ▼
Input Detection
       │
   ┌───┴───┐
   │       │
Voice Input  Text Input
   │         │
   │    ┌────▼─────┐
   │    │ Normalize │
   │    │ Query     │
   │    └────┬──────┘
   │         │
   └────┬────┘
        │
        ▼
Voice Service / Text Input
        │
        ▼
AI Service
│
├─ Check Emergency Keywords?
│  ├─ YES ─→ Emergency Response ──────┐
│  │                                    │
│  └─ NO ──→ Continue Processing       │
│            │                         │
│            ├─ Search FAQs            │
│            │  ├─ Found ──┐           │
│            │  └─ Not ────┤           │
│            │             │           │
│            ├─ Search Recommendations │
│            │  ├─ Found ──┤           │
│            │  └─ Not ────┤           │
│            │             │           │
│            └─ Default ───┘           │
│                │                     │
└────────────────┴─────────────────────┘
                 │
                 ▼
         Process Response
                 │
                 ├─ Generate Text
                 └─ Generate Voice
                    (Text-to-Speech)
                 │
                 ▼
         Display Response
                 │
          ┌──────┴──────┐
          ▼             ▼
      Show Text   Play Audio
```

## API Request/Response Flow

```
┌─ Browser ──────────────────────────────────────┐
│                                                │
│  GET http://localhost:3000/api/health        │
│  ────────────────────────────────────────────→ │
│                                                │
│  ← ────── {status: "OK"} ───────────────────── │
│                                                │
│  POST /api/query                              │
│  Body: {query: "flood safety"}                │
│  ────────────────────────────────────────────→ │
│                                                │
│  ← ─ {type: "faq", response: "..."} ───────── │
│                                                │
└─────────────────┬──────────────────────────────┘
                  │
                  ▼
         Express Server
         (Optional Backend)
         
         ├─ GET /api/faqs
         ├─ GET /api/faqs/:id
         ├─ GET /api/recommendations
         └─ POST /api/query
```

## State Management Flow

```
VoiceAssistant Component
│
├─ State Variables
│  ├─ messages: Message[]
│  ├─ isListening: boolean
│  ├─ isSpeaking: boolean
│  ├─ inputText: string
│  └─ error: string
│
├─ Event Handlers
│  ├─ handleStartListening()
│  ├─ handleStopListening()
│  ├─ handleTextSubmit()
│  ├─ processQuery()
│  ├─ speakResponse()
│  └─ handleStopSpeaking()
│
└─ Effects
   ├─ useEffect: Auto-scroll messages
   └─ useEffect: Recognize speech input
```

## Offline Support Strategy

```
First Visit
   │
   ├─ Service Worker installed
   │  └─ Caches essential resources
   │     ├─ index.html
   │     ├─ CSS files
   │     ├─ JS bundles
   │     └─ Assets
   │
Second+ Visits
   │
   ├─ Network Request Made
   │  │
   │  ├─ Online?
   │  │  ├─ YES → Fetch from network
   │  │  │        └─ Update cache
   │  │  │
   │  │  └─ NO → Serve from cache
   │  │         └─ Show cached version
   │  │
   │  └─ Always serve from cache
   │     for offline fallback
   │
   └─ User can use all features
      (with cached data)
```

## Security Architecture

```
┌─────────────────────────────────┐
│   Data Security Layers          │
├─────────────────────────────────┤
│                                 │
│ 1. Client-Side Only             │
│    ✓ No server-side storage     │
│    ✓ All processing local       │
│    ✓ No data transmission       │
│                                 │
│ 2. LocalStorage Encryption      │
│    ✓ Optional encryption layer  │
│    ✓ Password-protected chats   │
│                                 │
│ 3. Service Worker Security      │
│    ✓ Cache integrity checks     │
│    ✓ HTTPS enforcement (prod)   │
│                                 │
│ 4. Input Validation             │
│    ✓ XSS prevention             │
│    ✓ Sanitized queries          │
│                                 │
└─────────────────────────────────┘
```

## Performance Optimization

```
┌─────────────────────────────────┐
│   Performance Strategy          │
├─────────────────────────────────┤
│                                 │
│ Code Splitting                  │
│ └─ Lazy load components         │
│                                 │
│ Bundle Optimization             │
│ └─ Minify & compress assets     │
│                                 │
│ Caching Strategy                │
│ └─ Service Worker cache         │
│    ├─ Resources: 30 days        │
│    ├─ API: 24 hours             │
│    └─ HTML: Always fresh        │
│                                 │
│ Image Optimization              │
│ └─ SVG icons (scalable)         │
│                                 │
│ CSS Optimization                │
│ └─ Critical CSS inlined         │
│                                 │
│ JavaScript Optimization         │
│ └─ Tree shaking enabled         │
│    └─ Unused code removed       │
│                                 │
└─────────────────────────────────┘
```

## Deployment Architecture

```
Development
   │
   ├─ npm start
   │  └─ Local development server
   │     ├─ Port 3000 (React)
   │     └─ Port 5000 (API)
   │
   ├─ npm run server:dev
   │  └─ Backend with hot reload
   │
Production
   │
   ├─ npm run build
   │  └─ Optimized bundle
   │
   ├─ Option 1: Express Server
   │  └─ npm run server
   │     └─ http://localhost:5000
   │
   ├─ Option 2: Static Hosting
   │  └─ Deploy build/ folder
   │     ├─ Netlify
   │     ├─ Vercel
   │     └─ GitHub Pages
   │
   ├─ Option 3: Docker
   │  └─ Containerized app
   │     └─ Any cloud provider
   │
   ├─ Option 4: Mobile App
   │  └─ React Native wrapper
   │     ├─ iOS (App Store)
   │     └─ Android (Play Store)
```

## Knowledge Base Query Resolution

```
User Query: "What should I do during a flood?"
   │
   ▼
Tokenize & Normalize
"what|should|i|do|during|flood"
   │
   ▼
Emergency Check
Does query contain: help, danger, 911, etc?
   │
   NO → Continue to FAQ Search
   │
   ▼
FAQ Matching Algorithm
For each FAQ:
  - Calculate keyword overlap
  - Check phrase similarity
  - Score and rank
   │
   ▼
Find Best Match
"What should I do if a flood warning is issued?"
Confidence: 85%
   │
   ▼
Return FAQ Answer
"Immediately move to higher ground..."
   │
   ▼
Generate Response
- Format text
- Generate voice
- Display in UI
```

---

This modular, scalable architecture ensures:
✓ High performance
✓ Offline functionality
✓ Security and privacy
✓ Easy maintenance
✓ Future extensibility
