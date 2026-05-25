import styles from './SectionLabel.module.css'

interface Props { text: string }

export default function SectionLabel({ text }: Props) {
  return (
    <div className={styles.wrap}>
      <span className={styles.line} />
      <span className={styles.label}>{text}</span>
    </div>
  )
}
