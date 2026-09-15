import { useEffect } from "react";
import { Link } from "react-router-dom";
import { Footer } from "../components/Footer";
import { ProjectLinks } from "../components/ProjectLinks";
import { ScreenshotGallery } from "../components/ScreenshotGallery";
import { Navbar } from "../components/Navbar";
import { projects } from "../data/projects";

const experience = [
  {
    period: "Apr 2025 — Dec 2025",
    role: "Mobile Engineer",
    company: "PT Maxon Prime Technology",
    detail:
      "Mobile engineer who designed and developed a production-ready Flutter application from scratch, handling the full lifecycle from architecture to deployment. Implemented complex filtering and engineering calculation logic to improve industrial pump selection accuracy for clients.",
  },
  {
    period: "Mar 2024 — Dec 2024",
    role: "Full-Stack Mobile Engineer",
    company: "PT Fusi Solusi Transformasi",
    detail:
      "Designed and developed internal enterprise applications used by 200+ employees for invoice tracking, using scalable Clean Architecture principles. Collaborated with cross-functional teams to deliver solutions aligned with business and operational goals.",
  },
  {
    period: "Jul 2020 — Sep 2023",
    role: "Mobile Engineer",
    company: "Badan Wakaf AlQuran",
    detail:
      "Developed and deployed a donation campaign mobile application serving 10,000+ users while leading a team of 3 mobile engineers. Improved application stability by reducing bugs by 40% through architecture refactoring and enhanced internal operations by revamping an attendance system used by 300+ employees.",
  },
  {
    period: "Jan 2020 — Jun 2020",
    role: "Android Developer",
    company: "PT Amanah Karya Indonesia",
    detail:
      "Introduced workflow improvements that increased employee efficiency by 20% and refactored 10,000+ lines of legacy code to improve maintainability by 25%. Also released a mobile application on the Google Play Store, achieving 1,000+ downloads.",
  },
];

const skills = [
  "Flutter",
  "Dart",
  "Kotlin",
  "Java",
  "Jetpack Compose",
  "Room",
  "MVVM",
  "TypeScript",
  "JavaScript",
  "ReactJS",
  "NestJS",
  "Supabase",
  "Firebase",
  "REST API",
  "AI Integration",
];

export function HomePage() {
  useEffect(() => {
    document.title = "Zulfikar Mauludin — Mobile Engineer";
  }, []);
  return (
    <main>
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
              Explore my work <span>↗</span>
            </a>
            <a
              className="text-link"
              href="https://github.com/zuludin04"
              target="_blank"
              rel="noreferrer"
            >
              GitHub <span>↗</span>
            </a>
          </div>
        </div>
        <div className="hero-note">
          <div className="note-card">
            <span className="note-label">CURRENTLY BUILDING</span>
            <strong>CaptionKilat</strong>
            <p>AI content assistant for Indonesian small businesses.</p>
            <Link to="/projects/captionkilat">
              View case study <span>↗</span>
            </Link>
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
            <a key={project.slug} href={`/projects/${project.slug}`}>
              <article
                className={`project-card ${project.featured ? "featured" : ""}`}
                key={project.slug}
              >
                <div className="project-top">
                  <span>{project.number}</span>
                  <span>{project.type}</span>
                </div>
                <ScreenshotGallery screenshots={project.screenshots} compact />
                <div className="project-body">
                  <h3>{project.name}</h3>
                  <p>{project.description}</p>
                  <div className="tag-row">
                    {project.tags.map((tag) => (
                      <span key={tag}>{tag}</span>
                    ))}
                  </div>
                  <ProjectLinks links={project.links} compact />
                </div>
              </article>
            </a>
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
            Get in touch <span>↗</span>
          </a>
          <a
            className="text-link"
            href="https://www.linkedin.com/in/zuludin/"
            target="_blank"
            rel="noreferrer"
          >
            LinkedIn <span>↗</span>
          </a>
        </div>
      </section>
    </main>
  );
}

export function HomePageWithFooter() {
  return (
    <>
      <Navbar />
      <HomePage />
      <Footer />
    </>
  );
}
