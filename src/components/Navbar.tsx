import { Link, useLocation } from "react-router-dom";

export function Navbar() {
  const location = useLocation();
  const home = location.pathname === "/";
  const section = (id: string) => (home ? `#${id}` : `/#${id}`);
  return (
    <nav className="nav shell">
      <Link className="brand" to="/">
        ZM<span>.</span>
      </Link>
      <div className="nav-links">
        <Link to={section("work")}>Work</Link>
        <Link to={section("about")}>About</Link>
        <Link to={section("experience")}>Experience</Link>
        <Link to={section("contact")}>Contact</Link>
      </div>
      <a className="nav-cta" href="mailto:hello@zuludin.dev">
        Let&apos;s talk <span aria-hidden>↗</span>
      </a>
    </nav>
  );
}
