# Day 011: Flash Message & Toast Notification Architecture

A production-grade, accessible, and non-blocking **Toast & Flash Message Orchestration System** inspired by Radix UI, Sonner, and macOS Notification Center. Built with zero dependencies using vanilla HTML5/ES6, Tailwind CSS CDN, Lucide Icons, and the Web Audio API.

- 🌐 **Live Demo**: [https://ketanchandekar26.github.io/daily-uiux-design/day-011-flash-message/](https://ketanchandekar26.github.io/daily-uiux-design/day-011-flash-message/)
- 📅 **Challenge Series**: Daily UI/UX & Frontend Development
- 🏷️ **Category**: System Feedback / Micro-Interactions / Error Recovery

---

## 🧠 Cognitive Psychology & UX Heuristics

### 1. Alert Fatigue & Banner Blindness
Static alerts placed indiscriminately across a screen lead to sensory adaptation: users tune out visual changes.
- **The Solution**: Transient toasts placed in the peripheral field of view (bottom-right standard) that respect the primary reading saccade.
- High-severity system announcements utilize a persistent, dismissible top flash banner with high contrast (`amber-500` on `#0d111a`).

### 2. Shneiderman's 6th Heuristic: Reversible Actions (The Undo Paradigm)
Traditional destructive operations often block workflows with intrusive confirmation modals ("Are you sure you want to delete this?").
- **Implementation**: The **Undo Toast Pattern** provides an instantaneous, optimistic UI update coupled with a 5-second countdown timer. If the user clicks **Undo**, the revocation or deletion is seamlessly rolled back, removing cognitive friction.

### 3. Fitts's Law & Swipe Physics
$$T = a + b \log_2\left(1 + \frac{D}{W}\right)$$
- Toasts feature large swipe target thresholds ($>100\text{px}$) with natural velocity tracking (`touchmove` / `mousemove`), allowing rapid flick-to-dismiss actions without requiring pixel-perfect mouse clicks on a tiny close icon.

### 4. Sonner-Style 3D Depth Stacking
When multiple notifications trigger simultaneously, displaying a tall vertical stack pushes content off-screen.
- **Depth Cascade**: Up to 3 toasts collapse smoothly into a 3D deck (`scale(1)`, `scale(0.95)`, `scale(0.90)` with negative $Y$ translation).
- **Hover Expansion**: Hovering over or focusing on any toast expands the stack into a full list and automatically pauses all countdown timers.

---

## ♿ Accessibility (WCAG 2.1 AA Compliance)

| Criterion | Specification | Status |
| :--- | :--- | :---: |
| **ARIA Live Regions (4.1.3)** | Non-critical updates use `aria-live="polite"` (`role="status"`). Critical errors escalate to `aria-live="assertive"` (`role="alert"`). | ✅ Compliant |
| **Timing Adjustable (2.2.1)** | Hovering or focusing any toast halts the countdown timer, giving users with cognitive or reading impairments unlimited reading time. | ✅ Compliant |
| **Color Contrast (1.4.3)** | Text contrast exceeds **11:1** (`#ffffff` on `#0d111a`). Warning and error accents surpass AAA ratios. | ✅ Compliant |
| **Keyboard Navigation (2.1.1)** | Number keys <kbd>1</kbd>–<kbd>5</kbd> trigger test flavors; <kbd>Escape</kbd> dismisses the topmost toast. All action buttons are focusable via <kbd>Tab</kbd>. | ✅ Compliant |
| **Non-Obtrusive Audio (1.4.2)** | Synthesized chimes have a global mute toggle and respect system audio states. | ✅ Compliant |

---

## 🛠️ Frontend Architecture & Engineering Feats

1. **Native Web Audio API Synthesizer (Zero Audio Files)**:
   - Eliminates bloated MP3/WAV assets. Synthesizes pristine UI chimes directly via `AudioContext` and `OscillatorNode`:
     - **Success**: Dual-harmonic ascending sine wave ($587.33\text{Hz} \to 880\text{Hz}$).
     - **Error**: Low-frequency warning buzz ($260\text{Hz} \to 160\text{Hz}$).
     - **Warning**: Warm mid-range pulse ($440\text{Hz}$).
2. **Asynchronous Promise Lifecycle Engine**:
   - `toast.promise(asyncFn, { loading, success, error })` seamlessly orchestrates state transitions:
     $$\text{Loading (Spinner)} \longrightarrow \text{Resolved (Checkmark)} \quad\text{OR}\quad \text{Rejected (Retry Action)}$$
3. **Multi-Anchor Viewport Positioning Engine**:
   - Seamlessly repositions across 6 viewport quadrants: Top-Left, Top-Center, Top-Right, Bottom-Left, Bottom-Center, Bottom-Right without DOM reconstruction.
4. **Expandable Stack Trace Accordion**:
   - Production error toasts include a toggleable, monospace stack trace container for developer debugging.

---

## ⌨️ Keyboard Shortcuts

- <kbd>1</kbd>: Trigger Success Toast
- <kbd>2</kbd>: Trigger Error Toast (with stack trace)
- <kbd>3</kbd>: Trigger Warning Toast
- <kbd>4</kbd>: Trigger Promise Lifecycle Simulation
- <kbd>5</kbd>: Trigger Undo Action Toast
- <kbd>Esc</kbd>: Dismiss Topmost Toast

---

## 📦 How to Run Locally

Double-click `index.html` or run via terminal:

```powershell
Start-Process ".\day-011-flash-message\index.html"
```
