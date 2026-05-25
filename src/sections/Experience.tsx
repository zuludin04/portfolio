import SectionLabel from "../components/SectionLabel";
import { experience } from "../data";
import { useInView } from "../hooks/useInView";
import styles from "./Experience.module.css";

export default function Experience() {
  const { ref, inView } = useInView();

  return (
    <section id="experience" className={styles.section}>
      <div className={styles.container}>
        <SectionLabel text="Experience" />
        <h2 className={styles.heading}>Where I've Worked</h2>
        <p className={styles.sub}>
          A timeline of roles where I've grown as an Mobile engineer.
        </p>

        <div
          className={styles.timeline}
          ref={ref as React.RefObject<HTMLDivElement>}
          style={{
            opacity: inView ? 1 : 0,
            transform: inView ? "none" : "translateY(24px)",
            transition: "opacity .65s ease, transform .65s ease",
          }}
        >
          {experience.map((e, i) => (
            <div key={i} className={styles.item}>
              <div className={styles.left}>
                <div className={styles.dot} />
                {i < experience.length - 1 && <div className={styles.line} />}
              </div>
              <div className={styles.content}>
                <p className={styles.period}>{e.period}</p>
                <p className={styles.role}>{e.role}</p>
                <p className={styles.company}>{e.company}</p>
                <p className={styles.desc}>{e.desc}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </section>
  );
}
