import React, { useEffect, useState } from "react";
import portfolio from "../data/portfolio.json";
import { Link, useParams } from "react-router-dom";
import { IoLogoGooglePlaystore } from "react-icons/io5";
import Chips from "../components/Chips";
import CustomCarousel from "../components/Slider/custom.slider";
import { IoIosArrowBack } from "react-icons/io";
import { FaGithub } from "react-icons/fa";

function ProjectDetailPage() {
  const { id } = useParams();
  const [project, setProject] = useState({});
  const [stacks, setStacks] = useState([]);
  const [screenshots, setScreenshots] = useState([]);
  const [links, setLinks] = useState([]);

  useEffect(() => {
    const data = portfolio.projects.find((value) => value.id === id);
    setProject(data);
    setStacks(data.stacks);
    setScreenshots(data.screenshots);
    setLinks(data.links);
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
        {links.length !== 0 &&
          links.map((value) => {
            return (
              <button type="button" onClick={() => window.open(value.url)}>
                <div className="w-32 flex rounded-md bg-white text-black justify-center items-center py-2 mt-4">
                  {value.type === "GooglePlay" ? (
                    <IoLogoGooglePlaystore color="black" />
                  ) : (
                    <FaGithub />
                  )}
                  <p className="px-2">Visit</p>
                </div>
              </button>
            );
          })}
      </div>
    </div>
  );
}

export default ProjectDetailPage;
