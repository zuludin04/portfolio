import React from "react";
import data from "../../data/portfolio.json";
import Button from "../Button";

const Socials = () => {
  return (
    <div className={`flex flex-wrap mob:flex-nowrap link`}>
      {data.socials.map((social, index) => (
        <Button key={index} onClick={() => window.open(social.link)}>
          {social.title}
        </Button>
      ))}
    </div>
  );
};

export default Socials;
