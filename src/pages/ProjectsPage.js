import { useEffect, useState } from "react";
import Projects from "../components/Projects";
import data from "../data/portfolio.json";

function ProjectsPage() {
  const [projects, setProjects] = useState([]);

  useEffect(() => {
    setProjects(data.projects);
  }, []);

  return (
    <div className="mt-10 laptop:mt-30 p-2 laptop:p-0">
      <Projects projects={projects} />
    </div>
  );
}

export default ProjectsPage;
