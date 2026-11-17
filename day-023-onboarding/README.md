# Day 023: Onboarding Flow & Permissions Grant Suite

> **Challenge Prompt**: Design and build a high-converting, production-grade **Onboarding Flow & Permissions Grant Suite** featuring permission priming, live sensor calibration visualizers, simulated native OS permission dialogs, and a mobile-to-desktop viewport switcher.

---

## 🧭 Executive Summary & Design Philosophy

The moment an app requests native device permissions (Microphone, Camera, Notifications) is the most fragile moment in user activation. Applications that immediately fire unprimed system dialogs face a **60%+ denial rate**, permanently crippling core features.

**Synapse AI** implements a **Value-First Permission Priming Architecture** adhering to Apple Human Interface Guidelines (HIG) and Google Material 3 standards:
1. **Contextual Priming**: Never request a system permission without first explaining the exact tangible capability it unlocks.
2. **Progressive Micro-Steps**: Breaking setup into 4 digestible stages (Workspace Persona &rarr; Duplex Voice &rarr; Spatial Vision &rarr; Push Alerts) preventing cognitive fatigue.
3. **Graceful Opt-Outs**: Users can skip or deny non-critical permissions without breaking the onboarding journey.
4. **Authentic System Simulation**: Interactive modal mimicking native iOS dialog prompts to give users a high-fidelity mental model before making decisions.

---

## 📱 Onboarding Architecture & Flow

| Step Stage | Capability Unlocked | Interactive Visualizer |
|---|---|---|
| **1. Welcome & Persona** | Role personalization | Persona selector pills (Developer, Designer, Executive, Producer) and zero-telemetry privacy shield pledge. |
| **2. Microphone Audio** | Real-time speech reasoning & duplex conversation | Animated 8-bar audio waveform visualizer and simulated speech capture status. |
| **3. Spatial Vision** | Visual code scanning & gaze tracking | Optical viewfinder with animated laser reticle and FOV status. |
| **4. Push Alerts** | Proactive standup summaries & CI alerts | Simulated iOS lock screen notification preview with timestamp and priority badge. |
| **5. Celebration Launch** | Workspace activation | Physics-based canvas confetti burst, calibration readiness scorecard, and workspace entry button. |

---

## 🧠 Cognitive Psychology & Permission UX Heuristics

### 1. Permission Priming & The Law of Reciprocity
* **Principle**: Users willingly grant access when they understand the immediate benefit they receive in return.
* **Implementation**: The UI clearly states *"Allows Synapse AI to perform real-time speech-to-intent reasoning"* before triggering the native system dialog.

### 2. The Endowment Effect & Progressive Investment
* **Principle**: The more effort users invest into customizing their profile, the more value they perceive in the application.
* **Implementation**: Step 1 asks users to choose their workspace role, cementing a feeling of ownership before sensor access is requested.

### 3. The Zeigarnik Effect (Visual Completion Motivation)
* **Principle**: Humans feel driven to complete tasks once they see progress already achieved.
* **Implementation**: A multi-segment progress bar tracks step advancement (*Step 1 of 4 &bull; 25%* to *100%*), encouraging users to reach the finish line.

---

## ⚡ Technical Highlights & Frontend Architecture

### 1. Dual-Mode Viewport Engine
Users can toggle seamlessly between:
- **iPhone 16 Pro Glass Mockup**: High-fidelity mobile shell complete with Dynamic Island, rounded glass borders (`rounded-[44px]`), and drop shadows.
- **Expanded Desktop Canvas**: Wide bento layout optimized for tablet or desktop viewports.

### 2. Web Audio API Acoustic Feedback
Organic acoustic micro-interactions synthesize:
- **Permission Grant Chime**: Dual-frequency harmonic chime (`523Hz &rarr; 783Hz`).
- **Step Whoosh**: Rising pitch sine-wave sweep (`260Hz &rarr; 520Hz`) on step transition.
- **Victory Fanfare**: C-Major arpeggio on final celebration.

### 3. Zero-Dependency Canvas Particle Engine
Renders 90 physics-driven particles with customizable gravity, velocity, color vectors, and alpha decay without external JavaScript bundles.

---

## ♿ WCAG 2.1 AA Accessibility Checklist

- [x] **High Contrast**: Readouts and state badges maintain contrast ratios exceeding 4.5:1 against dark surfaces (`#050713`) and daylight surfaces (`#ffffff`).
- [x] **Full Keyboard Navigation**: All steps, permission buttons, back controls, and modal actions are operable via <kbd>Tab</kbd>, <kbd>Space</kbd>, and <kbd>Enter</kbd>.
- [x] **Accessible Dialog Trapping**: The native dialog modal traps focus and closes immediately on <kbd>Escape</kbd>.
- [x] **Screen Reader Support**: Step indicators announce progress via `aria-live="polite"` regions.

---

## 🚀 How to Run Locally

Because this project is built with vanilla HTML5, Tailwind CSS CDN, and standard Web APIs, it requires **zero installation**:

```powershell
# Open Day 023 in your default browser
Start-Process ".\day-023-onboarding\index.html"
```
