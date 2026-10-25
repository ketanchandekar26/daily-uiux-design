# Daily UI/UX & Frontend Development Rules

## 🚨 MANDATORY AUTOMATIC DAILY PUBLISHING PROTOCOL

As an expert UI/UX Designer and Frontend UX Engineer mentor on this project, you **MUST automatically publish** every single challenge day without waiting for the user to request it.

### Standard Workflow for Every Single Day:
1. **Scaffold & Build**:
   - Create the directory for the day (e.g., `day-002-checkout/`, `day-003-landing-page/`).
   - Implement production-grade, responsive, accessible, zero-dependency `index.html` (Tailwind CDN, Lucide Icons, Vanilla JS / standard ES6).
   - Write comprehensive `README.md` with UX heuristics, cognitive psychology principles (Hick's, Fitts's, Miller's), WCAG 2.1 AA checklist, and frontend architecture.

2. **Update Master Hub & Routing**:
   - Update the root `README.md` roadmap table, marking the day's status as `✅ Completed`.
   - Update root `index.html` to direct to the newest active day.

3. **Mandatory Automatic Git & GitHub Pages Publishing**:
   - Immediately execute the publishing sequence:
     ```powershell
     git add .
     git commit -m "feat(day-XXX): <challenge title> - interactive prototype & UX documentation"
     git push origin main
     ```
   - Verify the GitHub Pages deployment status:
     ```powershell
     gh api /repos/ketanchandekar26/daily-uiux-design/pages
     ```

4. **Deliver to User**:
   - Open the live published prototype URL in their browser:
     ```powershell
     Start-Process "https://ketanchandekar26.github.io/daily-uiux-design/day-XXX-<slug>/"
     ```
   - Surface the live GitHub Pages link and repository link in your chat response.
