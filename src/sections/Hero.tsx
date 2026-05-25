import styles from "./Hero.module.css";

export default function Hero() {
  return (
    <section className={styles.hero}>
      <div className={styles.glow} />
      <div className={styles.content}>
        <div className={styles.badge}>
          <span className={styles.dot} />
          Available for new projects
        </div>

        <h1 className={styles.h1}>
          Mobile
          <br />
          Developer
          <br />
          <em className={styles.accent}>&amp; Creator.</em>
        </h1>

        <p className={styles.desc}>
          Crafting polished mobile experiences for Android &amp; iOS using
          Kotlin, Jetpack Compose, and Flutter. Based in Indonesia.
        </p>

        <div className={styles.platforms}>
          <span className={styles.platform}>
            <span
              className={styles.platformDot}
              style={{ background: "#3DDC84" }}
            />
            Android · Kotlin
          </span>
          <span className={styles.platformSep}>·</span>
          <span className={styles.platform}>
            <span
              className={styles.platformDot}
              style={{ background: "#54C5F8" }}
            />
            Cross-platform · Flutter
          </span>
        </div>

        <div className={styles.actions}>
          <a href="#projects" className={styles.btnPrimary}>
            View Projects ↓
          </a>
          <a href="#contact" className={styles.btnOutline}>
            Get In Touch
          </a>
        </div>
      </div>
    </section>
  );
}
