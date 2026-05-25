# Zulfikar Mauludin — Portfolio
**React 18 · Vite · TypeScript · CSS Modules**

No UI library. No Tailwind. Pure React with scoped CSS Modules.

---

## Quick Start

```bash
npm install
npm run dev        # http://localhost:5173
npm run build      # production build → dist/
npm run preview    # preview the production build
```

---

## Project Structure

```
src/
├── main.tsx                  # ReactDOM.createRoot
├── App.tsx                   # Composes all sections
├── index.css                 # Global CSS variables + reset
├── data/
│   └── index.ts              # All content: projects, skills, experience, contact
├── hooks/
│   └── useInView.ts          # IntersectionObserver hook for scroll animations
├── components/
│   ├── SectionLabel          # "— SECTION LABEL" with green accent line
│   ├── ImageCarousel         # Swipeable carousel (drag, dots, arrows, counter)
│   ├── ProjectCard           # Card with embedded carousel
│   └── ProjectModal          # Overlay modal with carousel + full project detail
└── sections/
    ├── Navbar                # Fixed top nav with blur backdrop
    ├── Hero                  # Full-height hero with stats grid
    ├── About                 # Bio + skills marquee (infinite scroll)
    ├── Projects              # 3-column grid of project cards
    ├── Experience            # Vertical timeline
    ├── Contact               # Link cards
    └── Footer
```

Every component has a co-located `.module.css` file — no global class leakage.

---

## Customising Your Content

All content lives in **`src/data/index.ts`**. Edit the exported arrays:

### Projects
```ts
{
  id: 6,
  slides: [
    { emoji: '📱', label: 'Main Screen', bgFrom: '#1a1c2e', bgTo: '#0d0f1a' },
    { emoji: '⚙️', label: 'Settings',   bgFrom: '#1a1c2e', bgTo: '#0d0f1a' },
  ],
  category: 'Utility · Android',
  title: 'My New App',
  desc: 'Short description...',
  tags: ['Kotlin', 'Compose'],
  features: ['Feature 1', 'Feature 2'],
  github: 'https://github.com/zuludin/my-app',
  playstore: 'https://play.google.com/...',  // or null
}
```

### Using real screenshots
Replace the emoji placeholder in `ImageCarousel.tsx`:
```tsx
// Before — emoji placeholder:
<span className={styles.emoji}>{slide.emoji}</span>

// After — real image (add imageUrl to Slide interface in data/index.ts):
<img src={slide.imageUrl} alt={slide.label} style={{ width: '100%', height: '100%', objectFit: 'cover' }} />
```

### Colors / theme
Edit the CSS variables in `src/index.css`:
```css
:root {
  --accent: #3A7D44;   /* Change this to rebrand the whole site */
  --text:   #16150F;
  --bg:     #F7F6F2;
  /* ... */
}
```

---

## Deploying

### Netlify
```bash
npm run build
# drag the dist/ folder to Netlify Drop, or connect the repo
```

### Vercel
```bash
npm i -g vercel
vercel
```

### GitHub Pages
Add to `vite.config.ts`:
```ts
export default defineConfig({
  base: '/your-repo-name/',
  plugins: [react()],
})
```
Then push to GitHub and enable Pages from the `dist` branch via GitHub Actions.
