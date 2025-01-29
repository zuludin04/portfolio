import "./App.css";
import { Route, Routes } from "react-router-dom";
import HomePage from "./pages/HomePage";
import ProjectDetailPage from "./pages/ProjectDetailPage";
import { AnimatePresence } from "framer-motion";
import Navigation from "./components/Navigation";
import logo from "./assets/logo-black.png";

function App() {
  return (
    <div>
      <header className="flex flex-row">
        <img src={logo} style={{ width: 48, height: 48, marginRight: 16 }} />
        <Navigation />
      </header>
      <main className="portfolio-app">
        <AnimatePresence mode="wait">
          <Routes>
            <Route path="/" element={<HomePage />} />
            <Route path="/project/:id" element={<ProjectDetailPage />} />
          </Routes>
        </AnimatePresence>
      </main>
    </div>
  );
}

export default App;
