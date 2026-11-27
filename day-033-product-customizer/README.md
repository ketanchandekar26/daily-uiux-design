# Day 033: Customize Product & 3D Configurator

> **Category**: E-Commerce / 3D Product Customization / Visual Configurator  
> **Live Prototype**: [https://ketanchandekar26.github.io/daily-uiux-design/day-033-product-customizer/](https://ketanchandekar26.github.io/daily-uiux-design/day-033-product-customizer/)  
> **Local Source**: [`day-033-product-customizer/index.html`](./index.html)

---

## 1. Overview & Problem Space

High-ticket e-commerce, bespoke luxury manufacturing, and custom industrial hardware require intuitive visual configurators that balance **visual photorealism**, **real-time pricing feedback**, and **frictionless option discoverability**. Common UX pitfalls in 3D configurators include:
1. **Cluttered Option Overload**: Stacking dozens of dropdowns and material toggles in one overwhelming view.
2. **Laggy Heavy 3D Viewports**: Overweight WebGL/Three.js bundles with 50MB+ texture assets that stall on mobile browsers.
3. **Missing Spatial Context**: Lack of multi-angle views, exploded internal schematics, and personal laser engraving previews.
4. **Opaque Pricing Calculation**: Final cost surprises where add-ons hide their individual price impact until checkout.

### Objective
Design and implement the **Veloce Chrono Atelier**: a high-end luxury mechanical timepiece customizer with an interactive HTML5 Canvas 3D rendering engine, 360° mouse/touch drag orbiting, exploded movement schematic views, 5-step modular customization, real-time multi-currency pricing, and personalized caseback engraving.

---

## 2. Cognitive Psychology & UX Heuristics Applied

### A. The IKEA Effect & Endowment Effect
* **Principle**: Users place disproportionately high value on products they have personally assembled, tailored, or configured.
* **Implementation**: Allowing customers to choose case alloys, dials (Cobalt vs. Meteorite vs. Skeleton), hand finishes, strap leathers, and etch their own initials directly onto the exhibition sapphire caseback creates psychological ownership and drives conversion intent.

### B. Progressive Disclosure via Step Tabs (Hick's Law)
* **Problem**: Displaying all 25+ watch variables at once overwhelms users ($T = b \cdot \log_2(n + 1)$).
* **Implementation**: We partition customization into 5 sequential steps:
  1. `Case & Metal` $\rightarrow$ 2. `Dial & Skeleton` $\rightarrow$ 3. `Hands & Accents` $\rightarrow$ 4. `Strap & Clasp` $\rightarrow$ 5. `Laser Engraving`.
  Switching to the Engraving step automatically animates the 3D camera to the exhibition caseback view.

### C. Aesthetic-Usability Effect
* **Principle**: Users perceive aesthetically pleasing, refined interfaces as more usable and trustworthy.
* **Implementation**: Luxury horology aesthetic combining deep obsidian (`#080A0F`), warm artisan gold (`#D4AF37`), Cinzel serif typography, and tactile Web Audio feedback that feels like fine Swiss mechanical watchmaking.

### D. Exploded View Schematic & Transparency
* **Implementation**: The "Exploded View" toggle separates the sapphire crystal, ceramic bezel, skeleton dial, case body, and strap in 3D space, providing clear insight into precision craftsmanship.

---

## 3. WCAG 2.1 AA Accessibility Conformance

| Checkpoint | Requirement | Implementation in Day 033 |
|---|---|---|
| **1.3.1 Info & Relationships** | Semantic structure | Organized into logical form controls, fieldsets, and step-by-step sections with explicit ARIA attributes. |
| **1.4.3 Contrast (Minimum)** | Contrast ratio $\ge$ 4.5:1 | High-contrast gold and slate typography on deep obsidian surfaces with clear active state borders. |
| **2.1.1 Keyboard** | Full keyboard accessibility | Tab navigation across all material buttons, camera angles, exploded toggles, and modal dialogues. |
| **4.1.3 Status Messages** | Dynamic screen reader updates | `#config-announcer` (`aria-live="polite"`) verbalizes updated material selections and total pricing changes in real time. |
| **2.5.5 Target Size** | Tap targets $\ge$ 44x44px | Touch targets for camera controls, option cards, and preset buttons comply with mobile interaction bounds. |

---

## 4. Architectural & Mathematical Framework

### 3D Canvas Projection & Foreshortening
The watch renderer calculates real-time trigonometric foreshortening based on the camera orbit angle $\theta$:

$$\text{scaleX} = \max\left(0.18, |\cos(\theta)|\right)$$
$$\text{isBack} = \cos(\theta) < 0$$

- When $\cos(\theta) \ge 0$, the canvas renders the front dial, subdials, and sweeping second hand.
- When $\cos(\theta) < 0$, it renders the exhibition sapphire caseback, 24K gold automatic rotor, and custom laser-engraved inscription.
- Exploded mode introduces layer displacement vectors $\Delta y$:

$$\Delta y_{\text{strap}} = \pm 60\text{px}, \quad \Delta y_{\text{bezel}} = 30\text{px}$$

### Pricing Formula
$$\text{Total Price} = \text{Base Price} + \text{Price}_{\text{Metal}} + \text{Price}_{\text{Bezel}} + \text{Price}_{\text{Dial}} + \text{Price}_{\text{Hands}} + \text{Price}_{\text{Strap}} + \text{Price}_{\text{Engraving}}$$

---

## 5. Verification Checklist
- [x] Responsive layout verified on mobile (320px) up to 4K ultra-wide screens.
- [x] 360° mouse drag and touch orbit controls respond smoothly with zero frame drops.
- [x] Camera preset buttons (Front, 45°, Side, Caseback) snap to coordinates seamlessly.
- [x] Exploded view schematic visually offsets layers and returns on toggle.
- [x] Caseback engraving text synchronizes in real time with input and character counter.
- [x] Multi-currency switcher converts base and options across USD, CHF, EUR, GBP, and JPY.
- [x] Commission order modal generates certified serial number and itemized build sheet.
- [x] Zero external 3D engine libraries (Three.js/Babylon) required — pure vanilla Canvas 2D.
