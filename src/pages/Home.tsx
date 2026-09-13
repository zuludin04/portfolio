const projects = [
  {
    number: "01",
    name: "CaptionKilat",
    type: "AI Content Assistant",
    description:
      "A mobile-first AI product for Indonesian small businesses to create captions, content ideas, promotions, and Reels scripts.",
    tags: ["Flutter", "NestJS", "Supabase", "Google Gen AI"],
    href: "/projects/captionkilat",
    featured: true,
    links: { web: "", google: "", apple: "", alternative: "" },
  },
  {
    number: "02",
    name: "BuQu",
    type: "Reading & Quote App",
    description:
      "An Android app for saving quotes while reading, organizing ideas, and turning notes into visual boards.",
    tags: ["Kotlin", "Jetpack Compose", "Room", "MVVM"],
    href: "#",
    links: { web: "", google: "", apple: "", alternative: "" },
  },
  {
    number: "03",
    name: "Maxon Filtration Pump",
    type: "Engineering Calculator",
    description:
      "A Flutter app built from scratch to make water pump selection faster through complex filtering and engineering calculations.",
    tags: ["Flutter", "Calculation Logic", "UX"],
    href: "#",
    links: { web: "", google: "", apple: "", alternative: "" },
  },
];

const experience = [
  {
    period: "Mar 2024 — Dec 2024",
    role: "Full-Stack Mobile Engineer",
    company: "PT Fusi Solusi Transformasi",
    detail:
      "Built an internal invoice tracking application for 200+ employees, using clean architecture and more than 10,000 lines of production code.",
  },
  {
    period: "Jul 2020 — Sep 2023",
    role: "Mobile Engineer",
    company: "Badan Wakaf AlQuran",
    detail:
      "Built and maintained mobile products used by thousands of users, including donation, attendance, scanning, and warehouse workflows.",
  },
  {
    period: "Jan 2020 — Jun 2020",
    role: "Android Developer",
    company: "PT Amanah Karya Indonesia",
    detail:
      "Developed Android applications for operational workflows and helped move manual processes into mobile experiences.",
  },
];

const skills = [
  "Flutter",
  "Dart",
  "Kotlin",
  "Java",
  "TypeScript",
  "JavaScript",
  "NestJS",
  "Supabase",
  "Firebase",
  "Jetpack Compose",
  "Room",
  "REST API",
  "AI Integration",
];

function Arrow() {
  return <span aria-hidden="true">↗</span>;
}

function ProjectLinks({
  links,
}: {
  links: { web: string; google: string; apple: string; alternative: string };
}) {
  const items = [
    ["Web", links.web],
    ["Google Play", links.google],
    ["App Store", links.apple],
    ["Alternative Store", links.alternative],
  ];

  return (
    <div className="project-links" aria-label="Project links">
      {items.map(([label, href]) =>
        href ? (
          <a key={label} href={href} target="_blank" rel="noreferrer">
            {label} <Arrow />
          </a>
        ) : (
          <span key={label} className="project-link-disabled">
            {label} <small>Coming soon</small>
          </span>
        ),
      )}
    </div>
  );
}

export default function Home() {
  return (
    <main>
      <nav className="nav shell">
        <div className="brand">
          ZM<span>.</span>
        </div>
        <div className="nav-links">
          <a href="#work">Work</a>
          <a href="#about">About</a>
          <a href="#experience">Experience</a>
          <a href="#contact">Contact</a>
        </div>
        <a className="nav-cta" href="mailto:hello@zuludin.dev">
          Let&apos;s talk <Arrow />
        </a>
      </nav>

      <section id="top" className="hero shell">
        <div className="hero-copy">
          <p className="eyebrow">MOBILE ENGINEER · FULL-STACK DEVELOPER</p>
          <h1>
            I turn ideas into <em>working products.</em>
          </h1>
          <p className="hero-lede">
            I build mobile-first experiences, backend systems, and AI-powered
            products with a strong focus on product thinking and engineering
            quality.
          </p>
          <div className="hero-actions">
            <a className="button button-dark" href="#work">
              Explore my work <Arrow />
            </a>
            <a
              className="text-link"
              href="https://github.com/zuludin04"
              target="_blank"
              rel="noreferrer"
            >
              GitHub <Arrow />
            </a>
          </div>
        </div>
        <div className="hero-note">
          <div className="note-card">
            <span className="note-label">CURRENTLY BUILDING</span>
            <strong>CaptionKilat</strong>
            <p>AI content assistant for Indonesian small businesses.</p>
            <a href="/projects/captionkilat">
              View case study <Arrow />
            </a>
          </div>
          <div className="availability">
            <span className="dot" /> Open to mobile engineering opportunities
          </div>
        </div>
      </section>

      <section className="marquee-band" aria-label="skills">
        <div className="marquee shell">
          <span>FLUTTER</span>
          <i>✦</i>
          <span>KOTLIN</span>
          <i>✦</i>
          <span>NESTJS</span>
          <i>✦</i>
          <span>AI PRODUCTS</span>
          <i>✦</i>
          <span>PRODUCT ENGINEERING</span>
          <i>✦</i>
        </div>
      </section>

      <section id="work" className="section shell">
        <div className="section-head">
          <div>
            <p className="eyebrow">SELECTED WORK</p>
            <h2>Products I&apos;ve built.</h2>
          </div>
          <p className="section-intro">
            I like projects where product decisions and engineering decisions
            have to work together.
          </p>
        </div>
        <div className="project-grid">
          {projects.map((project) => (
            <article
              className={`project-card ${project.featured ? "featured" : ""}`}
              key={project.name}
            >
              <div className="project-top">
                <span>{project.number}</span>
                <span>{project.type}</span>
              </div>
              {project.featured ? (
                <div className="caption-visual">
                  <div className="phone-frame small">
                    <img
                      src="./src/assets/images/captionkilat-home.png"
                      alt="CaptionKilat home screen"
                      style={{
                        width: "100%",
                        height: "100%",
                        objectFit: "cover",
                      }}
                    />
                  </div>
                  <div className="phone-frame small offset">
                    <img
                      src="./src/assets/images/captionkilat-result.png"
                      alt="CaptionKilat generated caption screen"
                      style={{
                        width: "100%",
                        height: "100%",
                        objectFit: "cover",
                      }}
                    />
                  </div>
                </div>
              ) : (
                <div className="project-placeholder">
                  <span>{project.name.slice(0, 2).toUpperCase()}</span>
                </div>
              )}
              <div className="project-body">
                <h3>{project.name}</h3>
                <p>{project.description}</p>
                <div className="tag-row">
                  {project.tags.map((tag) => (
                    <span key={tag}>{tag}</span>
                  ))}
                </div>
                <ProjectLinks links={project.links} />
                {project.featured ? (
                  <a className="project-link" href={project.href}>
                    Read the case study <Arrow />
                  </a>
                ) : (
                  <span className="project-link muted">
                    Case study coming soon
                  </span>
                )}
              </div>
            </article>
          ))}
        </div>
      </section>

      <section id="about" className="about-section">
        <div className="shell about-grid">
          <div>
            <p className="eyebrow">ABOUT</p>
            <h2>More than writing code.</h2>
          </div>
          <div className="about-copy">
            <p>
              I enjoy seeing an idea become a real product. My primary focus is
              mobile development, but I&apos;m comfortable working across the
              stack when a product needs it.
            </p>
            <p>
              That means thinking about the interface, application architecture,
              APIs, data, AI workflows, performance, and the small details that
              make a product feel finished.
            </p>
            <div className="about-stat">
              <strong>5+</strong>
              <span>years building software</span>
            </div>
          </div>
        </div>
      </section>

      <section id="experience" className="section shell">
        <div className="section-head">
          <div>
            <p className="eyebrow">EXPERIENCE</p>
            <h2>Where I&apos;ve worked.</h2>
          </div>
        </div>
        <div className="experience-list">
          {experience.map((item) => (
            <article
              className="experience-row"
              key={`${item.company}-${item.role}`}
            >
              <div className="experience-period">{item.period}</div>
              <div>
                <h3>{item.role}</h3>
                <p className="company">{item.company}</p>
                <p>{item.detail}</p>
              </div>
            </article>
          ))}
        </div>
      </section>

      <section className="skills-section">
        <div className="shell">
          <p className="eyebrow">TOOLBOX</p>
          <h2>Technologies I use to ship.</h2>
          <div className="skill-cloud">
            {skills.map((skill) => (
              <span key={skill}>{skill}</span>
            ))}
          </div>
        </div>
      </section>

      <section id="contact" className="contact-section shell">
        <div>
          <p className="eyebrow">CONTACT</p>
          <h2>Have a product in mind?</h2>
          <p>
            Let&apos;s talk about mobile products, engineering problems, or
            opportunities to build something useful.
          </p>
        </div>
        <div className="contact-actions">
          <a className="button button-dark" href="mailto:hello@zuludin.dev">
            Get in touch <Arrow />
          </a>
          <a
            className="text-link"
            href="https://www.linkedin.com/in/zuludin/"
            target="_blank"
            rel="noreferrer"
          >
            LinkedIn <Arrow />
          </a>
        </div>
      </section>

      <footer className="footer shell">
        <span>© {new Date().getFullYear()} Zulfikar Mauludin</span>
        <div>
          <a
            href="https://github.com/zuludin04"
            target="_blank"
            rel="noreferrer"
          >
            GitHub
          </a>
          <a
            href="https://www.linkedin.com/in/zuludin/"
            target="_blank"
            rel="noreferrer"
          >
            LinkedIn
          </a>
        </div>
      </footer>
    </main>
  );
}
