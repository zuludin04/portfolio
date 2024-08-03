import React from "react";
import Button from "../Button";
import Socials from "../Socials";

const Contact = () => {
  return (
    <div className="flex justify-center" style={{ height: "80vh" }}>
      <div className="mt-5 laptop:mt-40 p-2 laptop:p-0">
        <div>
          <h1 className="text-2xl text-bold flex justify-center">Contact.</h1>
          <div className="mt-10">
            <h1 className="text-3xl tablet:text-6xl laptop:text-6xl laptopl:text-8xl text-bold text-center">
              LET&apos;S WORK <br /> TOGETHER
            </h1>
            <div className="mt-10 flex justify-center">
              <Socials />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Contact;
