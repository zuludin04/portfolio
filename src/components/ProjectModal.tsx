import { useEffect } from "react";
import type { Project } from "../data";
import ImageCarousel from "./ImageCarousel";
import styles from "./ProjectModal.module.css";

interface Props {
  project: Project | null;
  onClose: () => void;
}

export default function ProjectModal({ project, onClose }: Props) {
  useEffect(() => {
    if (!project) return;
    document.body.style.overflow = "hidden";
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") onClose();
    };
    window.addEventListener("keydown", onKey);
    return () => {
      document.body.style.overflow = "";
      window.removeEventListener("keydown", onKey);
    };
  }, [project, onClose]);

  if (!project) return null;

  return (
    <div
      className={styles.overlay}
      onClick={(e) => e.target === e.currentTarget && onClose()}
    >
      <div className={styles.modal}>
        {/* Carousel header */}
        <div className={styles.carouselWrap}>
          <ImageCarousel slides={project.slides} height={260} fit="contain" />
          <button
            className={styles.closeBtn}
            onClick={onClose}
            aria-label="Close"
          >
            ✕
          </button>
        </div>

        {/* Body */}
        <div className={styles.body}>
          <p className={styles.category}>{project.category}</p>
          <h2 className={styles.title}>{project.title}</h2>
          <p className={styles.desc}>{project.desc}</p>

          {/* Tags */}
          <p className={styles.sectionLabel}>Built With</p>
          <div className={styles.tags}>
            {project.tags.map((t) => (
              <span key={t} className={styles.tag}>
                {t}
              </span>
            ))}
          </div>

          {/* Features */}
          <div className={styles.featuresBox}>
            <p className={styles.sectionLabel}>Key Features</p>
            <ul className={styles.features}>
              {project.features.map((f, i) => (
                <li key={i}>
                  <span className={styles.arrow}>→</span>
                  {f}
                </li>
              ))}
            </ul>
          </div>

          {/* Actions */}
          <div className={styles.actions}>
            {project.github && (
              <a
                href={project.github}
                target="_blank"
                rel="noreferrer"
                className={styles.btnSecondary}
              >
                🐙&nbsp; GitHub
              </a>
            )}
            {project.appstore && (
              <a
                href={project.appstore}
                target="_blank"
                rel="noreferrer"
                className={styles.btnPrimary}
              >
                🍎&nbsp; App Store
              </a>
            )}
            {project.playstore && (
              <a
                href={project.playstore}
                target="_blank"
                rel="noreferrer"
                className={styles.btnPrimary}
              >
                ▶&nbsp; Play Store
              </a>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
