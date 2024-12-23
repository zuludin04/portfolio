import { Link } from "react-router-dom";
import Socials from "../components/Socials";
import { RxDashboard } from "react-icons/rx";
import { motion } from "framer-motion";

function HomePage() {
  return (
    <motion.div
      initial={{ y: 10, opacity: 0 }}
      animate={{ y: 0, opacity: 1 }}
      exit={{ y: -10, opacity: 0 }}
      transition={{ duration: 0.2 }}
      className="flex flex-col items-center h-screen p-12"
    >
      <div className="flex flex-col justify-center items-center w-full grow self-center">
        <h1
          className="text-3xl tablet:text-6xl laptop:text-6xl text-bold"
          style={{ lineHeight: 1.3 }}
        >
          Hallo 👋 <br />
          Zulfikar here, <br />
          Let's build great <br />
          Things together
        </h1>
        <Socials />
      </div>

      <Link to={"/projects"}>
        <div className="flex flex-col items-center link">
          <button
            type="button"
            className="rounded-lg bg-slate-400 text-white p-1"
          >
            <RxDashboard size={32} />
          </button>
          <p>Projects</p>
        </div>
      </Link>
    </motion.div>
  );
}

export default HomePage;
