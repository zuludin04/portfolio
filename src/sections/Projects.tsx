import { useState } from "react";
import SectionLabel from "../components/SectionLabel";
import ProjectCard from "../components/ProjectCard";
import ProjectModal from "../components/ProjectModal";
import { projects, type Project } from "../data";
import { useInView } from "../hooks/useInView";
import styles from "./Projects.module.css";

export default function Projects() {
  const [selected, setSelected] = useState<Project | null>(null);
  const { ref, inView } = useInView();

  return (
    <section id="projects" className={styles.section}>
      <div className={styles.container}>
        <SectionLabel text="Selected Work" />
        <h2
          className={styles.heading}
          ref={ref as React.RefObject<HTMLHeadingElement>}
          style={{
            opacity: inView ? 1 : 0,
            transform: inView ? "none" : "translateY(20px)",
            transition: "opacity .6s ease, transform .6s ease",
          }}
        >
          Projects I've Built
        </h2>
        <p className={styles.sub}>
          Android &amp; Flutter projects — click any card to see details, tech
          stack, and links.
        </p>

        <div className={styles.grid}>
          {projects.map((p) => (
            <ProjectCard
              key={p.id}
              project={p}
              onClick={() => setSelected(p)}
            />
          ))}
        </div>
      </div>

      <ProjectModal project={selected} onClose={() => setSelected(null)} />
    </section>
  );
}
