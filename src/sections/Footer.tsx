import styles from './Footer.module.css'

export default function Footer() {
  return (
    <footer className={styles.footer}>
      <div className={styles.inner}>
        <span className={styles.brand}>Zulfikar Mauludin</span>
        <span className={styles.copy}>© {new Date().getFullYear()} · Built with 💚 in Indonesia</span>
      </div>
    </footer>
  )
}
