const sections = [
  ["01", "The problem"],
  ["02", "The product"],
  ["03", "AI experience"],
  ["04", "Architecture"],
  ["05", "Engineering challenges"],
  ["06", "Performance"],
  ["07", "Decisions"],
  ["08", "Learnings"],
];

const projectLinks = [
  ["Web", ""],
  ["Google Play", ""],
  ["App Store", ""],
  ["Alternative Store", ""],
];

function ProjectLinks() {
  return (
    <div
      className="case-project-links"
      aria-label="CaptionKilat distribution links"
    >
      {projectLinks.map(([label, href]) =>
        href ? (
          <a key={label} href={href} target="_blank" rel="noreferrer">
            {label} ↗
          </a>
        ) : (
          <span key={label} className="case-link-disabled">
            {label}
            <small>Coming soon</small>
          </span>
        ),
      )}
    </div>
  );
}

export default function CaptionKilatPage() {
  return (
    <main>
      <nav className="nav shell">
        <a className="brand" href="/">
          ZM<span>.</span>
        </a>
        <div className="nav-as">
          <a href="/#work">Work</a>
          <a href="/#about">About</a>
          <a href="/#experience">Experience</a>
        </div>
        <a className="nav-cta" href="mailto:hello@zuludin.dev">
          Let&apos;s talk ↗
        </a>
      </nav>
      <header className="case-hero shell">
        <a className="back-link" href="/">
          ← Back to portfolio
        </a>
        <p className="eyebrow">FEATURED CASE STUDY · 2026</p>
        <h1>CaptionKilat</h1>
        <p className="case-subtitle">
          AI Content Assistant for Indonesian Small Businesses
        </p>
        <p className="case-lede">
          I designed and built a mobile-first AI product that helps small
          business owners create captions, content ideas, promotions, and Reels
          scripts in minutes.
        </p>
        <div className="case-meta">
          <span>
            <b>Role</b> Product Engineer / Mobile Engineer
          </span>
          <span>
            <b>Platform</b> Flutter · Web · Android
          </span>
          <span>
            <b>Stack</b> NestJS · Supabase · Google Gen AI
          </span>
        </div>
        <ProjectLinks />
      </header>

      <section className="case-showcase shell">
        <div className="case-phone">
          <img
            src="../src/assets/images/captionkilat-home.png"
            alt="CaptionKilat home screen"
            style={{
              width: "100%",
              height: "100%",
              objectFit: "cover",
            }}
          />
        </div>
        <div className="case-phone">
          <img
            src="../src/assets/images/captionkilat-result.png"
            alt="CaptionKilat generated caption screen"
            style={{
              width: "100%",
              height: "100%",
              objectFit: "cover",
            }}
          />
        </div>
        <div className="showcase-copy">
          <span className="number-big">01</span>
          <h2>A simple flow hiding a complex system.</h2>
          <p>
            Business context → content goal → AI generation → structured result.
            The user sees a simple workflow while the backend handles context,
            prompts, validation, and provider communication.
          </p>
        </div>
      </section>

      <div className="case-layout shell">
        <aside className="case-nav">
          {sections.map(([num, label]) => (
            <a key={num} href={`#section-${num}`}>
              {num} <span>{label}</span>
            </a>
          ))}
        </aside>
        <article className="case-content">
          <section id="section-01">
            <p className="eyebrow">01 · THE PROBLEM</p>
            <h2>Creating content consistently is harder than it looks.</h2>
            <p>
              Small business owners need to maintain a social presence while
              running the business itself. Every post creates a chain of
              decisions: what to post, how to frame it, what the hook should be,
              and how to turn an idea into a Reel.
            </p>
            <p>
              I wanted to build an assistant that understands the business
              before generating content instead of behaving like a generic text
              box.
            </p>
          </section>
          <section id="section-02">
            <p className="eyebrow">02 · THE PRODUCT</p>
            <h2>Four workflows around one business context.</h2>
            <div className="feature-list">
              <div>
                <b>✍ Caption</b>
                <span>Title, caption, CTA, and hashtags.</span>
              </div>
              <div>
                <b>💡 Content Ideas</b>
                <span>Five ideas that can be turned into full content.</span>
              </div>
              <div>
                <b>🎉 Promotion</b>
                <span>
                  Promotional copy around a product, offer, or campaign.
                </span>
              </div>
              <div>
                <b>🎬 Reel Script</b>
                <span>Hooks and scene-by-scene short-form video scripts.</span>
              </div>
            </div>
          </section>
          <section id="section-03">
            <p className="eyebrow">03 · AI EXPERIENCE</p>
            <h2>AI generation should not feel like a black box.</h2>
            <p>
              Generation can take several seconds, so a generic loading
              indicator hides useful information. I designed progressive states
              that communicate what the system is doing.
            </p>
            <div className="pipeline">
              <span>Understanding business</span>
              <i>↓</i>
              <span>Crafting content</span>
              <i>↓</i>
              <span>Polishing result</span>
              <i>↓</i>
              <strong>Generated content</strong>
            </div>
          </section>
          <section id="section-04">
            <p className="eyebrow">04 · ARCHITECTURE</p>
            <h2>One backend, multiple clients.</h2>
            <p>
              The Flutter application and web client share the same NestJS
              backend and AI infrastructure. Provider-specific logic stays
              behind the API boundary.
            </p>
            <pre>{`Flutter App ──────┐
                  ├── HTTPS ──> NestJS API
Web App ──────────┘                │
                         ┌─────────┼─────────┐
                         ▼         ▼         ▼
                      Supabase   AI Layer  Storage
                                    │
                                    ▼
                              Google Gen AI`}</pre>
          </section>
          <section id="section-05">
            <p className="eyebrow">05 · ENGINEERING CHALLENGES</p>
            <h2>The interesting work was around the AI.</h2>
            <div className="challenge-grid">
              <div>
                <span>01</span>
                <h3>AI latency</h3>
                <p>
                  Used meaningful generation states and streaming to improve
                  perceived responsiveness.
                </p>
              </div>
              <div>
                <span>02</span>
                <h3>Unpredictable output</h3>
                <p>
                  Defined structured output contracts and validation before
                  rendering results.
                </p>
              </div>
              <div>
                <span>03</span>
                <h3>Business context</h3>
                <p>
                  Persisted business information and incorporated it into the
                  prompt pipeline.
                </p>
              </div>
              <div>
                <span>04</span>
                <h3>Multiple clients</h3>
                <p>
                  Centralized AI orchestration in NestJS so clients don't
                  duplicate product logic.
                </p>
              </div>
            </div>
          </section>
          <section id="section-06">
            <p className="eyebrow">06 · PERFORMANCE</p>
            <h2>Measure the wait instead of guessing.</h2>
            <p>
              A content-idea generation baseline measured approximately 9.1
              seconds for generation and 9.2 seconds for the API request, with
              424 input tokens and 588 output tokens.
            </p>
            <div className="metrics">
              <div>
                <strong>~9.1s</strong>
                <span>generation</span>
              </div>
              <div>
                <strong>~9.2s</strong>
                <span>API request</span>
              </div>
              <div>
                <strong>424</strong>
                <span>input tokens</span>
              </div>
              <div>
                <strong>588</strong>
                <span>output tokens</span>
              </div>
            </div>
          </section>
          <section id="section-07">
            <p className="eyebrow">07 · ENGINEERING DECISIONS</p>
            <h2>Technology choices followed product needs.</h2>
            <div className="decision-list">
              <div>
                <b>Flutter</b>
                <span>
                  Primary mobile client and cross-platform foundation.
                </span>
              </div>
              <div>
                <b>NestJS</b>
                <span>Business logic and AI orchestration boundary.</span>
              </div>
              <div>
                <b>Supabase</b>
                <span>
                  Authentication, database, and storage infrastructure.
                </span>
              </div>
              <div>
                <b>Google Gen AI</b>
                <span>Generative AI layer powering content workflows.</span>
              </div>
              <div>
                <b>Structured output</b>
                <span>
                  Predictable data for typed clients and reliable rendering.
                </span>
              </div>
              <div>
                <b>Streaming</b>
                <span>
                  Progressive feedback for long-running AI operations.
                </span>
              </div>
            </div>
          </section>
          <section id="section-08">
            <p className="eyebrow">08 · LEARNINGS</p>
            <h2>AI products require more than an AI API.</h2>
            <p>
              The hard part is designing the system around the model: context,
              prompts, schemas, latency, failures, UX, and validation.
            </p>
            <p>
              CaptionKilat also reinforced a broader product-engineering lesson:
              the best technical solution is not necessarily the most complex
              one. The complexity should stay behind a simple user experience.
            </p>
          </section>
        </article>
      </div>
      <section className="case-next">
        <div className="shell">
          <p className="eyebrow">NEXT</p>
          <h2>Explore the rest of the portfolio.</h2>
          <a className="button button-dark" href="/#work">
            Back to selected work ↗
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
