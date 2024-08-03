import { useEffect, useRef, useState } from "react";
import "./App.css";
import Header from "./components/Header";
import ProjectCard from "./components/ProjectCard";
import Socials from "./components/Socials";
import data from "./data/portfolio.json";
import Contact from "./components/Contact";
import Button from "./components/Button";
import { motion, AnimatePresence } from "framer-motion";

function App() {
  const projectRef = useRef();
  const contactRef = useRef();

  const [filtered, setFiltered] = useState([]);
  const [activeProjects, setActiveProjects] = useState(0);

  const tabs = ["All", "Frontend", "Backend"];

  useEffect(() => {
    if (activeProjects === 0) {
      setFiltered(data.projects);
      return;
    }

    const filtered = data.projects.filter((pro) =>
      pro.description.includes("Design")
    );
    setFiltered(filtered);
  }, [activeProjects]);

  const handleProjectScroll = () => {
    window.scrollTo({
      top: projectRef.current.offsetTop,
      left: 0,
      behavior: "smooth",
    });
  };

  const handleContactScroll = () => {
    window.scrollTo({
      top: contactRef.current.offsetTop,
      left: 0,
      behavior: "smooth",
    });
  };

  return (
    <div className="relative">
      <div className="gradient-circle"></div>
      <div className="gradient-circle-bottom"></div>

      <div className="container mx-auto mb-10">
        <Header
          handleProjectScroll={handleProjectScroll}
          handleContactScroll={handleContactScroll}
        />

        <div className="laptop:mt-20 mt-10">
          <div className="mt-5">
            <h1
              className="text-3xl tablet:text-6xl laptop:text-6xl laptopl:text-8xl p-1 tablet:p-2 text-bold w-4/5 mob:w-full laptop:w-4/5"
              style={{ lineHeight: 1.3 }}
            >
              Hallo 👋 <br />
              Zulfikar here, <br />
              Let's build great <br />
              Things together
            </h1>
          </div>

          <Socials className="mt-2 laptop:mt-2" />
        </div>

        <div className="mt-10 laptop:mt-30 p-2 laptop:p-0" ref={projectRef}>
          <h1 className="text-2xl text-bold">Project.</h1>

          <div className={`flex flex-wrap mob:flex-nowrap link`}>
            {tabs.map((social, index) => (
              <Button key={index} onClick={() => setActiveProjects(index)}>
                {social}
              </Button>
            ))}
          </div>

          <motion.div className="mt-5 laptop:mt-10 grid grid-cols-1 laptop:grid-cols-3 gap-4">
            <AnimatePresence>
              {filtered.map((project) => (
                <ProjectCard
                  key={project.id}
                  img={project.imageSrc}
                  name={project.title}
                  description={project.description}
                  onClick={() => window.open(project.url)}
                />
              ))}
            </AnimatePresence>
          </motion.div>
        </div>

        <div ref={contactRef}>
          <Contact />
        </div>
      </div>
    </div>
  );
}

export default App;
