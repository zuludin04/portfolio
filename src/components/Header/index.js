import React from "react";
import Socials from "../Socials";

const Header = () => {
  return (
    <div key={"about"} id="about" className="section-container">
      <div className="flex flex-col justify-between">
        <p className="text-stone-500 text-xl">Mobile Engineer</p>
        <div className="mt-24">
          <h1 className="font-semibold text-2xl">I'm Zulfikar Mauludin</h1>
          <p className="text-stone-500 text-base mt-4 mb-6">
            Experienced mobile engineer with expertise in developing <br />
            high-performance Android and iOS applications. <br />
            Dedicated to delivering robust, scalable, and user-focused mobile
            solutions.
          </p>
          <Socials />
        </div>
      </div>
    </div>
  );
};

export default Header;
