# Day 018: Analytics Dashboard & Data Visualizer

> **Challenge Prompt**: Design and build an enterprise-grade **Analytics Dashboard & Data Visualizer** featuring high-density telemetry, multi-series time-series charts, real-time concurrent user streams, customer acquisition funnels, and retention cohort heatmaps.

---

## 🧭 Executive Summary & Design Philosophy

Data is useless without clarity. Modern analytics dashboards often fail because of **dashboard fatigue**—cramming dozens of non-actionable charts into a chaotic canvas.

**PulseMetrics AI** is an executive-level SaaS growth intelligence dashboard designed around four core data visualization tenets:
1. **Preattentive Visual Hierarchy**: Instant distinction between primary north-star metrics (ARR, NRR, CAC Payback) and auxiliary telemetry.
2. **Sub-Second Interactive Scrubbing**: Zero-lag SVG spline crosshair interpolation that projects exact metric points and percentage deltas on hover.
3. **Continuous Real-Time Velocity**: Simulated 60fps concurrent user telemetry with live streaming sparklines and geographic cluster distribution.
4. **Actionable Diagnostic Funnels & Cohorts**: Visualizing drop-off leaks in customer onboarding and tracking 6-week cohort retention benchmarks.

---

## 📊 Core Data Visualizations

| Visualization Component | Data Modality | Technical Architecture |
|---|---|---|
| **1. Executive KPI Bento Grid** | ARR, NRR, Active Seats, CAC Payback | High-contrast geometric typography, trend indicators, and linear completion sparklines. |
| **2. Interactive Spline Time-Series** | Multi-series Revenue (MRR) vs. User Growth | Pure zero-dependency SVG cubic Bezier curve calculation (`M ... C ...`) with hover scrubbing crosshair and tooltip. |
| **3. Real-Time Telemetry Stream** | Concurrent active sessions & edge latency | Real-time jitter algorithm updating a 60-second SVG sparkline buffer every 2 seconds with pause/resume controls. |
| **4. Customer Acquisition Funnel** | 4-Stage drop-off journey | Normalized proportional progress bars, retention percentages, and AI bottleneck recommendations. |
| **5. Traffic Attribution Donut** | Organic, Direct, Dev Referrals, Ads | SVG stroke-dasharray circumference calculations with interactive slice inspection. |
| **6. Retention Cohort Heatmap** | 6-Week customer activity matrix | Color-tiered alpha opacity mapping showing user retention decay against SaaS industry medians. |

---

## 🧠 Cognitive Psychology & Graphical Perception Heuristics

### 1. Cleveland & McGill's Graphical Perception Hierarchy
* **Principle**: Human visual processing accurately interprets position along a common scale first, followed by length, slope, angle, area, and finally color saturation.
* **Implementation**: Primary revenue trends are expressed as **position along a common 2D cartesian scale** (SVG lines), while drop-offs use **bar lengths** in the acquisition funnel, reserving color for status feedback and cohort density.

### 2. Preattentive Processing & Color Semantics
* **Principle**: Humans recognize visual cues (color hue, motion, size) in less than 200 milliseconds before conscious focus begins.
* **Implementation**:
  - **Emerald Green (`#22c55e`)**: Positive expansion, ARR growth, and high-retention cohorts (&gt;75%).
  - **Cyan (`#06b6d4`)**: Active user engagement, websocket telemetry, and brand awareness.
  - **Amber (`#f59e0b`)**: Warning zones, conversion friction in stage 3, and paid acquisition expense.

### 3. Miller’s Law (Cognitive Chunking: $7 \pm 2$)
* **Principle**: Working memory holds roughly 4 to 7 items at once.
* **Implementation**: The dashboard groups information into 4 distinct modular bento panels:
  1. *Executive KPI Grid (4 North-Star Metrics)*
  2. *Revenue Spline Canvas*
  3. *Acquisition Funnel & Live Velocity*
  4. *Attribution Donut & Cohort Heatmap*

### 4. Hick's Law in Timeframe Filtering
* **Principle**: Decision time increases logarithmically with the number of choices.
* **Implementation**: Simplified 5-granularity pill selector (`24H`, `7D`, `30D`, `90D`, `1Y`) allowing immediate switching without clunky date-range calendar modals.

---

## ⚡ Technical Highlights & Frontend Architecture

### 1. Zero-Dependency Cubic Bezier Math Engine
To maintain zero external build dependencies (avoiding heavy libraries like Chart.js or D3), the spline curves are calculated dynamically using cubic Bezier control points:

```javascript
// Dynamic Bezier spline generator from raw data coordinates
function buildBezierPath(points, width, height, padY = 30) {
  const minVal = Math.min(...points) * 0.85;
  const maxVal = Math.max(...points) * 1.1;
  const stepX = width / (points.length - 1);

  // Computes control points p0, p1, p2, p3 for smooth curvature
  // Generates SVG path string: M x0 y0 C cp1x cp1y, cp2x cp2y, x1 y1 ...
}
```

### 2. Multi-Sensory Web Audio Feedback
Interactive scrubbing over the chart triggers discrete sine-wave frequency chirps proportional to metric values, while metric filters, alert configurations, and dataset exports emit harmonic confirmation chimes.

### 3. Real-Time Telemetry Simulation
The concurrent session tracker operates via a background timer simulating live WebSocket event stream pings, streaming rolling data points into the SVG live sparkline without layout shifts or memory leaks.

---

## ♿ WCAG 2.1 AA Accessibility Checklist

- [x] **Color Contrast**: All text and numeric metrics maintain a contrast ratio greater than 4.5:1 against `#0f172a` (Obsidian Dark) and `#ffffff` (Studio Light).
- [x] **Data Redundancy**: Color is never the sole indicator of state; numerical labels, percentages, and trend arrows accompany all charts.
- [x] **Keyboard Navigability**: Timeframe tabs, series toggles, and modals are fully navigable via <kbd>Tab</kbd>, <kbd>Enter</kbd>, and <kbd>Space</kbd>.
- [x] **Modal Focus Trapping**: Modals close on <kbd>Escape</kbd> and restrict focus within dialog bounds.
- [x] **Live Announcements**: Live streaming counters use `aria-live="polite"` to ensure compatibility with screen readers.

---

## 🚀 How to Run Locally

Because this project is built with vanilla HTML5, Tailwind CSS CDN, and standard Web APIs, it requires **zero installation**:

```powershell
# Open Day 018 in your default browser
Start-Process ".\day-018-analytics-dashboard\index.html"
```
