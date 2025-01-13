import "./App.css";
import { Route, Routes } from "react-router-dom";
import HomePage from "./pages/HomePage";
import ProjectsPage from "./pages/ProjectsPage";
import ProjectDetailPage from "./pages/ProjectDetailPage";
import { AnimatePresence } from "framer-motion";
import Navigation from "./components/Navigation";
import logo from "./assets/logo.png";

function App() {
  return (
    <div className="portfolio-app">
      <header>
        <img src={logo} width={48} />
        <Navigation />
      </header>
      <main>
        <AnimatePresence mode="wait">
          <Routes>
            <Route path="/" element={<HomePage />} />
            <Route path="/projects" element={<ProjectsPage />} />
            <Route path="/project/:id" element={<ProjectDetailPage />} />
          </Routes>
        </AnimatePresence>
      </main>
    </div>
  );
}

export default App;
