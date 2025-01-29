import ScrollSpy from "react-scrollspy-navigation";

function Navigation() {
  return (
    <ScrollSpy
      activeClass="font-bold text-orange-700"
      rootMargin="100px 0px 0px 0px"
      offsetTop={100}
    >
      <nav className="navigation">
        <ul>
          <li key={"about"}>
            <a href="#about">
              <button className="menu-link">About</button>
            </a>
          </li>
        </ul>
        <ul>
          <li key={"project"}>
            <a href="#project">
              <button className="menu-link">Project</button>
            </a>
          </li>
        </ul>
        <ul>
          <li key={"contact"}>
            <a href="#contact">
              <button className="menu-link">Contact</button>
            </a>
          </li>
        </ul>
      </nav>
    </ScrollSpy>
  );
}

export default Navigation;
