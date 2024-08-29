import React from "react";
import { motion } from "framer-motion";

const ProjectCard = ({ img, name, description, onClick }) => {
  return (
    <motion.div
      layout
      animate={{ opacity: 1 }}
      initial={{ opacity: 0 }}
      exit={{ opacity: 0 }}
      style={{ cursor: "pointer" }}
    >
      <div
        className="overflow-hidden rounded-lg p-2 laptop:p-4 first:ml-0 link"
        onClick={onClick}
      >
        <div
          className="relative rounded-lg overflow-hidden transition-all ease-out duration-300 h-48 mob:h-auto"
          style={{ height: "250px" }}
        >
          <img
            alt={name}
            className="h-full w-full object-cover hover:scale-110 transition-all ease-out duration-300"
            src={img}
          />
        </div>
        <h1 className="mt-5 text-2xl font-medium">{name}</h1>
        <h2 className="text-lg opacity-60 line-clamp-2">{description}</h2>
      </div>
    </motion.div>
  );
};

export default ProjectCard;
