import React from "react";
import { motion, AnimatePresence } from "framer-motion";
import ProjectCard from "../ProjectCard";

const Projects = ({ projects }) => {
  return (
    <div>
      <motion.div className="grid grid-cols-2 tablet:grid-cols-3 laptop:grid-cols-4 gap-4">
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
