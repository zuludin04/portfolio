import React from "react";
import { motion } from "framer-motion";
import { Link } from "react-router-dom";

const ProjectCard = ({ id, img, name }) => {
  return (
    <Link to={`/project/${id}`}>
      <div>
        <div className="overflow-hidden rounded-lg p-2 laptop:p-4 first:ml-0 link">
          <motion.div
            layoutId={`/${id}`}
            className="relative rounded-lg overflow-hidden"
            style={{ height: "150px" }}
          >
            <img
              alt={name}
              className="h-full w-full object-cover hover:scale-110 transition-all ease-out duration-300"
              src={img}
            />
          </motion.div>

          <h1 className="mt-5 text-2xl font-medium flex justify-center">
            {name}
          </h1>
        </div>
      </div>
    </Link>
  );
};

export default ProjectCard;
