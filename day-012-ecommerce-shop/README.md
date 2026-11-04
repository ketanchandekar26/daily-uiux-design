# Day 012: E-Commerce Product Detail Page (PDP) & Sensory Commerce Suite

A high-conversion, production-grade **E-Commerce Product Detail Page (PDP)** for luxury spatial hardware: **AETHERIS APEX X1 Neural Audio Monitor**. Built with zero dependencies using vanilla HTML5/ES6, Tailwind CSS CDN, Lucide Icons, Canvas API, and the native Web Audio API.

- 🌐 **Live Demo**: [https://ketanchandekar26.github.io/daily-uiux-design/day-012-ecommerce-shop/](https://ketanchandekar26.github.io/daily-uiux-design/day-012-ecommerce-shop/)
- 📅 **Challenge Series**: Daily UI/UX & Frontend Development
- 🏷️ **Category**: E-Commerce / Sensory Retail / Hardware

---

## 🧠 Cognitive Psychology & Conversion Ergonomics

### 1. Anchoring & Framing Bias (Tversky & Kahneman)
- Setting an initial anchor price ($499.00) makes the discounted tier ($399.00) feel like an immediate financial surplus ($100 savings / 20% off).
- Installment framing: Dividing $399 into 4 bi-weekly payments of $99.75 with 0% APR reduces perceived transaction pain via mental accounting.

### 2. Loss Aversion & Scarcity Principle (Cialdini's Persuasion)
- Real-time stock counters (*"Only 4 Units Left in Finish"*) and countdown clocks (*"Order within 3h 42m for same-day dispatch"*) invoke loss aversion, motivating users to complete their conversion before losing guaranteed fulfillment priority.

### 3. Fitts's Law & The Persistent Sticky Conversion Bar
$$T = a + b \log_2\left(1 + \frac{D}{W}\right)$$
- As users scroll past the hero buy-box to review acoustic specifications or customer feedback, a bottom floating conversion bar automatically slides into view with zero displacement ($D = 0$), keeping the **Add to Bag** action within instantaneous reach.

### 4. Interactive Sensory Tactility & Risk Reversal
- **Zoom Loupe Lens**: Provides tactile macro texture inspection simulating physical in-store scrutiny.
- **Web Audio Chime Feedback**: Synthesizes satisfying auditory feedback on clicks and cart additions.
- **Risk Mitigation Row**: Explicit prominence for 3-Year Warranty, 45-Day In-Home Trial, and Carbon-Neutral 24-hour dispatch.

---

## ♿ Accessibility (WCAG 2.1 AA Compliance)

| Requirement | Implementation Detail | Status |
| :--- | :--- | :---: |
| **Color Contrast (1.4.3)** | High-contrast typography exceeding **10.5:1** on dark surfaces (`#e2e8f0` on `#07080c`). | ✅ Compliant |
| **Dialog Modals (1.3.1)** | Sizing guide and slide-over cart drawer use `role="dialog"`, `aria-modal="true"`, and `aria-labelledby`. | ✅ Compliant |
| **Focus Trapping & Escape (2.1.2)** | <kbd>Escape</kbd> closes open modals or drawers, returning focus to the trigger button. | ✅ Compliant |
| **Form Radios & Selection (4.1.2)** | Variant tiers use native semantic `<input type="radio">` and `<label>` pairs with programmatic checked states. | ✅ Compliant |
| **Tap Targets (2.5.5)** | All thumbnail buttons, colorway swatches, and size pills measure at least $44 \times 44\text{px}$. | ✅ Compliant |

---

## 🛠️ Frontend Architecture & Technical Feats

1. **Native Interactive Zoom Loupe**:
   - Zero external plugins. Tracks mouse coordinates over `<img id="main-product-img">` and translates the position into a scaled magnifying lens overlay.
2. **Dynamic Shopping Bag Drawer**:
   - Full reactive state management: tracks line-item quantities, dynamic driver upgrade differentials, free shipping progress bar, and promo code deduction (`APEX20`).
   - Seamless checkout pipeline: **Proceed to Checkout** connects directly to our [Day 002 Credit Card Checkout Flow](../day-002-checkout/).
3. **HTML5 Canvas Frequency Response Curve**:
   - Generates high-fidelity acoustic Harman curve baselines and custom frequency graphs smoothly on `<canvas>`.
4. **Hardware Synthesizer Audio Demo**:
   - Features an inline Web Audio API dual-oscillator acoustic synthesizer reproducing lossless test tones.

---

## 📦 How to Run Locally

```powershell
Start-Process ".\day-012-ecommerce-shop\index.html"
```
