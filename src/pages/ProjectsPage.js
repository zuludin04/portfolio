import { useEffect, useState } from "react";
import Projects from "../components/Projects";
import data from "../data/portfolio.json";
import { IoIosArrowBack } from "react-icons/io";
import { Link } from "react-router-dom";
import { motion } from "framer-motion";

function ProjectsPage() {
  const [projects, setProjects] = useState([]);

  useEffect(() => {
    setProjects(data.projects);
  }, []);

  return (
    <motion.div
      initial={{ y: 10, opacity: 0 }}
      animate={{ y: 0, opacity: 1 }}
      exit={{ y: -10, opacity: 0 }}
      transition={{ duration: 0.2 }}
      className="flex flex-col px-5 tablet:px-10 laptop:px-20"
    >
      <header className="flex py-5 z-50 bg-fixed top-0 w-full">
        <Link to={"/"}>
          <IoIosArrowBack size={28} />
        </Link>
        Projects
      </header>
      <Projects projects={projects} />
    </motion.div>
  );
}

export default ProjectsPage;
