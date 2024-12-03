import React, { useEffect, useState } from "react";
import portfolio from "../data/portfolio.json";
import { Link, useParams } from "react-router-dom";
import { IoLogoGooglePlaystore } from "react-icons/io5";
import Chips from "../components/Chips";
import CustomCarousel from "../components/Slider/custom.slider";
import { IoIosArrowBack } from "react-icons/io";

function ProjectDetailPage() {
  const { id } = useParams();
  const [project, setProject] = useState({});
  const [stacks, setStacks] = useState([]);
  const [screenshots, setScreenshots] = useState([]);

  useEffect(() => {
    const data = portfolio.projects.find((value) => value.id === id);
    setProject(data);
    setStacks(data.stacks);
    setScreenshots(data.screenshots);
  }, []);

  return (
    <div className="mx-32">
      <header className="flex py-5 z-50 bg-fixed top-0 w-full">
        <Link to={"/projects"}>
          <IoIosArrowBack size={28} />
        </Link>
      </header>

      {screenshots.length !== 0 ? (
        <CustomCarousel>
          {screenshots.map((image, index) => {
            return (
              <img
                key={index}
                src={image}
                alt={`${index}`}
                style={{ height: 592, width: 273 }}
              />
            );
          })}
        </CustomCarousel>
      ) : (
        <img src={project.imageSrc} style={{ width: 1280, height: 480 }} />
      )}

      <div className="py-5">
        <div className="flex">
          <img
            alt={project.title}
            className="object-center h-24 w-24 rounded"
            src={project.imageSrc}
          />
          <p className="text-2xl font-medium self-center ml-2">
            {project.title}
          </p>
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
    </div>
  );
}

export default ProjectDetailPage;
