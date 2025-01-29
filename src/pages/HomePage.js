import Projects from "../components/Projects";
import { useEffect, useState } from "react";
import data from "../data/portfolio.json";
import Contact from "../components/Contact";
import Header from "../components/Header";
import Navigation from "../components/Navigation";
import logo from "../assets/logo-black.png";

function HomePage() {
  const [projects, setProjects] = useState([]);

  useEffect(() => {
    setProjects(data.projects);
  }, []);

  return (
    <div>
      <header className="flex flex-row">
        <img src={logo} style={{ width: 48, height: 48, marginRight: 16 }} />
        <Navigation />
      </header>
      <main className="portfolio-app">
        <div className="flex flex-col">
          <Header />
          <Projects projects={projects} />
          <Contact />
        </div>
      </main>
    </div>
  );
}

export default HomePage;
