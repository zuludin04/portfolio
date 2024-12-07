import "./App.css";
import { Route, Routes } from "react-router-dom";
import HomePage from "./pages/HomePage";
import ProjectsPage from "./pages/ProjectsPage";
import ProjectDetailPage from "./pages/ProjectDetailPage";
import { AnimatePresence } from "framer-motion";

function App() {
  return (
    <div className="portfolio-app">
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
