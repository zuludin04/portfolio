import React from "react";
import data from "../../data/portfolio.json";
import Button from "../Button";

const Socials = ({ className }) => {
  return (
    <div
      className={`${className} flex flex-wrap justify-center mob:flex-nowrap link`}
    >
      {data.socials.map((social, index) => (
        <Button key={index} onClick={() => window.open(social.link)}>
          {social.title}
        </Button>
      ))}
    </div>
  );
};

export default Socials;
