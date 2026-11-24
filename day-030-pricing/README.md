# Day 030: Dynamic Pricing Calculator & Plan Customizer

> **Category**: SaaS / AI Infrastructure / Cloud Billing / Interactive Configuration  
> **Live Prototype**: [https://ketanchandekar26.github.io/daily-uiux-design/day-030-pricing/](https://ketanchandekar26.github.io/daily-uiux-design/day-030-pricing/)  
> **Local Source**: [`day-030-pricing/index.html`](./index.html)

---

## 1. Overview & Problem Space

Enterprise software and developer-centric cloud computing platforms (such as AWS, GCP, Databricks, and AI infrastructure providers) frequently suffer from **billing opacity** and **configuration friction**. Prospective customers often encounter either:
1. **Opaque sales gates** ("Contact Sales" with zero price discoverability), or
2. **Convoluted multi-page pricing matrices** where hidden bandwidth egress costs, node multipliers, and overage fees cause decision paralysis.

### Objective
Design an intuitive, high-transparency **Dynamic Pricing Calculator & Plan Customizer** for modern hyperscale AI workloads (Inference APIs, Dedicated H100 GPU Nodes, NVMe vector storage, and enterprise governance). Users can configure sliders, observe instantaneous cost calculations across currencies, evaluate ROI benchmarks against self-hosted infrastructure, and export cryptographic enterprise quotes.

---

## 2. Cognitive Psychology & UX Heuristics

### A. Hick's Law & Progressive Disclosure
* **Problem**: Presenting 25 individual billing line items simultaneously induces high cognitive load and configuration fatigue ($T = b \cdot \log_2(n + 1)$).
* **Implementation**: We group infrastructure options into 4 primary intuitive sliders (API Invocations, Dedicated GPUs, Storage, Seats) paired with pre-configured **Workload Archetypes** ("Solo Hacker", "Seed AI Startup", "Growth Scale", "Global Enterprise"). Users can instantly set realistic baselines in 1 click, then fine-tune granular parameters.

### B. Price Anchoring & Von Restorff (Isolation) Effect
* **Implementation**: The **Growth Scale** plan is visually anchored as the optimal recommendation with an active accent border, subtle glow, and "Active Tier" badge. Contrast with the higher $999 baseline of "Enterprise Sovereign" makes the $249 base fee feel accessible and economical.

### C. Fitts's Law in Sticky Summary Rail
* **Problem**: In long single-page customizers, users lose track of the pricing total as they scroll down through technical specifications.
* **Implementation**: The right rail (`sticky top-24`) keeps the animated cost ticker, itemized line items, annual savings badge, and primary "Provision Cluster" CTA continuously within direct thumb/cursor reach.

### D. Loss Aversion & Endowment Effect in Billing Toggle
* **Implementation**: When toggling to **Annual Commitment**, an immediate dynamic banner announces *"Annual discount applied: You are saving $X/year!"* with an emerald savings pill. Highlighting the quantifiable cash forfeited by remaining on monthly billing triggers loss aversion.

### E. Acoustic Feedback & Multimodal Sensory Reinforcement
* **Implementation**: Integrated Web Audio API micro-sound synthesis:
  - **Dynamic Pitch-Shift Clicks**: Moving sliders shifts the synthesizer frequency upward (220 Hz $\rightarrow$ 880 Hz), mirroring physical analog volume dials and providing tactile confirmation.
  - **Affirmative Melodic Chimes**: Triggered upon preset activation, addon toggling, and PDF quote generation.
  - **Mute Control**: Easily toggled via the header audio control.

---

## 3. WCAG 2.1 AA Accessibility Conformance

| Checkpoint | Requirement | Implementation in Day 030 |
|---|---|---|
| **1.3.1 Info and Relationships** | Semantic structure | Semantic headings (`h1`–`h4`), fieldsets, `<label for="...">` associations for all range inputs, radio groups, and checkboxes. |
| **1.4.3 Contrast (Minimum)** | Contrast ratio $\ge$ 4.5:1 | Slate-100 text (`#F1F5F9`) on dark surface (`#0B0F19`), high-contrast indigo (`#6366F1`) and cyan (`#06B6D4`) badges. |
| **2.1.1 Keyboard** | Full keyboard navigability | Native HTML5 `<input type="range">` elements respond to Arrow keys (`Left`/`Right`, `Up`/`Down`), `Page Up`/`Page Down`, `Home`, and `End`. Modals support `Esc` key and focus containment. |
| **4.1.2 Name, Role, Value** | Screen reader accessibility | Dynamic `aria-live="polite"` announcer element (`#price-live-announcer`) broadcasts verbalized cost updates whenever sliders or toggles mutate. |
| **2.5.5 Target Size** | Touch targets $\ge$ 44x44px | Slider thumb targets styled with custom 24px thumb plus expanded hit boundaries; buttons and presets have comfortable padding. |

---

## 4. Architectural & Mathematical Framework

### Dynamic Billing Formula
The monthly billing calculation runs client-side in pure JavaScript without external server latency:

$$\text{Subtotal} = \text{TierBase} + \text{Cost}_{\text{API}} + \text{Cost}_{\text{GPU}} + \text{Cost}_{\text{Storage}} + \text{Cost}_{\text{Seats}} + \text{Cost}_{\text{SLA}} + \text{Cost}_{\text{Addons}}$$

Where:
- $\text{TierBase} \in \{\$49, \$249, \$999\}$ determined dynamically based on workload threshold.
- $\text{Cost}_{\text{API}} = \max\left(0, \frac{\text{Reqs} - \text{FreeQuota}}{1,000,000}\right) \times \$15$
- $\text{Cost}_{\text{GPU}} = N_{\text{GPU}} \times \$250$
- $\text{Cost}_{\text{Storage}} = \text{GB}_{\text{Storage}} \times \$0.08$
- $\text{Cost}_{\text{Seats}} = \max\left(0, N_{\text{Seats}} - \text{FreeSeats}\right) \times \$10$
- $\text{Discount} = \begin{cases} 0.20 \times \text{Subtotal} & \text{if Annual} \\ 0 & \text{if Monthly} \end{cases}$

$$\text{Final Monthly} = \text{Subtotal} - \text{Discount}$$
$$\text{Annualized Total} = \text{Final Monthly} \times 12$$

### Multi-Currency Conversion Matrix
```javascript
const CURRENCY_RATES = {
  USD: { symbol: '$', rate: 1.0, precision: 0 },
  EUR: { symbol: '€', rate: 0.92, precision: 0 },
  GBP: { symbol: '£', rate: 0.79, precision: 0 },
  JPY: { symbol: '¥', rate: 155.0, precision: 0 },
  INR: { symbol: '₹', rate: 83.5, precision: 0 }
};
```

---

## 5. Key Interactive Features

1. **4 Responsive Multi-Dimensional Sliders**:
   - Monthly API & Inference Calls ($100\text{k} \rightarrow 250\text{M}$)
   - Dedicated NVIDIA H100 SXM5 GPU Nodes ($0 \rightarrow 32$ nodes)
   - High-Speed NVMe Storage ($50\text{ GB} \rightarrow 10\text{ TB}$)
   - Engineering Seats & Governance ($1 \rightarrow 100$ seats)
2. **Smart Tier Auto-Recommendation**:
   - System automatically shifts recommendation badges between Developer Core, Growth Scale, and Enterprise Sovereign as volume thresholds cross production thresholds.
3. **Formal PDF Quote Generator Simulation**:
   - Modal with editable Organization, Email, and auto-generated quote reference (`EST-2026-X8819`), valid for 30 days with itemized line items.
4. **Provisioning Terminal Modal**:
   - Simulated 6-step cluster initialization sequence detailing VPC peering, GPU allocation, NVMe formatting, and Kubernetes pod launch.
5. **Billing FAQ Accordion**:
   - Accessible collapsible panel addressing burst overage policies, GPU standby scaling, and SOC2/HIPAA compliance.

---

## 6. Verification & Browser Testing Checklist
- [x] Responsive layout on 320px mobile up to 2560px ultra-wide displays.
- [x] Sliders render smoothly across WebKit, Gecko, and Blink engines.
- [x] Web Audio API handles graceful fallback when AudioContext is blocked or suspended.
- [x] Currency switcher dynamically converts all figures, line items, and modal tables.
- [x] Verified zero console errors or broken external assets.
