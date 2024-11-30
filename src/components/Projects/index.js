import React from "react";
import { motion, AnimatePresence } from "framer-motion";
import ProjectCard from "../ProjectCard";

const Projects = ({ projects }) => {
  return (
    <div>
      <motion.div className="mt-5 laptop:mt-10 grid grid-cols-1 laptop:grid-cols-4 gap-4">
        <AnimatePresence>
          {projects.map((project) => (
            <ProjectCard
              key={project.id}
              id={project.id}
              img={project.imageSrc}
              name={project.title}
            />
          ))}
        </AnimatePresence>
      </motion.div>
    </div>
  );
};

export default Projects;
