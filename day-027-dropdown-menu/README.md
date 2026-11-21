# Day 027: Dropdown Menu & Contextual Action Suite

A desktop-grade, accessible dropdown and contextual menu design studio engineered for **Nexus UI (macOS / Linear / Figma design system standards)**. This project provides a production-ready reference architecture across 5 distinct dropdown archetypes, complete with diagonal mouse aim corridors, searchable combobox filters, multi-column mega-menus, and desktop right-click collision avoidance.

---

## 🧭 UX Strategy & Cognitive Psychology Principles

### 1. Fitts’s Law & Target Acquisition
* **The Problem**: Small, tightly packed menu rows cause cursor overshoot, misclicks, and accidental trigger activations.
* **The Solution**: 
  * Generous touch and pointer target heights (36px to 44px) with full-width clickable bounding boxes.
  * Visual leading icons paired with trailing keyboard shortcuts (`⌘N`, `⇧⌘S`, `⌥⌘H`) to accelerate recall for power users.

### 2. Hick’s Law & Information Chunking
* **Semantic Category Dividers**: Menus are segmented into distinct visual groups (`Document`, `Vector Formats`, `Design Tokens`, `Danger Zone`) rather than a long, unorganized list of actions, reducing visual scanning time.
* **Asymmetric Dominance on Destructive Actions**: Destructive actions (e.g. `Archive Project`, `Delete`) feature high-contrast rose tinting (`#F43F5E`) and isolated positioning at the bottom of the stack to prevent accidental clicks.

### 3. The Amazon Submenu Triangle & Safe Hover Aim
* **The Problem**: Moving the cursor diagonally from a parent menu item toward a cascading child submenu often crosses other menu items, prematurely collapsing the submenu.
* **The Solution**: A slight delay buffer and nested container geometry allow the cursor to traverse diagonal angles without losing submenu focus.

### 4. Viewport Collision Detection & Smart Edge Flipping
* **Canvas Context Menu**: When right-clicking near the bottom or right edge of the viewport, the menu automatically calculates `window.innerWidth` and `window.innerHeight` coordinates, flipping upward or to the left to remain fully visible without triggering page scrollbars.

### 5. Multisensory Feedback Loops & Acoustic Design
* **Menu Open Pop**: Crisp 650 Hz sine wave burst synthesized via the Web Audio API providing instant acoustic confirmation when any dropdown expands.
* **Action Trigger Chime**: Harmonic ascending chime (C5 to C6) providing positive feedback when any action is executed.

---

## 🎨 The 5 Dropdown Archetypes

| Archetype | Real-World Analog | Key Capabilities |
| :--- | :--- | :--- |
| **1. Cascading Submenu** | macOS / Figma | Multi-level nested menus (`Export Assets &rarr; SVG, PDF, Tokens`) with trailing keyboard hotkeys. |
| **2. Searchable Combobox** | Linear / Raycast | Real-time inline filter input with multi-select checkmarks, chips, and quick bulk actions. |
| **3. Mega-Menu Bento Grid** | Stripe / Apple | Multi-column layout with category icons, product descriptions, and promotional changelog banners. |
| **4. Account & Org Switcher** | Slack / GitHub | Workspace tenant switching, active avatar indicators, preferences, and secure sign-out. |
| **5. Right-Click Context Menu** | Desktop OS / Canvas | Position-aware context menu with viewport edge collision detection and layer positioning commands. |

---

## ♿ Accessibility (WCAG 2.1 AA Checklist)

| Accessibility Criterion | Implementation Strategy | Status |
| :--- | :--- | :---: |
| **WAI-ARIA Menu Roles (4.1.2)** | Full adherence to WAI-ARIA design patterns (`role="menu"`, `role="menuitem"`, `aria-haspopup`, `aria-expanded`). | ✅ Pass |
| **Keyboard Dismissal (2.1.2)** | `Escape` key immediately closes all open menus and returns focus to the trigger button. | ✅ Pass |
| **Contrast Ratios (1.4.3)** | Text colors (`#FFFFFF`, `#CBD5E1`) exceed 4.5:1 against the backdrop (`#0F1524`). | ✅ Pass |
| **Focus Indicator (2.4.7)** | Active items feature a luminous purple background gradient and left border accent (`#A78BFA`). | ✅ Pass |
| **Screen Reader Feedback (4.1.3)** | An `aria-live="polite"` element announces dropdown states and triggered actions. | ✅ Pass |

---

## 🛠️ Frontend Architecture

* **Zero Build Pipeline**: 100% pure client-side HTML5, Tailwind CSS CDN, and vanilla ES6 JavaScript.
* **Web Audio API Engine**: Synthesizes custom acoustic feedback procedurally without downloading external sound assets.
* **Collision Detection Engine**: Mathematical bounding calculations preventing off-screen menu clippings on desktop and mobile viewports.

---

## ⌨️ Keyboard Shortcuts Reference

* `Escape` — Close Active Dropdowns & Modals
* `M` — Toggle Menu Audio Chimes
* `?` — View Keyboard Shortcuts Guide
