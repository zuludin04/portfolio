import { Popover } from "@headlessui/react";
import React, { useEffect, useState } from "react";
import Button from "../Button";
import data from "../../data/portfolio.json";
import menu from "../../assets/menu-white.svg";
import cancel from "../../assets/cancel-white.svg";

const Header = ({ handleWorkScroll, handleAboutScroll, isBlog }) => {
  const [mounted, setMounted] = useState(false);

  const { name, showBlog, showResume } = data;

  useEffect(() => {
    setMounted(true);
  }, []);

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
                {name}.
              </h1>

              <div className="flex items-center">
                <Popover.Button>
                  <img className="h-5" src={!open ? menu : cancel}></img>
                </Popover.Button>
              </div>
            </div>
            <Popover.Panel
              className={`absolute right-0 z-10 w-11/12 p-4 shadow-md rounded-md`}
            >
              {!isBlog ? (
                <div className="grid grid-cols-1">
                  <Button onClick={handleWorkScroll}>Work</Button>
                  <Button onClick={handleAboutScroll}>About</Button>
                  {showBlog && <Button onClick={() => {}}>Blog</Button>}
                  {showResume && (
                    <Button
                      onClick={() =>
                        window.open("mailto:hello@chetanverma.com")
                      }
                    >
                      Resume
                    </Button>
                  )}

                  <Button
                    onClick={() => window.open("mailto:hello@chetanverma.com")}
                  >
                    Contact
                  </Button>
                </div>
              ) : (
                <div className="grid grid-cols-1">
                  <Button onClick={() => {}} classes="first:ml-1">
                    Home
                  </Button>
                  {showBlog && <Button onClick={() => {}}>Blog</Button>}
                  {showResume && (
                    <Button onClick={() => {}} classes="first:ml-1">
                      Resume
                    </Button>
                  )}

                  <Button
                    onClick={() => window.open("mailto:hello@chetanverma.com")}
                  >
                    Contact
                  </Button>
                </div>
              )}
            </Popover.Panel>
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
          {name}.
        </h1>
        {!isBlog ? (
          <div className="flex">
            <Button onClick={handleWorkScroll}>Work</Button>
            <Button onClick={handleAboutScroll}>About</Button>
            {showBlog && <Button onClick={() => {}}>Blog</Button>}
            {showResume && (
              <Button onClick={() => {}} classes="first:ml-1">
                Resume
              </Button>
            )}

            <Button onClick={() => window.open("mailto:hello@chetanverma.com")}>
              Contact
            </Button>
          </div>
        ) : (
          <div className="flex">
            <Button onClick={() => {}}>Home</Button>
            {showBlog && <Button onClick={() => {}}>Blog</Button>}
            {showResume && (
              <Button onClick={() => {}} classes="first:ml-1">
                Resume
              </Button>
            )}

            <Button onClick={() => window.open("mailto:hello@chetanverma.com")}>
              Contact
            </Button>
          </div>
        )}
      </div>
    </>
  );
};

export default Header;
