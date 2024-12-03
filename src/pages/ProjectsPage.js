import { useEffect, useState } from "react";
import Projects from "../components/Projects";
import data from "../data/portfolio.json";
import { IoIosArrowBack } from "react-icons/io";
import { Link } from "react-router-dom";

function ProjectsPage() {
  const [projects, setProjects] = useState([]);

  useEffect(() => {
    setProjects(data.projects);
  }, []);

  return (
    <div className="flex flex-col px-5 tablet:px-10 laptop:px-20">
      <header className="flex py-5 z-50 bg-fixed top-0 w-full">
        <Link to={"/"}>
          <IoIosArrowBack size={28} />
        </Link>
        Projects
      </header>
      <Projects projects={projects} />
    </div>
  );
}

export default ProjectsPage;
