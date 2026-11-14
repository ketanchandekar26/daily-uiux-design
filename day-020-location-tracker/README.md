# Day 020: Location Tracker & Geospatial Map Suite

> **Challenge Prompt**: Design and build an enterprise-grade **Location Tracker & Geospatial Map Suite** featuring high-density vector cartography, real-time multi-asset fleet tracking, interactive route waypoint scrubbing, geofencing telemetry, and cockpit HUD telemetry.

---

## 🧭 Executive Summary & Design Philosophy

Real-time location tracking systems frequently suffer from **telemetry overload**—bombarding dispatchers with dense numerical tables devoid of spatial intuition.

**TerraOS** is an autonomous fleet dispatch and geospatial logistics suite engineered around the concept of **Continuous Situational Awareness**:
1. **Cartographic Clarity**: High-density zero-dependency SVG vector map depicting arterial highways, coastal water bodies, downtown grids, and geofenced zones.
2. **Interactive Waypoint Scrubber**: Dispatchers can scrub along the mission route timeline (0% to 100%) to visually inspect vehicle headings, speed changes, and remaining distance.
3. **Multi-Asset Fleet Switching**: Instant transitions between **Electric Cargo Vans**, **Autonomous Cargo Drones**, and **Urban Last-Mile E-Bikes** with automatic camera re-centering.
4. **Emergency Dispatch Override**: Rapid-access modal to transmit dynamic rerouting instructions and safe shoulder stops directly to autonomous vehicle telemetry.

---

## 🗺️ Geospatial Suite Architecture & Components

| Component | Purpose & UX Focus | Technical Architecture |
|---|---|---|
| **1. Cartographic SVG Map Canvas** | Real-time vehicle visualization & geofencing | Clean vector topography, radial grid dot patterns, arterial road networks, and animated radar markers. |
| **2. Interactive Route Scrubber** | Mission timeline playback & trajectory audit | Linear interpolation across waypoint vectors computing real-time coordinates, bearing angles, and distance remaining. |
| **3. Fleet Asset Selector** | Multi-vehicle dispatch control | Reactive asset cards displaying live battery levels, ground speed, and destination ETAs. |
| **4. Cockpit Telemetry HUD** | Core telemetry diagnostics | Speedometer (MPH &bull; KM/H), compass bearing, distance remaining, and 5G-UWB latency indicators. |
| **5. Geofence & Ingestion Log** | Spatial compliance monitoring | Zone status indicators (Downtown, Harbor corridor, Highway) and real-time streaming event logs. |
| **6. Sonar Acoustic Engine** | Sensory feedback & radar pings | Web Audio API synthesizer emitting radar pings, alert alarms, and tactile clicks. |

---

## 🧠 Cognitive Psychology & Geospatial UX Heuristics

### 1. Endsley’s Model of Situational Awareness
* **Level 1 (Perception)**: Recognizing vehicle status, coordinates, and current speed through preattentive color cues (Emerald = In Transit, Amber = Last Mile, Cyan = Airborne).
* **Level 2 (Comprehension)**: Understanding vehicle position relative to geofences and traffic corridors on the vector canvas.
* **Level 3 (Projection)**: Anticipating arrival windows and potential delays via the dynamic ETA calculation and route scrubber.

### 2. Spatial Mental Models & Visual Anchoring
* **Principle**: Humans orient themselves through prominent landmarks and distinct boundaries.
* **Implementation**: The map provides prominent topological anchors (San Francisco Bay shoreline, arterial highways, and labeled geofence polygons) so dispatchers never lose their spatial bearing.

### 3. Fitts's Law in Emergency Dispatching
* **Principle**: Time required to target an action is minimized by large, high-contrast, easily acquired buttons.
* **Implementation**: The **Dispatch Override** button is rendered in high-contrast ruby red (`#e11d48`) with a prominent icon, allowing dispatchers to issue reroutes under stress in milliseconds.

---

## ⚡ Technical Highlights & Frontend Architecture

### 1. Waypoint Vector Interpolation Engine
As the user drags the route scrubber slider, the engine smoothly calculates the vehicle's position and heading angle across multiple linear segments:

```javascript
// Waypoint linear interpolation and bearing rotation calculation
function handleRouteScrub(percent) {
  const asset = STATE.assets[STATE.activeAssetIndex];
  const pts = asset.route;
  const progress = percent / 100;
  // Interpolates between (p1.x, p1.y) and (p2.x, p2.y)
  const angleDeg = (Math.atan2(dy, dx) * 180 / Math.PI) + 90;
  // Updates SVG marker position and compass arrow rotation
}
```

### 2. Zero-Dependency Web Audio Sonar Synthesizer
Provides organic micro-sensory feedback without audio files:
- **Radar Sonar Ping**: High-frequency exponential sine sweep (`1400Hz &rarr; 700Hz`) simulating submarine/radar pulses.
- **Emergency Alert Tone**: Dual-frequency square-wave pulse (`880Hz / 660Hz`) on override transmissions.
- **Haptic Click**: Sub-second triangle wave transient for unit and asset selection.

---

## ♿ WCAG 2.1 AA Accessibility Checklist

- [x] **Color Contrast**: Telemetry readouts and route labels maintain contrast ratios greater than 4.5:1 against dark obsidian surfaces (`#050a14`) and daylight surfaces (`#ffffff`).
- [x] **Non-Reliance on Color Alone**: Geofence states and speed indicators always feature text descriptions and numerical values.
- [x] **Full Keyboard Navigation**: All controls, scrubber inputs, zoom buttons, and modals are accessible via <kbd>Tab</kbd>, arrow keys, and <kbd>Enter</kbd>.
- [x] **Live Announcements**: Toast notifications and telemetry logs use `aria-live="polite"` for non-disruptive screen reader feedback.

---

## 🚀 How to Run Locally

Because this project is built with vanilla HTML5, Tailwind CSS CDN, and standard Web APIs, it requires **zero installation**:

```powershell
# Open Day 020 in your default browser
Start-Process ".\day-020-location-tracker\index.html"
```
