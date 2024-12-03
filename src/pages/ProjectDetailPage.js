import React, { useEffect, useState } from "react";
import portfolio from "../data/portfolio.json";
import { useParams } from "react-router-dom";
import { IoLogoGooglePlaystore } from "react-icons/io5";
import Chips from "../components/Chips";

function ProjectDetailPage() {
  const { id } = useParams();
  const [project, setProject] = useState({});
  const [stacks, setStacks] = useState([]);

  useEffect(() => {
    const data = portfolio.projects.find((value) => value.id === id);
    setProject(data);
    setStacks(data.stacks);
  }, []);

  return (
    <div className="mx-20">
      <div className="flex">
        <img
          alt={project.title}
          className="object-center h-24 w-24 rounded"
          src={project.imageSrc}
        />
        <p className="text-2xl font-medium self-center ml-2">{project.title}</p>
      </div>
      <div className="flex flex-wrap my-6">
        {stacks.map((e) => (
          <div className="p-1">
            <Chips type={e} />
          </div>
        ))}
      </div>
      <p>{project.description}</p>
      <button type="button" onClick={() => {}}>
        <div className="w-32 flex rounded-md bg-white text-black justify-center items-center py-2">
          <IoLogoGooglePlaystore color="black" />
          <p className="px-2">Download</p>
        </div>
      </button>
    </div>
  );
}

export default ProjectDetailPage;
