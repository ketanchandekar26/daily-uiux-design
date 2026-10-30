# Daily UI #007 — Settings & Permissions Modal (RBAC Engine)

> **Project Concept**: Sentinel RBAC (Enterprise Cloud Cluster Role-Based Access Control & Security Hub)  
> **Challenge Target**: Accessible Settings & Permissions Modal featuring role delegation, focus trapping, scoped API key generation, and WCAG AA compliance  
> **Prototype File**: [`day-007-settings-modal/index.html`](./index.html)

---

## 🎯 Challenge Brief
Design and engineer an enterprise-grade **Settings & Permissions Modal Dialog** for a high-security cloud infrastructure platform. The modal must resolve the high cognitive fatigue and security risks of IAM administration (privilege escalation, accidental public exposures), adhere strictly to the **W3C WAI-ARIA Dialog (Modal) Pattern**, implement comprehensive keyboard focus trapping with focus restoration, and provide real-time audit logging.

---

## 🧠 UX Strategy & Behavioral Psychology

```
+-----------------------------------------------------------------------------------+
|                        SENTINEL ENTERPRISE RBAC MODAL                             |
+-----------------------------------------------------------------------------------+
                                         |
     +-----------------------------------+-----------------------------------+
     |                                                                       |
[ Left Nav: Categorical Segregation ]               [ Right Column: Dynamic IAM Panes ]
 • Tab 1: Team Roles & RBAC Matrix                    • Instant Collaborator Invitation
 • Tab 2: Scoped API Secret Keys                      • Granular Role Mutation Dropdowns
 • Tab 3: SAML 2.0 & SSO Enforcement                  • Ephemeral Scoped API Key Generator
 • Tab 4: Immutable IAM Audit Stream                  • Toggleable FIDO2 WebAuthn & Whitelist
                                         |
                                         v
              [ Accessible Modal Shell & W3C Focus Trapping ]
                • Focus captured inside dialog (`aria-modal="true"`)
                • <Esc> key dismissal & backdrop blur exit
                • Focus restored to trigger button on dismiss
```

### 1. Principle of Least Privilege (Security UX)
* **Problem**: Over-granting Admin and Owner permissions is the leading cause of security breaches in SaaS platforms.
* **Solution**: The modal explicitly designates roles (*Owner, Admin, Developer, Viewer*) with clear visual badges. Warning callouts clearly alert users when granting destructive abilities (*"Admins can mutate infrastructure; restrict Owner role to executive leads"*).

### 2. Miller’s Law & Progressive Disclosure
* Managing an entire organization’s IAM can overwhelm administrators with dozens of raw, context-free checkboxes.
* By isolating responsibilities into **4 logical tabs** (*Team Roles, API Tokens, SSO/SAML, Audit Trail*), administrators focus on one security vector at a time.

### 3. Nielsen’s Heuristic #5: Error Prevention
* Generating a live production API key triggers a high-visibility ephemeral banner with a 1-click clipboard copy action, alerting users that secret keys cannot be displayed again after modal dismissal.
* Destructive actions (e.g. revoking team members or active keys) trigger explicit confirmation dialogues.

---

## ♿ Accessibility (WCAG 2.1 AA Checklist)

| Criterion | Implementation | Status |
| :--- | :--- | :---: |
| **WAI-ARIA Dialog Pattern (4.1.2)** | Implemented with `role="dialog"`, `aria-modal="true"`, `aria-labelledby="modal-title"`, and `aria-describedby="modal-desc"`. | ✅ Verified |
| **Focus Trapping (2.1.2)** | Focus is constrained strictly within the modal container while open; `Tab` and `Shift+Tab` cycle through modal elements only. | ✅ Verified |
| **Focus Restoration (2.4.3)** | Dismissing the dialog immediately returns focus to the initiating trigger button. | ✅ Verified |
| **Keyboard Dismissal (2.1.1)** | Pressing <kbd>Esc</kbd> or clicking the backdrop gracefully exits the modal. | ✅ Verified |
| **Color Contrast (1.4.3)** | High contrast ratio ($> 5.2:1$) across all typography and interactive controls against dark glass panels. | ✅ Verified |

---

## 💻 Frontend Engineering Highlights
1. **W3C Standard Focus Trap Engine**: Custom cycle detection prevents keyboard focus from escaping into the hidden host document.
2. **Stateful Audit Logger**: Every role mutation, collaborator invitation, and API key generation dispatches an event to the live immutable audit trail.
3. **Keyboard Quick-Trigger**: Press <kbd>P</kbd> or <kbd>Space</kbd> anywhere on the host dashboard to immediately invoke the modal.
4. **Zero-Build Architecture**: 100% self-contained HTML5 with Tailwind CSS CDN and Lucide Icons.
