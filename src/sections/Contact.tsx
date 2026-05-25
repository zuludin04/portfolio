import SectionLabel from '../components/SectionLabel'
import { contactLinks } from '../data'
import { useInView } from '../hooks/useInView'
import styles from './Contact.module.css'

export default function Contact() {
  const { ref, inView } = useInView()

  return (
    <section id="contact" className={styles.section}>
      <div className={styles.container}>
        <SectionLabel text="Get In Touch" />
        <div ref={ref as React.RefObject<HTMLDivElement>}
          style={{ opacity: inView ? 1 : 0, transform: inView ? 'none' : 'translateY(24px)', transition: 'opacity .65s ease, transform .65s ease' }}>
          <h2 className={styles.heading}>
            Let's build something<br />
            <em className={styles.accent}>great together.</em>
          </h2>
          <p className={styles.sub}>
            Whether you have a project, a question, or just want to connect —
            reach out through any of these channels.
          </p>

          <div className={styles.links}>
            {contactLinks.map(l => (
              <a key={l.label} href={l.url} target={l.url.startsWith('mailto') ? undefined : '_blank'}
                rel="noreferrer" className={styles.linkCard}>
                <div className={styles.icon}>{l.icon}</div>
                <div className={styles.info}>
                  <span className={styles.linkLabel}>{l.label}</span>
                  <span className={styles.linkValue}>{l.value}</span>
                </div>
                <span className={styles.arrow}>↗</span>
              </a>
            ))}
          </div>
        </div>
      </div>
    </section>
  )
}
