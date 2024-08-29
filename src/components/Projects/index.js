import React from "react";
import Button from "../Button";
import { motion, AnimatePresence } from "framer-motion";
import ProjectCard from "../ProjectCard";
import data from "../../data/portfolio.json";

const Projects = ({ activeProjects, setActiveProjects, filtered }) => {
  return (
    <div>
      <h1 className="text-2xl text-bold flex justify-center">Project.</h1>

      <div
        className={`flex flex-wrap mob:flex-nowrap link justify-center mt-5`}
      >
        {data.projectTabs.map((tab, index) => (
          <Button
            type={activeProjects === index ? "primary" : ""}
            key={index}
            onClick={() => setActiveProjects(index)}
          >
            {tab.name}
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
              onClick={() => {
                if (project.url != "") {
                  window.open(project.url);
                }
              }}
            />
          ))}
        </AnimatePresence>
      </motion.div>
    </div>
  );
};

export default Projects;
