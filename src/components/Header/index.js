import { Popover, PopoverButton, PopoverPanel } from "@headlessui/react";
import React from "react";
import Button from "../Button";
import menu from "../../assets/menu-white.svg";
import cancel from "../../assets/cancel-white.svg";

const Header = ({ handleProjectScroll, handleContactScroll }) => {
  return (
    <>
      <Popover className="block tablet:hidden mt-5">
        {({ open }) => (
          <>
            <div className="flex items-center justify-between p-2 laptop:p-0">
              <h1
                onClick={() => {}}
                className="font-medium p-2 laptop:p-0 link"
              >
                zuludin
              </h1>

              <div className="flex items-center">
                <PopoverButton>
                  <img className="h-5" src={!open ? menu : cancel}></img>
                </PopoverButton>
              </div>
            </div>
            <PopoverPanel
              className={`absolute right-0 z-10 w-11/12 p-4 shadow-md rounded-md`}
            >
              <div className="grid grid-cols-1">
                <Button onClick={handleProjectScroll}>Project</Button>
                <Button onClick={() => {}}>Resume</Button>
                <Button onClick={handleContactScroll}>Contact</Button>
              </div>
            </PopoverPanel>
          </>
        )}
      </Popover>
      <div
        className={`mt-10 hidden flex-row items-center justify-between sticky dark:text-white top-0 z-10 tablet:flex`}
      >
        <h1
          onClick={() => {}}
          className="font-medium cursor-pointer mob:p-2 laptop:p-0"
        >
          zuludin
        </h1>
        <div className="flex">
          <Button onClick={handleProjectScroll}>Project</Button>
          <Button
            onClick={() =>
              window.open(
                "https://raw.githubusercontent.com/zuludin04/zuludin04/main/images/project/Zulfikar%20Mauludin%20-%20Software%20Engineer%20(1).pdf"
              )
            }
          >
            Resume
          </Button>
          <Button onClick={handleContactScroll}>Contact</Button>
        </div>
      </div>
    </>
  );
};

export default Header;
