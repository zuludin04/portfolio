import "./App.css";
import { Route, Routes } from "react-router-dom";
import HomePage from "./pages/HomePage";
import ProjectDetailPage from "./pages/ProjectDetailPage";

function App() {
  return (
    <div>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/project/:id" element={<ProjectDetailPage />} />
      </Routes>
    </div>
  );
}

export default App;
