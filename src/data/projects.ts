export type LinkStatus = "available" | "coming-soon" | "not-available";

export type ProjectLink = {
  label: string;
  status: LinkStatus;
  url?: string;
};

export type Screenshot = {
  src: string;
  alt: string;
};

export type CaseSection = {
  id: string;
  eyebrow: string;
  title: string;
  paragraphs?: string[];
  features?: { title: string; description: string }[];
  pipeline?: string[];
  decisions?: { title: string; description: string }[];
  challenges?: { number: string; title: string; description: string }[];
  metrics?: { value: string; label: string }[];
  code?: string;
};

export type Project = {
  slug: string;
  number: string;
  name: string;
  shortName?: string;
  type: string;
  description: string;
  tags: string[];
  featured?: boolean;
  screenshots: Screenshot[];
  links: ProjectLink[];
  role: string;
  platform: string;
  stack: string;
  caseEyebrow: string;
  caseTitle: string;
  caseLede: string;
  showcaseTitle: string;
  showcaseDescription: string;
  sections: CaseSection[];
  nextSlug?: string;
};

const screenshot = (src: string, alt: string): Screenshot => ({ src, alt });

export const projects: Project[] = [
  {
    slug: "captionkilat",
    number: "01",
    name: "CaptionKilat",
    type: "AI Content Assistant",
    description:
      "A mobile-first AI product for Indonesian small businesses to create captions, content ideas, promotions, and Reels scripts.",
    tags: [
      "Flutter",
      "Riverpod",
      "NextJS",
      "NestJS",
      "Supabase",
      "Google Gen AI",
    ],
    featured: true,
    screenshots: [
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/captionkilat/ck1.png",
        "CaptionKilat home screen",
      ),
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/captionkilat/ck2.png",
        "CaptionKilat content generation screen",
      ),
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/captionkilat/ck3.png",
        "CaptionKilat generated content screen",
      ),
    ],
    links: [
      { label: "Web", status: "available", url: "https://captionkilat.my.id" },
      { label: "Google Play", status: "coming-soon" },
      { label: "App Store", status: "coming-soon" },
      {
        label: "Github",
        status: "available",
        url: "https://github.com/zuludin04/captionkilat",
      },
    ],
    role: "Product Engineer / Mobile Engineer",
    platform: "Flutter · Web · Android",
    stack: "NestJS · Supabase · Google Gen AI",
    caseEyebrow: "FEATURED CASE STUDY · 2026",
    caseTitle: "AI Content Assistant for Indonesian Small Businesses",
    caseLede:
      "I designed and built a mobile-first AI product that helps small business owners create captions, content ideas, promotions, and Reels scripts with minimal input.",
    showcaseTitle: "A simple flow hiding a complex system.",
    showcaseDescription:
      "Business context → content goal → AI generation → structured result. The user sees a simple workflow while the backend handles context, prompts, validation, and provider communication.",
    sections: [
      {
        id: "problem",
        eyebrow: "01 · THE PROBLEM",
        title: "Creating content consistently is harder than it looks.",
        paragraphs: [
          "Small business owners need to maintain a social presence while running the business itself. Every post creates a chain of decisions: what to post, how to frame it, what the hook should be, and how to turn an idea into a Reel.",
          "I wanted to build an assistant that understands the business before generating content instead of behaving like a generic text box.",
        ],
      },
      {
        id: "product",
        eyebrow: "02 · THE PRODUCT",
        title: "Four workflows around one business context.",
        features: [
          {
            title: "✍ Caption",
            description: "Title, caption, CTA, and hashtags.",
          },
          {
            title: "💡 Content Ideas",
            description: "Five ideas that can be turned into full content.",
          },
          {
            title: "🎉 Promotion",
            description:
              "Promotional copy around a product, offer, or campaign.",
          },
          {
            title: "🎬 Reel Script",
            description: "Hooks and scene-by-scene short-form video scripts.",
          },
        ],
      },
      {
        id: "ai",
        eyebrow: "03 · AI EXPERIENCE",
        title: "AI generation should not feel like a black box.",
        paragraphs: [
          "Generation can take several seconds, so a generic loading indicator hides useful information. I designed progressive states that communicate what the system is doing.",
        ],
        pipeline: [
          "Understanding business",
          "Crafting content",
          "Polishing result",
          "Generated content",
        ],
      },
      {
        id: "architecture",
        eyebrow: "04 · ARCHITECTURE",
        title: "One backend, multiple clients.",
        paragraphs: [
          "The Flutter application and web client share the same NestJS backend and AI infrastructure. Provider-specific logic stays behind the API boundary.",
        ],
        code: `Flutter App ──────┐\n                  ├── HTTPS ──> NestJS API\nWeb App ──────────┘                │\n                         ┌─────────┼─────────┐\n                         ▼         ▼         ▼\n                      Supabase   AI Layer  Storage\n                                    │\n                                    ▼\n                              Google Gen AI`,
      },
      {
        id: "challenges",
        eyebrow: "05 · ENGINEERING CHALLENGES",
        title: "The interesting work was around the AI.",
        challenges: [
          {
            number: "01",
            title: "AI latency",
            description:
              "Used meaningful generation states and streaming to improve perceived responsiveness.",
          },
          {
            number: "02",
            title: "Unpredictable output",
            description:
              "Defined structured output contracts and validation before rendering results.",
          },
          {
            number: "03",
            title: "Business context",
            description:
              "Persisted business information and incorporated it into the prompt pipeline.",
          },
          {
            number: "04",
            title: "Multiple clients",
            description:
              "Centralized AI orchestration in NestJS so clients do not duplicate product logic.",
          },
        ],
      },
      {
        id: "performance",
        eyebrow: "06 · PERFORMANCE",
        title: "Measure the wait instead of guessing.",
        paragraphs: [
          "A content-idea generation baseline measured approximately 9.1 seconds for generation and 9.2 seconds for the API request, with 424 input tokens and 588 output tokens.",
        ],
        metrics: [
          { value: "~9.1s", label: "generation" },
          { value: "~9.2s", label: "API request" },
          { value: "424", label: "input tokens" },
          { value: "588", label: "output tokens" },
        ],
      },
      {
        id: "decisions",
        eyebrow: "07 · ENGINEERING DECISIONS",
        title: "Technology choices followed product needs.",
        decisions: [
          {
            title: "Flutter",
            description: "Primary mobile client and cross-platform foundation.",
          },
          {
            title: "NestJS",
            description: "Business logic and AI orchestration boundary.",
          },
          {
            title: "Supabase",
            description:
              "Authentication, database, and storage infrastructure.",
          },
          {
            title: "Google Gen AI",
            description: "Generative AI layer powering content workflows.",
          },
          {
            title: "Structured output",
            description:
              "Predictable data for typed clients and reliable rendering.",
          },
          {
            title: "Streaming",
            description: "Progressive feedback for long-running AI operations.",
          },
        ],
      },
      {
        id: "learnings",
        eyebrow: "08 · LEARNINGS",
        title: "AI products require more than an AI API.",
        paragraphs: [
          "The hard part is designing the system around the model: context, prompts, schemas, latency, failures, UX, and validation.",
          "CaptionKilat also reinforced a broader product-engineering lesson: the best technical solution is not necessarily the most complex one. The complexity should stay behind a simple user experience.",
        ],
      },
    ],
    nextSlug: "maxon",
  },
  {
    slug: "maxon",
    number: "03",
    name: "Maxon Filtration Pump",
    shortName: "Maxon",
    type: "Engineering Calculator",
    description:
      "A cross-platform Flutter app that makes pump selection faster through filtering, technical details, offline-first access, and engineering calculations.",
    tags: ["Flutter", "BLoC", "Offline-first", "Engineering Logic"],
    screenshots: [
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/maxon/maxon1.webp",
        "Maxon pump selection screen",
      ),
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/maxon/maxon2.webp",
        "Maxon pump product details",
      ),
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/maxon/maxon4.webp",
        "Maxon pump technical information",
      ),
    ],
    links: [
      {
        label: "Google Play",
        status: "available",
        url: "https://play.google.com/store/apps/details?id=id.maxon.maxon",
      },
      {
        label: "App Store",
        status: "available",
        url: "https://apps.apple.com/us/app/maxon-pumpcalc/id6748975011",
      },
    ],
    role: "Mobile Developer",
    platform: "Android · iOS",
    stack: "Flutter · Dart · BLoC",
    caseEyebrow: "CASE STUDY · MOBILE ENGINEERING",
    caseTitle: "Filtration Pump Selection App",
    caseLede:
      "A cross-platform mobile application that helps Maxon clients find the right pump, inspect technical information, and access product details even when an internet connection is unavailable.",
    showcaseTitle: "Engineering data, made easier to navigate.",
    showcaseDescription:
      "The interface turns a technical catalog and calculation workflow into a guided mobile experience.",
    sections: [
      {
        id: "problem",
        eyebrow: "01 · THE PROBLEM",
        title: "Choosing a pump involves more than browsing a catalog.",
        paragraphs: [
          "Maxon clients need to narrow down pumps by type, series, and product before they can inspect the technical details that matter for a selection.",
          "The product needed to make that process faster while keeping technical information and calculated specifications easy to access on a mobile device.",
        ],
      },
      {
        id: "product",
        eyebrow: "02 · THE PRODUCT",
        title: "A guided path from filter to specification.",
        features: [
          {
            title: "01 · Filter",
            description: "Find pumps by type, series, and product.",
          },
          {
            title: "02 · Product detail",
            description:
              "View product information, images, charts, and specifications.",
          },
          {
            title: "03 · Calculation",
            description:
              "Apply engineering calculations to the selected product.",
          },
          {
            title: "04 · PDF",
            description: "Download the product details for later reference.",
          },
        ],
      },
      {
        id: "offline",
        eyebrow: "03 · OFFLINE-FIRST",
        title: "The app should remain useful when connectivity disappears.",
        paragraphs: [
          "I applied an offline-first approach so the core product experience does not depend on a constant internet connection. Product data and the workflows needed for selection are designed around local availability first.",
        ],
        pipeline: [
          "Local product data",
          "Filter & select",
          "Calculate specification",
          "View / export result",
        ],
      },
      {
        id: "calculation",
        eyebrow: "04 · CALCULATION LOGIC",
        title: "Correct numbers matter as much as a polished UI.",
        paragraphs: [
          "The app contains engineering calculation logic used to determine the specifications shown for a selected pump. My responsibility included implementing and checking that logic so the displayed result matches the selected product and input conditions.",
        ],
        decisions: [
          {
            title: "Inputs",
            description:
              "Capture the parameters required by the selected calculation.",
          },
          {
            title: "Rules",
            description:
              "Keep calculation rules explicit and separate from presentation code.",
          },
          {
            title: "Output",
            description:
              "Present calculated specifications alongside product information.",
          },
        ],
      },
      {
        id: "challenges",
        eyebrow: "05 · ENGINEERING CHALLENGES",
        title:
          "The difficult part was balancing technical correctness with usability.",
        challenges: [
          {
            number: "01",
            title: "Offline data",
            description:
              "The app had to provide meaningful functionality without assuming an active connection.",
          },
          {
            number: "02",
            title: "Complex filtering",
            description:
              "The selection flow needed to stay understandable while supporting multiple product dimensions.",
          },
          {
            number: "03",
            title: "Calculation accuracy",
            description:
              "Engineering results needed careful implementation and verification.",
          },
          {
            number: "04",
            title: "Technical presentation",
            description:
              "Charts, images, specifications, and PDFs had to remain readable and useful on mobile.",
          },
        ],
      },
      {
        id: "decisions",
        eyebrow: "06 · ENGINEERING DECISIONS",
        title: "Flutter and BLoC kept the product focused.",
        decisions: [
          {
            title: "Flutter",
            description: "One cross-platform codebase for Android and iOS.",
          },
          {
            title: "BLoC",
            description:
              "Explicit state management for filters, product selection, and calculation-driven UI.",
          },
          {
            title: "Offline-first",
            description:
              "Core product workflows remain usable without network availability.",
          },
          {
            title: "Separation of logic",
            description:
              "Calculation behavior is kept distinct from UI rendering to make correctness easier to reason about.",
          },
        ],
      },
      {
        id: "learnings",
        eyebrow: "07 · LEARNINGS",
        title: "Domain-heavy apps reward precision.",
        paragraphs: [
          "This project reinforced that mobile engineering is not only about building screens. When an app presents technical specifications, the implementation has to respect the domain rules behind those numbers.",
          "The best UX here was not about adding more interactions. It was about reducing the distance between a user’s question — “Which pump fits?” — and a trustworthy answer.",
        ],
      },
    ],
    nextSlug: "mcode",
  },
  {
    slug: "mcode",
    number: "04",
    name: "MCode PLN Services",
    shortName: "MCode",
    type: "Internal Document Tracking",
    description:
      "An internal document tracking application for scanning invoices, validating documents, routing them, and notifying users about status changes.",
    tags: ["Flutter", "BLoC", "Node.js", "MySQL"],
    screenshots: [
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/mcode/mcode2.jpg",
        "MCode document tracking screen",
      ),
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/mcode/mcode5.jpg",
        "MCode validation screen",
      ),
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/mcode/mcode6.jpg",
        "MCode document status screen",
      ),
    ],
    links: [
      { label: "Google Play", status: "not-available" },
      { label: "App Store", status: "not-available" },
    ],
    role: "Full-Stack Mobile Engineer",
    platform: "Internal application",
    stack: "Flutter · Dart · BLoC · Node.js · MySQL",
    caseEyebrow: "CASE STUDY · INTERNAL PRODUCT",
    caseTitle: "PLN Services Document Tracking",
    caseLede:
      "An internal mobile and backend system built to reduce information discrepancies between document owners and validators, while making document routing and status changes easier to track.",
    showcaseTitle: "Make the document lifecycle visible.",
    showcaseDescription:
      "The product connects document ownership, validation, routing, and notifications into one trackable workflow.",
    sections: [
      {
        id: "problem",
        eyebrow: "01 · THE PROBLEM",
        title: "Document status should not depend on manual follow-up.",
        paragraphs: [
          "The application was developed to minimize information discrepancies between document owners and validators. Users need to know where a document is, who is responsible for it, and what happened to it.",
          "The mobile experience needed to make that lifecycle visible while the backend enforced the workflow.",
        ],
      },
      {
        id: "product",
        eyebrow: "02 · THE PRODUCT",
        title: "A workflow built around document status.",
        features: [
          {
            title: "Document scanning",
            description:
              "Scan invoice documents and bring them into the tracking workflow.",
          },
          {
            title: "Tracking",
            description:
              "See document status and ownership as it moves through departments.",
          },
          {
            title: "Validation",
            description:
              "Give validators role-specific actions and information.",
          },
          {
            title: "Routing",
            description: "Ensure documents reach the appropriate department.",
          },
        ],
      },
      {
        id: "roles",
        eyebrow: "03 · ROLE-BASED WORKFLOW",
        title: "Different users need different actions.",
        paragraphs: [
          "Role-based features keep each part of the workflow focused. Document owners can track submissions, validators can review and update status, and the system can route documents to the appropriate next step.",
        ],
        pipeline: [
          "Document owner",
          "Submit / track",
          "Validator",
          "Validate / update",
          "Department",
        ],
      },
      {
        id: "lifecycle",
        eyebrow: "04 · DOCUMENT LIFECYCLE",
        title: "Treat status as the shared language between teams.",
        paragraphs: [
          "A clear status model reduces ambiguity. Instead of relying on messages or manual checks, the application makes the current state and next destination visible to the people involved.",
        ],
        decisions: [
          {
            title: "Owner",
            description:
              "Knows whether a submitted document is still being processed.",
          },
          {
            title: "Validator",
            description:
              "Receives the document and performs the required validation.",
          },
          {
            title: "Routing",
            description: "Moves the document toward the correct department.",
          },
        ],
      },
      {
        id: "notifications",
        eyebrow: "05 · NOTIFICATIONS",
        title: "Status changes should trigger the next action.",
        paragraphs: [
          "I implemented push notifications for status changes so users can react when a document requires attention. This turns the status system from a passive tracking screen into an active workflow.",
        ],
        metrics: [
          { value: "01", label: "status change" },
          { value: "→", label: "push notification" },
          { value: "02", label: "user awareness" },
          { value: "03", label: "next action" },
        ],
      },
      {
        id: "architecture",
        eyebrow: "06 · ARCHITECTURE",
        title: "Full-stack ownership from mobile screen to database.",
        paragraphs: [
          "I developed both the mobile application and backend from the ground up, allowing the workflow, API behavior, and data model to be designed around the same document lifecycle.",
        ],
        code: `Flutter App\n    │\n    │ HTTP / API\n    ▼\nNode.js Backend\n    │\n    ├── Role & workflow logic\n    ├── Document status\n    └── Push notification triggers\n    │\n    ▼\nMySQL`,
        decisions: [
          {
            title: "Flutter + BLoC",
            description: "Mobile UI and explicit application state.",
          },
          { title: "Node.js", description: "Backend APIs and workflow logic." },
          {
            title: "MySQL",
            description: "Persistent document and status data.",
          },
        ],
      },
      {
        id: "learnings",
        eyebrow: "07 · LEARNINGS",
        title: "Internal tools succeed when they remove uncertainty.",
        paragraphs: [
          "This project was a lesson in workflow design as much as software development. The value of an internal application is often measured by how confidently people can answer simple operational questions: Where is this document? Who has it? What changed? What should happen next?",
          "Owning both mobile and backend development also reinforced the benefit of treating the workflow as one system rather than a collection of disconnected features.",
        ],
      },
    ],
    nextSlug: "xcess",
  },
  {
    slug: "xcess",
    number: "05",
    name: "Xcess by Agtran",
    shortName: "Xcess",
    type: "Vehicle Rental Management",
    description:
      "A cross-platform car rental management app for Agtran partners, extended through bug fixes, new features, maintenance, and custom camera development.",
    tags: ["Flutter", "Provider", "Android", "iOS"],
    screenshots: [
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/agtran/agtran2.webp",
        "Xcess vehicle rental screen",
      ),
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/agtran/agtran3.webp",
        "Xcess rental management screen",
      ),
      screenshot(
        "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/ss/agtran/agtran5.webp",
        "Xcess custom camera workflow",
      ),
    ],
    links: [
      {
        label: "Google Play",
        status: "available",
        url: "https://play.google.com/store/apps/details?id=com.agtran.xcess",
      },
      {
        label: "App Store",
        status: "available",
        url: "https://apps.apple.com/us/app/xcess-by-agtran/id1600419028",
      },
    ],
    role: "Mobile Developer",
    platform: "Android · iOS",
    stack: "Flutter · Dart · Provider",
    caseEyebrow: "CASE STUDY · MOBILE MAINTENANCE",
    caseTitle: "Vehicle Rental Management for Agtran Partners",
    caseLede:
      "A cross-platform car rental management application maintained and extended to help Agtran partners manage vehicle rental operations reliably.",
    showcaseTitle: "Reliable mobile software is built after launch, too.",
    showcaseDescription:
      "Maintenance work is where product requirements, real users, and edge cases meet.",
    sections: [
      {
        id: "product",
        eyebrow: "01 · THE PRODUCT",
        title: "Support the operational side of car rental.",
        paragraphs: [
          "Xcess by Agtran is a car rental management application built for Agtran partners. The mobile experience supports the day-to-day operations involved in managing rental vehicles.",
          "Unlike a greenfield product, the work here is shaped by an existing application, real user requirements, tickets, and the need to improve stability without disrupting current workflows.",
        ],
      },
      {
        id: "role",
        eyebrow: "02 · MY ROLE",
        title: "Turn tickets and requirements into dependable mobile features.",
        features: [
          {
            title: "Bug fixing",
            description:
              "Investigate and resolve issues reported through development tickets.",
          },
          {
            title: "New features",
            description:
              "Implement functionality based on user and product requirements.",
          },
          {
            title: "Custom camera",
            description:
              "Build a camera package around requirements not fully covered by a generic solution.",
          },
          {
            title: "Maintenance",
            description:
              "Improve stability, usability, and the long-term health of the application.",
          },
        ],
      },
      {
        id: "camera",
        eyebrow: "03 · CUSTOM CAMERA",
        title: "Sometimes the right solution is a focused component.",
        paragraphs: [
          "I developed a custom camera package to satisfy specific application requirements. Instead of forcing the product into the constraints of a generic camera implementation, the camera behavior was shaped around the workflow that users actually needed.",
        ],
        pipeline: [
          "User requirement",
          "Camera behavior",
          "Custom package",
          "Integrated mobile workflow",
        ],
      },
      {
        id: "maintenance",
        eyebrow: "04 · MAINTENANCE",
        title: "Maintenance is product engineering.",
        paragraphs: [
          "Working on an existing application means understanding the current behavior before changing it. I worked through tickets, traced bugs, implemented new requirements, and improved the application while keeping the existing user experience in mind.",
        ],
        decisions: [
          {
            title: "Understand",
            description:
              "Reproduce the issue or clarify the requested behavior.",
          },
          {
            title: "Implement",
            description:
              "Make the smallest maintainable change that satisfies the requirement.",
          },
          {
            title: "Validate",
            description: "Check the affected flow and surrounding behavior.",
          },
          {
            title: "Improve",
            description:
              "Leave the application more stable and usable than before.",
          },
        ],
      },
      {
        id: "challenges",
        eyebrow: "05 · ENGINEERING CHALLENGES",
        title:
          "Existing software adds constraints that greenfield projects do not.",
        challenges: [
          {
            number: "01",
            title: "Regression risk",
            description:
              "New changes must respect flows that already work for existing users.",
          },
          {
            number: "02",
            title: "Unclear edge cases",
            description:
              "Real tickets often reveal behavior that is not obvious from the UI alone.",
          },
          {
            number: "03",
            title: "Platform consistency",
            description:
              "Camera behavior and mobile interactions need to remain coherent across Android and iOS.",
          },
          {
            number: "04",
            title: "Maintainability",
            description:
              "Quick fixes should not become long-term technical debt.",
          },
        ],
      },
      {
        id: "decisions",
        eyebrow: "06 · ENGINEERING DECISIONS",
        title: "Use the existing stack, improve the parts that matter.",
        decisions: [
          {
            title: "Flutter",
            description: "Shared mobile foundation for Android and iOS.",
          },
          {
            title: "Provider",
            description:
              "State management aligned with the existing application architecture.",
          },
          {
            title: "Custom package",
            description:
              "Encapsulate camera-specific behavior instead of spreading platform details through feature code.",
          },
          {
            title: "Ticket-driven iteration",
            description:
              "Prioritize fixes and features based on concrete user and operational needs.",
          },
        ],
      },
      {
        id: "learnings",
        eyebrow: "07 · LEARNINGS",
        title: "Shipping is only one part of mobile engineering.",
        paragraphs: [
          "Maintaining Xcess strengthened my ability to work inside an existing product, understand unfamiliar code, and make changes without treating the application as a blank canvas.",
          "The custom camera work also reinforced a useful engineering principle: abstraction is valuable when it hides complexity that the rest of the product should not have to care about.",
        ],
      },
    ],
    nextSlug: "captionkilat",
  },
];

export const getProject = (slug: string) =>
  projects.find((project) => project.slug === slug);
