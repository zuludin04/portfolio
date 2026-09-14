import { BrowserRouter, Route, Routes } from "react-router-dom";
import { Navbar } from "./components/Navbar";
import { Footer } from "./components/Footer";
import { HomePageWithFooter } from "./pages/HomePage";
import { CaseStudyPage } from "./pages/CaseStudyPage";

function NotFound() {
  return (
    <>
      <Navbar />
      <main className="not-found shell">
        <p className="eyebrow">404</p>
        <h1>Page not found.</h1>
        <p>The page you are looking for does not exist.</p>
        <a className="button button-dark" href="/">
          Back to portfolio ↗
        </a>
      </main>
      <Footer />
    </>
  );
}

export default function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<HomePageWithFooter />} />
        <Route path="/projects/:slug" element={<CaseStudyPage />} />
        <Route path="*" element={<NotFound />} />
      </Routes>
    </BrowserRouter>
  );
}
