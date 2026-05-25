import type { Project } from "../data";
import ImageCarousel from "./ImageCarousel";
import styles from "./ProjectCard.module.css";

interface Props {
  project: Project;
  onClick: () => void;
}

export default function ProjectCard({ project, onClick }: Props) {
  return (
    <article
      className={styles.card}
      onClick={onClick}
      role="button"
      tabIndex={0}
      onKeyDown={(e) => e.key === "Enter" && onClick()}
    >
      <div className={styles.carouselWrap}>
        <ImageCarousel slides={project.slides} height={210} fit="contain" />
        <div className={styles.arrow}>↗</div>
      </div>
      <div className={styles.body}>
        <p className={styles.category}>{project.category}</p>
        <h3 className={styles.title}>{project.title}</h3>
        <p className={styles.desc}>{project.desc}</p>
        <div className={styles.tags}>
          {project.tags.slice(0, 4).map((t) => (
            <span key={t} className={styles.tag}>
              {t}
            </span>
          ))}
          {project.tags.length > 4 && (
            <span className={styles.tag}>+{project.tags.length - 4}</span>
          )}
        </div>
      </div>
    </article>
  );
}
