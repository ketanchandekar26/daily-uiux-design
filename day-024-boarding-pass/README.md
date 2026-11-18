# Day 024: Boarding Pass & Airline Travel Hub

An ultra-premium, interactive digital boarding pass and in-transit companion interface engineered for **AeroLux Airways (Flight AL-808, Tokyo Haneda HND &rarr; San Francisco SFO)**. This project bridges physical travel skeuomorphism with cutting-edge mobile pass architecture, real-time flight telemetry, and multisensory acoustic feedback.

---

## 🧭 UX Strategy & Cognitive Psychology Principles

### 1. Progressive Disclosure & Information Hierarchy (Hick’s Law)
* **The Problem**: Traditional airline passes overwhelm passengers with baggage tags, barcode strings, aircraft serials, and fare rules all on one surface, creating cognitive friction at high-stress security and boarding checkpoints.
* **The Solution**: 
  * **Front Face (Pass Core)**: Dedicated exclusively to high-urgency, immediate-need boarding variables—Flight Number, Origin/Destination (IATA 3-letter codes), Boarding Time, Gate, Seat, and Boarding Group.
  * **Back Face (Concierge Dossier)**: Secondary utility variables—checked luggage tracking tags with weight metrics, in-flight dining pre-order confirmation, Starlink Wi-Fi credentials, and airport lounge access credentials.
  * **Perforated Tear Stub**: Isolates the Aztec/2D barcode into a standalone high-contrast visual target optimized for optical gate scanners.

### 2. Jakob’s Law & The Physical Skeuomorph
* **Perforated Edge Notches**: Real-world paper boarding passes feature semi-circular notch cutouts and dotted tear lines. Replicating this digitally invokes intuitive physical mental models, allowing users to instantly understand that the stub is the active scan token.
* **Tear-Off Stub Interaction**: Allows users to interactively detach or reattach the stub, providing tactile satisfaction and simulating gate agent validation.

### 3. Fitts’s Law & Emergency Gate Turnstile Optimization
* **Primary Scanner Target**: The 2D Aztec barcode is centrally aligned and styled with a clean white background to maximize contrast against airport laser and optical scanners.
* **Screen Brightness Surge**: Built-in "Scanner Boost" toggle maximizes screen illumination and card contrast with a single tap or keyboard hotkey (`B`), preventing scanner failures caused by auto-dimming mobile screens.

### 4. Multisensory Feedback Loops & Acoustic Design
* **Airport PA Two-Tone Chime**: Synthesized via the Web Audio API using harmonic sine waves (740 Hz to 554 Hz) to herald flight stage changes and gate alerts.
* **Gate Scanner Turnstile Beep**: Dual-tone triangle frequency burst (1250 Hz &rarr; 1750 Hz) signaling successful barcode validation and turnstile clearance.
* **Card Flip & Paper Rip Synthesis**: Real-time white-noise bandpass filtering and frequency ramps to simulate realistic paper handling.

---

## 🎨 Visual Design System & Aesthetics

* **Color Palette**:
  * **Obsidian Midnight (`#060B14`, `#0B1528`)**: Deep aerospace dark mode minimizing battery drain on OLED screens.
  * **24K Champagne Gold (`#E5B869`, `#F5D799`)**: Luxurious metallic accents conveying First Class prestige.
  * **Aviation Emerald (`#10B981`)**: Gate status on-time, boarding active, and luggage verified.
  * **Signal Amber (`#F59E0B`)**: Real-time gate change alert and transit cautions.
  * **Pacific Sky Blue (`#0EA5E9`)**: Route progress, cruising altitude, and Wi-Fi status.
* **Typography**:
  * **Outfit / Space Grotesk**: Bold, aerodynamic display typography for airport codes (`HND`, `SFO`) and flight numbers.
  * **Inter**: Highly legible body typography for passenger names and terminal waypoints.
  * **JetBrains Mono**: High-precision tabular data for timestamps, e-ticket hashes, seat numbers, and barcode data strings.
* **Dynamic Shimmer & 3D Tilt**:
  * Holographic foil overlay reacts dynamically to mouse position and device tilt, reflecting light across the First Class card face.

---

## ♿ Accessibility (WCAG 2.1 AA Checklist)

| Accessibility Criterion | Implementation Strategy | Status |
| :--- | :--- | :---: |
| **Non-Text Contrast (1.4.11)** | All UI components, flight badges, and borders exceed the 3:1 ratio against `#060B14`. | ✅ Pass |
| **Color Independence (1.4.1)** | Flight stages pair color with explicit icons, animated radar indicators, and textual status badges. | ✅ Pass |
| **Screen Reader Announcer (4.1.3)** | An `aria-live="polite"` live announcer notifies screen readers whenever gates change, seats are reassigned, or passes are flipped. | ✅ Pass |
| **Keyboard Navigability (2.1.1)** | Full keyboard hotkeys support (`F` to flip, `Space` to scan, `T` to tear, `B` to boost, `S` for seats, `M` for audio). | ✅ Pass |
| **Focus Visibility (2.4.7)** | All interactive buttons feature high-contrast focus rings and active elevation styling. | ✅ Pass |

---

## 🛠️ Frontend Architecture

* **Zero Build Pipeline**: 100% client-side HTML5, Tailwind CSS CDN, and vanilla ES6 JavaScript.
* **Vector 2D Aztec Barcode**: Generated mathematically in pure SVG without external image dependencies or API latency.
* **Web Audio API Synthesizer**: Procedural oscillator synthesis eliminating heavy audio file downloads.
* **Anti-Fraud Security Token**: Real-time client-side rolling timestamp and dynamic security hash updating every second.

---

## ⌨️ Keyboard Shortcuts Reference

* `F` — Flip Boarding Pass (Toggle Front / Back)
* `Space` — Test Airport Gate Scanner
* `T` — Tear / Reattach Perforated Boarding Stub
* `B` — Toggle Scanner Brightness Boost Mode
* `S` — Open Airbus A350-900 Cabin Seat Map
* `M` — Toggle Airport PA Chimes & Audio Synthesis
* `Esc` — Close Active Modals / Overlays
* `?` — View Hotkeys Help Guide
