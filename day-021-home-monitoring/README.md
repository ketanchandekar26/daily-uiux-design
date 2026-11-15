# Day 021: Home Automation & Smart IoT Hub

> **Challenge Prompt**: Design and build an ambient, production-grade **Home Automation & Smart IoT Hub** featuring multi-room spatial device controls, interactive circular climate regulation, solar/Powerwall microgrid telemetry, one-tap ambient scenes, and front-door video intercom security.

---

## 🧭 Executive Summary & Design Philosophy

Smart home interfaces often suffer from the **"Balkanized Apps" syndrome**—forcing homeowners to toggle between disjointed proprietary apps for lighting, climate, locks, audio, and energy.

**AetherHome OS** is a unified ambient intelligence hub engineered around three core principles:
1. **Spatial & Mental Model Coherence**: Organizing connected hardware both by functional domains (Climate, Lighting, Security, Audio, Energy) and by physical rooms (Living Room, Master Suite, Studio, Patio).
2. **Cognitive Offloading via Scenes**: One-tap environmental presets (*Morning Glow*, *Deep Work & Studio*, *Cinema Night*, *Sleep & Guard*) that configure dozens of actuators simultaneously.
3. **Continuous System Status Transparency**: Real-time awareness of net energy production (solar inverter vs. home draw), air quality indices (AQI), and perimeter deadbolt locks.

---

## 🏡 Hub Architecture & Components

| Component | Purpose & UX Focus | Technical Architecture |
|---|---|---|
| **1. Ambient Scene Bar** | Instant whole-home reconfiguration | Preset macro triggers altering lighting Kelvin warmth, HVAC setpoints, and motorized window blinds in parallel. |
| **2. Interactive Climate Ring** | Precision dual-zone HVAC control | SVG circular arc rendering with temperature delta calculation, +/- setpoints, and Cool/Heat/Eco modes. |
| **3. Microgrid & Powerwall Hub** | Real-time energy telemetry | Live power flow monitor tracking rooftop solar generation (4.8 kW), home demand (1.9 kW), and net grid export. |
| **4. Connected Device Matrix** | Granular actuator control | Tactile toggle switches, brightness & blind position sliders, air purifier PM2.5 monitor, and multi-room audio. |
| **5. Video Doorbell Intercom** | Perimeter security & visitor management | Simulated 4K front door stream with live motion ping, two-way audio talk modal, and one-tap lock engagement. |
| **6. Relay Acoustic Engine** | Multi-sensory tactile feedback | Web Audio API synthesizer generating organic mechanical relay clicks, thermostat ticks, and metallic lock slides. |

---

## 🧠 Cognitive Psychology & Ambient UX Heuristics

### 1. Direct Manipulation (Ben Shneiderman)
* **Principle**: Users feel greater agency when controls mimic physical actions with continuous visual feedback.
* **Implementation**: Adjusting the climate thermostat updates the glowing radial arc in real time, accompanied by subtle acoustic ticks for every degree increment.

### 2. Cognitive Offloading & Macro Automation
* **Principle**: Humans possess limited executive attention. Manual multi-device adjustments create decision fatigue.
* **Implementation**: Activating *"Cinema Night"* automatically dims studio lights to 12% amber, lowers blackout blinds to 0%, sets HVAC to 69°F, and engages the Sonos surround pair in one action.

### 3. Nielsen Norman Heuristic #1: Visibility of System Status
* **Principle**: The system should always keep users informed about what is happening through timely feedback.
* **Implementation**: Persistent status indicators verify Matter/Thread mesh connectivity (28 nodes online), Powerwall battery charge (88%), and security perimeter lock status.

---

## ⚡ Technical Highlights & Frontend Architecture

### 1. Dynamic SVG Thermostat Arc Math
The climate ring calculates arc circumference stroke-dasharrays based on target temperature setpoints ($60^\circ\text{F} \text{ to } 85^\circ\text{F}$):

```javascript
// Dynamic SVG Arc calculation for circular thermostat dial
function updateThermostatDisplay() {
  const ratio = (STATE.targetTemp - 60) / 25;
  const arcLen = Math.round(ratio * 376);
  document.getElementById('thermostatArc').setAttribute('stroke-dasharray', `${arcLen} 502`);
}
```

### 2. Zero-Dependency Web Audio Acoustic Feedback
Synthesizes discrete organic hardware sounds:
- **Physical Relay Snap**: Square-wave pulse (`280Hz`) on lighting and appliance toggles.
- **Deadbolt Latch Slide**: Heavy metallic sawtooth slide (`180Hz &rarr; 90Hz`) on door lock engagement.
- **Ambient Scene Sweep**: Three-tone sine arpeggio on macro scene activation.

---

## ♿ WCAG 2.1 AA Accessibility Checklist

- [x] **High Contrast Indicators**: Readouts and state icons maintain contrast ratios exceeding 4.5:1 against dark surfaces (`#060a14`) and daylight surfaces (`#ffffff`).
- [x] **Semantic Controls**: Interactive switches use explicit `role="switch"` and `aria-checked` states.
- [x] **Keyboard Navigability**: All device cards, room filters, scene buttons, and modal dialogs are navigable via <kbd>Tab</kbd>, <kbd>Space</kbd>, and <kbd>Enter</kbd>.
- [x] **Accessible Sliders**: Brightness and blind elevation sliders include numerical text equivalents alongside range controls.

---

## 🚀 How to Run Locally

Because this project is built with vanilla HTML5, Tailwind CSS CDN, and standard Web APIs, it requires **zero installation**:

```powershell
# Open Day 021 in your default browser
Start-Process ".\day-021-home-monitoring\index.html"
```
