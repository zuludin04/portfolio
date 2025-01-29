import React from "react";
import "../../App.css";

const Button = ({ children, onClick }) => {
  return (
    <button
      onClick={onClick}
      type="button"
      className={`text-sm tablet:text-base p-1 laptop:p-2 m-1 laptop:m-2 rounded-lg flex items-center transition-all ease-out duration-300 bg-[#f8f1f6] hover:bg-slate-600 text-black hover:text-white tablet:first:ml-0 link`}
    >
      {children}
    </button>
  );
};

export default Button;
