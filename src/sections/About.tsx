import SectionLabel from "../components/SectionLabel";
import { skills } from "../data";
import { useInView } from "../hooks/useInView";
import styles from "./About.module.css";

// Duplicate for seamless infinite marquee (24 skills split evenly)
const ROW1 = [...skills.slice(0, 12), ...skills.slice(0, 12)];
const ROW2 = [...skills.slice(12), ...skills.slice(12)];

export default function About() {
  const { ref, inView } = useInView();

  return (
    <>
      {/* Skills marquee — full width */}
      <div className={styles.marqueeSection}>
        <div className={styles.marqueeTrack}>
          <div className={styles.marqueeRow}>
            {ROW1.map((s, i) => (
              <span key={i} className={styles.chip}>
                {s}
              </span>
            ))}
          </div>
        </div>
        <div className={styles.marqueeTrack}>
          <div className={`${styles.marqueeRow} ${styles.marqueeReverse}`}>
            {ROW2.map((s, i) => (
              <span key={i} className={styles.chip}>
                {s}
              </span>
            ))}
          </div>
        </div>
      </div>
    </>
  );
}
