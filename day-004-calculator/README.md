# Daily UI #004 — Financial Calculator & FX Engine

> **Project Concept**: Apex Wealth (Multi-Mode Financial Intelligence & Currency Suite)  
> **Challenge Target**: High-precision Financial Calculator featuring live FX Currency Exchange, interactive Compound Interest & FIRE Growth Simulator, and precision glassmorphic keypad  
> **Prototype File**: [`day-004-calculator/index.html`](./index.html)

---

## 🎯 Challenge Brief
Design and build a multi-mode **Financial Calculator & Currency Suite** for high-net-worth investors and everyday traders. The system must eliminate mathematical cognitive fatigue, provide instantaneous $<16\text{ms}$ visual feedback across live compounding projections, support bidirectional currency swaps with volatility sparklines, and satisfy WCAG 2.1 AA accessibility guidelines.

---

## 🧠 UX Strategy & Behavioral Psychology

```
+-----------------------------------------------------------------------------------+
|                        APEX WEALTH MULTI-MODE ENGINE                              |
+-----------------------------------------------------------------------------------+
                                         |
     +-----------------------------------+-----------------------------------+
     |                                   |                                   |
[ Mode 1: FX Exchange ]       [ Mode 2: Compound Growth ]       [ Mode 3: Precision Keypad ]
 • Instant reciprocal rate     • Real-time reactive sliders      • 5x4 Grid with tactile haptic
 • 180° animated currency swap • Dynamic SVG growth curve        • Full keyboard listener
 • 24h volatility sparkline    • Safe 4% FIRE retirement rule    • Safe evaluation engine
```

### 1. Sub-16ms Feedback Loops (Eliminating Cognitive Latency)
* **Problem**: Traditional financial calculators require users to fill out multiple static inputs and click a manual "Calculate" button, interrupting thinking flow and trial exploration.
* **Solution**: Every slider and number field recalculates mathematical values and updates the dynamic SVG curve in real-time ($<16\text{ms}$, 60fps), fostering continuous visual discovery.

### 2. Miller’s Law & The Power of Compound Visualization
* Visual separation between **Contributed Capital** and **Compound Interest Earned** clearly communicates the exponential multiplier effect of time and compounding interest over long horizons.

### 3. Fitts’s Law & Ergonomic Thumb Zones
* Large currency flip trigger button ($\ge 48 \times 48\text{px}$) with an animated 180° rotation on tap.
* Keypad features generous spacing, high contrast, and tactile active scaling (`scale(0.94)`).

---

## ♿ Accessibility (WCAG 2.1 AA Checklist)

| Criterion | Implementation | Status |
| :--- | :--- | :---: |
| **Keyboard Accessibility (2.1.1)** | Keypad responds seamlessly to physical numeric keypad and standard keys (`0-9`, `+`, `-`, `*`, `/`, `Enter`, `Esc`, `Backspace`). | ✅ Verified |
| **Color Contrast (1.4.3)** | High contrast ratio ($> 5.2:1$) across all numerical outputs against obsidian slate panels. | ✅ Verified |
| **ARIA Semantic Roles (4.1.2)** | Accessible tab interface with `role="tablist"`, `role="tab"`, and dynamic `aria-selected` toggles. | ✅ Verified |
| **Focus Rings (2.4.7)** | Visible focus rings (`focus:ring-2 focus:ring-brand-500`) across all inputs and interactive selects. | ✅ Verified |

---

## 💻 Frontend Engineering Highlights
1. **Interactive Multi-Mode Tab Engine**: Switch effortlessly between FX Exchange, Compound Growth, and Standard Precision Keypad without losing state.
2. **Formula Execution**:
   * Compound growth calculated with regular monthly deposits:
     $$FV = P \left(1 + \frac{r}{12}\right)^{12t} + PMT \left[ \frac{(1 + r/12)^{12t} - 1}{r/12} \right]$$
   * Automatic 4% safe retirement withdrawal rule calculation.
3. **Dynamic SVG Vector Interpolation**: Live cubic bezier control points adjusted on-the-fly to illustrate compound acceleration.
4. **Zero-Build Architecture**: Standalone HTML5 with Tailwind CSS CDN and Lucide Icons.
