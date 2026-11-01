# Daily UI #009 — Spatial Audio & Media Player Deck

> **Project Concept**: Aura Soundwave (High-Fidelity Lossless Media Deck & Spatial Audio Synthesizer)  
> **Challenge Target**: Immersive, tactile music player featuring Web Audio API harmonic synthesis, real-time 32-band canvas spectrum visualizer, interactive synced lyrics seeking, and WCAG AA compliance  
> **Prototype File**: [`day-009-music-player/index.html`](./index.html)

---

## 🎯 Challenge Brief
Design and build a world-class, immersive **Music / Media Player & Spatial Audio Interface**. The application must eliminate user friction in scrub navigation and playlist queuing, synthesize real client-side audible audio through the **Web Audio API** without brittle third-party MP3 dependencies, render responsive 60FPS frequency spectrums, provide direct manipulation lyrics seeking, and satisfy WCAG 2.1 AA accessibility guidelines.

---

## 🧠 UX Strategy & Behavioral Psychology

```
+-----------------------------------------------------------------------------------+
|                        AURA SOUNDWAVE MEDIA DECK ARCHITECTURE                     |
+-----------------------------------------------------------------------------------+
                                         |
     +-----------------------------------+-----------------------------------+
     |                                                                       |
[ Left Column: Tactile Hardware Deck ]               [ Right Column: Audio Intelligence ]
 • Spinning Vinyl Disc with 3D Cover Tilt             • Real-time 32-band Canvas Spectrum
 • Lossless FLAC Stream Status (24-bit/96kHz)         • Interactive Synced Karaoke Lyrics
 • Spatial Audio Profile (Stereo/Spatial/Hall)        • Direct Time-Seeking verse jumpers
                                         |
                                         v
              [ Fitts's Law Optimized Transport Cluster ]
                • Primary Play/Pause Target (>= 64x64px)
                • High-precision time scrubber with hover feedback
                • Global Keyboard Transport Shortcuts
```

### 1. Fitts’s Law & Ergonomic Transport Clustering
* **Problem**: Tiny, scattered transport controls cause frequent miss-clicks on mobile and desktop viewports alike.
* **Solution**: The central Play/Pause CTA measures a generous $64 \times 64\text{px}$ adorned with a luminous radiant gradient, accompanied by logically grouped secondary actions (Rewind 10s, Fast-Forward 10s, Volume).

### 2. Auditory-Visual Synesthesia (Real-Time 60FPS Spectrum)
* Bridges sensory channels by mirroring audio rhythm into real-time canvas frequency bars with neon reactive glows.
* Spinning vinyl disc smoothly accelerates upon playback and halts gracefully upon pause.

### 3. Direct Manipulation & Progressive Disclosure (Synced Lyrics)
* Rather than passive scrolling text, lyrics act as an interactive scrub interface. Clicking any lyric line immediately jumps playback to that exact verse timestamp.
* Playlist queue and lyrics live in collapsible, focused drawers to prevent visual noise on the primary playback deck.

---

## ♿ Accessibility (WCAG 2.1 AA Checklist)

| Criterion | Implementation | Status |
| :--- | :--- | :---: |
| **Keyboard Operability (2.1.1)** | Global keyboard shortcuts: <kbd>Space</kbd> (Play/Pause), <kbd>&larr;</kbd>/<kbd>&rarr;</kbd> (Seek $\pm 5\text{s}$), <kbd>&uarr;</kbd>/<kbd>&darr;</kbd> (Volume $\pm 10\%$), <kbd>M</kbd> (Mute), <kbd>L</kbd> (Lyrics). | ✅ Verified |
| **Dynamic Announcements (4.1.3)** | Screen readers receive instant vocal alerts on track changes via `aria-live="polite"`. | ✅ Verified |
| **Color Contrast (1.4.3)** | Metadata labels, time stamps, and scrubber tracks exceed $5.2:1$ contrast against dark surfaces. | ✅ Verified |
| **Non-Text Contrast (1.4.11)** | High-visibility focus indicators on all scrubbers and buttons (`focus:ring-2 focus:ring-brand-500`). | ✅ Verified |

---

## 💻 Frontend Engineering Highlights
1. **Web Audio API Harmonic Synthesizer**: Generates genuine polyphonic chord harmonies client-side (oscillators in perfect fifth intervals) linked directly to the play state and volume levels.
2. **HTML5 Canvas Frequency Visualizer**: Computes real-time dynamic sinusoidal waveforms across 32 individual frequency bars with vertical linear gradients.
3. **Reactive Ambient Background Lighting**: Deep ambient glow orbs automatically adapt their color temperature to match the current album artwork palette.
4. **Zero-Build Architecture**: 100% self-contained HTML5 with Tailwind CSS CDN and Lucide Icons.
