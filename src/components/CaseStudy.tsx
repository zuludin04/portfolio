import { Fragment } from "react";
import { Link, useNavigate } from "react-router-dom";
import type { CaseSection, Project } from "../data/projects";
import { ProjectLinks } from "./ProjectLinks";
import { ScreenshotGallery } from "./ScreenshotGallery";

function Section({ section }: { section: CaseSection }) {
  return (
    <section id={`section-${section.id}`}>
      <p className="eyebrow">{section.eyebrow}</p>
      <h2>{section.title}</h2>
      {section.paragraphs?.map((paragraph) => (
        <p key={paragraph}>{paragraph}</p>
      ))}
      {section.features && (
        <div className="feature-list">
          {section.features.map((item) => (
            <div key={item.title}>
              <b>{item.title}</b>
              <span>{item.description}</span>
            </div>
          ))}
        </div>
      )}
      {section.pipeline && (
        <div className="pipeline">
          {section.pipeline.map((item, index) => (
            <Fragment key={item}>
              <span
                className={
                  index === section.pipeline!.length - 1
                    ? "pipeline-result"
                    : ""
                }
              >
                {item}
              </span>
              {index < section.pipeline!.length - 1 && <i>↓</i>}
            </Fragment>
          ))}
        </div>
      )}
      {section.code && <pre>{section.code}</pre>}
      {section.challenges && (
        <div className="challenge-grid">
          {section.challenges.map((item) => (
            <div key={item.number}>
              <span>{item.number}</span>
              <h3>{item.title}</h3>
              <p>{item.description}</p>
            </div>
          ))}
        </div>
      )}
      {section.metrics && (
        <div className="metrics">
          {section.metrics.map((item) => (
            <div key={`${item.value}-${item.label}`}>
              <strong>{item.value}</strong>
              <span>{item.label}</span>
            </div>
          ))}
        </div>
      )}
      {section.decisions && (
        <div className="decision-list">
          {section.decisions.map((item) => (
            <div key={item.title}>
              <b>{item.title}</b>
              <span>{item.description}</span>
            </div>
          ))}
        </div>
      )}
    </section>
  );
}

export function CaseStudy({
  project,
  nextProject,
}: {
  project: Project;
  nextProject?: Project;
}) {
  const navigate = useNavigate();

  const goBack = () => {
    navigate(-1);
  };

  return (
    <main>
      <header className="case-hero shell">
        <button
          className="back-link"
          style={{
            border: "none",
            background: "none",
            outline: "none",
            cursor: "pointer",
          }}
          onClick={goBack}
        >
          ← Back to portfolio
        </button>
        <p className="eyebrow">{project.caseEyebrow}</p>
        <h1>{project.name}</h1>
        <p className="case-subtitle">{project.caseTitle}</p>
        <p className="case-lede">{project.caseLede}</p>
        <div className="case-meta">
          <span>
            <b>Role</b> {project.role}
          </span>
          <span>
            <b>Platform</b> {project.platform}
          </span>
          <span>
            <b>Stack</b> {project.stack}
          </span>
        </div>
        <ProjectLinks links={project.links} />
      </header>

      <section className="case-gallery shell">
        <div className="case-gallery-copy">
          <span className="number-big">{project.number}</span>
          <h2>{project.showcaseTitle}</h2>
          <p>{project.showcaseDescription}</p>
        </div>
        <ScreenshotGallery screenshots={project.screenshots} />
      </section>

      <div className="case-layout shell">
        <aside className="case-nav">
          {project.sections.map((section) => (
            <a key={section.id} href={`#section-${section.id}`}>
              {section.eyebrow.split(" · ")[0]} <span>{section.title}</span>
            </a>
          ))}
        </aside>
        <article className="case-content">
          {project.sections.map((section) => (
            <Section section={section} key={section.id} />
          ))}
        </article>
      </div>

      <section className="case-next">
        <div className="shell">
          <p className="eyebrow">NEXT CASE STUDY</p>
          <h2>
            {nextProject
              ? `Explore ${nextProject.name}.`
              : "Explore the rest of the portfolio."}
          </h2>
          {nextProject ? (
            <Link
              className="button button-dark"
              to={`/projects/${nextProject.slug}`}
            >
              View case study ↗
            </Link>
          ) : (
            <Link className="button button-dark" to="/#work">
              Back to selected work ↗
            </Link>
          )}
        </div>
      </section>
    </main>
  );
}
