import { Link } from "react-router-dom";
import Socials from "../components/Socials";
import { RxDashboard } from "react-icons/rx";

function HomePage() {
  return (
    <div className="flex flex-col justify-between items-center h-screen p-12">
      <div className="mt-5">
        <h1
          className="text-3xl tablet:text-6xl laptop:text-6xl laptopl:text-8xl text-bold"
          style={{ lineHeight: 1.3 }}
        >
          Hallo 👋 <br />
          Zulfikar here, <br />
          Let's build great <br />
          Things together
        </h1>
        <Socials className="mt-2 laptop:mt-2" />
      </div>

      <Link to={"/projects"}>
        <div className="flex flex-col items-center link">
          <button
            type="button"
            className="rounded-lg bg-slate-400 text-white tablet:first:ml-0 p-1"
          >
            <RxDashboard size={32} />
          </button>
          <p>Projects</p>
        </div>
      </Link>
    </div>
  );
}

export default HomePage;