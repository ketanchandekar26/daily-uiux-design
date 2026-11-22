# Day 028: Contact Us & Interactive Help Center

An omnichannel customer support, ticket resolution, and live concierge experience engineered for **Synthetix Support (Cloud Infrastructure & AI Platform standards)**. This project bridges smart AI knowledge deflection, SLA status transparency, follow-the-sun world clocks, an interactive ticket generator, and an integrated live chat concierge.

---

## 🧭 UX Strategy & Cognitive Psychology Principles

### 1. Smart Knowledge Deflection & Triage (Hick’s Law)
* **The Problem**: Traditional contact forms act as "black holes" where users submit basic questions and wait days, leading to support queue congestion and user frustration.
* **The Solution**: As the user types their subject into the ticket creator, an inline knowledge base pattern-matcher instantly surfaces the top 2–3 relevant documentation articles (e.g. rate limit quotas, webhook retries, self-serve invoice PDFs). This resolves queries immediately before a ticket is ever submitted.

### 2. Transparent SLA Anchoring & Anxiety Reduction
* **The Problem**: Lack of transparency around response times causes anxiety and duplicate ticket submissions.
* **The Solution**: 
  * Explicit SLA badges by severity level (`P1 < 15m SLA`, `P2 < 2h SLA`, `P3 24h SLA`).
  * Real-time ticket status card with an assigned engineer avatar (`Alex Rivera • Lead DevOps`) and an active SLA countdown timer (`14m 22s remaining`).

### 3. Omnichannel Channel Routing (Fitts’s Law)
* Segmented into 3 distinct, high-contrast pathways based on user intent:
  1. **Live Concierge Chat**: Real-time conversational debugging.
  2. **1-on-1 Strategy Video Call**: Interactive calendar slot booking for architectural reviews.
  3. **Security & Emergency Hotline**: 24/7 toll-free dispatch numbers for critical production outages.

### 4. Follow-the-Sun Global Presence (Transparency)
* Live running world clocks for San Francisco (PST), London (GMT), and Tokyo (JST) with automated `OPEN NOW` and `ON-CALL ONLY` status pills, demonstrating 24/7 global coverage.

### 5. Multisensory Feedback Loops & Acoustic Design
* **Ticket Confirmation Chime**: Resonant two-tone ascending chime (D5 &rarr; A5) synthesized via the Web Audio API upon successful ticket submission.
* **Chat Message Pop**: Snappy 700 Hz &rarr; 450 Hz frequency drop on live chat exchanges.

---

## 🎨 Visual Design System & Aesthetics

* **Color Palette**:
  * **Obsidian Midnight (`#05070E`, `#0B0F1B`, `#101626`)**: Deep, low-glare dark backdrop engineered for developer consoles.
  * **Electric Violet (`#7C3AED`, `#A78BFA`)**: Primary support brand color symbolizing intelligence and focus.
  * **Cyber Cyan (`#06B6D4`) & Emerald (`#10B981`)**: Positive SLA metrics, active office hours, and confirmation badges.
  * **Signal Rose (`#F43F5E`) & Amber (`#F59E0B`)**: Emergency P1 hotlines and incident alert ribbons.
* **Typography**:
  * **Outfit / Space Grotesk**: Aerodynamic display typography for ticket numbers and department headers.
  * **Inter**: High-legibility sans-serif for inputs, descriptions, and chat bubbles.
  * **JetBrains Mono**: Tabular figures for SLA timers, office clocks, and ticket IDs.

---

## ♿ Accessibility (WCAG 2.1 AA Checklist)

| Accessibility Criterion | Implementation Strategy | Status |
| :--- | :--- | :---: |
| **Form Labels & Associations (3.3.2)** | Every form field features an explicit `<label for="...">` pairing. | ✅ Pass |
| **Character Counters (3.3.1)** | Real-time counter tracks input length against the 2,000-character ceiling. | ✅ Pass |
| **Color Independence (1.4.1)** | All status pills combine color with text and iconography. | ✅ Pass |
| **Contrast Ratios (1.4.3)** | High contrast text ratios exceed 4.5:1 against dark container surfaces. | ✅ Pass |
| **Screen Reader Announcer (4.1.3)** | An `aria-live="polite"` element announces ticket creations and chat drawer states. | ✅ Pass |

---

## 🛠️ Frontend Architecture

* **Zero Build Pipeline**: 100% pure client-side HTML5, Tailwind CSS CDN, and vanilla ES6 JavaScript.
* **Web Audio API Engine**: Pure procedural audio synthesis avoiding external audio asset latency.
* **Dynamic Knowledge Pattern Matcher**: Client-side regex engine analyzing subject strings without API calls.

---

## ⌨️ Keyboard Shortcuts Reference

* `C` — Toggle Floating Live Support Chat
* `M` — Toggle Audio Acoustic Chimes
* `I` — Toggle Simulated Cloud Incident Warning
* `Esc` — Close Active Modals & Chat Window
* `?` — View Keyboard Shortcuts Guide
