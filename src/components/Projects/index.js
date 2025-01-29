import React from "react";
import ProjectCard from "../ProjectCard";

const Projects = ({ projects }) => {
  return (
    <div key={"project"} id="project" className="section-container mt-6">
      <div className="w-full flex flex-col items-center">
        <p className="border-b-4 border-[#f8f1f6] font-semibold text-2xl text-stone">
          Projects
        </p>
      </div>
      <div className="grid grid-cols-1 laptop:grid-cols-2 gap-4 mt-8">
        {projects.map((project) => (
          <ProjectCard
            key={project.id}
            id={project.id}
            img={project.imageSrc}
            name={project.title}
          />
        ))}
      </div>
    </div>
  );
};

export default Projects;
