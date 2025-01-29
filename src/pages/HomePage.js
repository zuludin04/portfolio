import Projects from "../components/Projects";
import { useEffect, useState } from "react";
import data from "../data/portfolio.json";
import Contact from "../components/Contact";
import Header from "../components/Header";

function HomePage() {
  const [projects, setProjects] = useState([]);

  useEffect(() => {
    setProjects(data.projects);
  }, []);

  return (
    <div className="flex flex-col">
      <Header />
      <Projects projects={projects} />
      <Contact />
    </div>
  );
}

export default HomePage;
