import styles from "./Navbar.module.css";

const NAV_LINKS = [
  // { href: '#about',      label: 'About' },
  { href: "#projects", label: "Projects" },
  { href: "#experience", label: "Experience" },
  { href: "#contact", label: "Contact" },
];

export default function Navbar() {
  return (
    <nav className={styles.nav}>
      <a href="#" className={styles.logo}>
        ZM.
      </a>
      <ul className={styles.links}>
        {NAV_LINKS.map((l) => (
          <li key={l.href}>
            <a href={l.href} className={styles.link}>
              {l.label}
            </a>
          </li>
        ))}
      </ul>
      <a href="mailto:zulfikar.mauludin29@gmail.com" className={styles.cta}>
        Hire Me
      </a>
    </nav>
  );
}
