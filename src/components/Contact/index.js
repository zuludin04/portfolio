import React from "react";
import Socials from "../Socials";

const Contact = () => {
  return (
    <div id="contact" key={"contact"} className="section-container mt-6">
      <div className="w-full flex flex-col items-center">
        <p className="border-b-4 border-[#f8f1f6] font-semibold text-2xl text-stone-600">
          Contact
        </p>
      </div>
      <div className="contact-container flex flex-col justify-center">
        <div>
          <div>
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
    </div>
  );
};

export default Contact;
