import { useEffect } from "react";
import { Navigate, useParams } from "react-router-dom";
import { CaseStudy } from "../components/CaseStudy";
import { Footer } from "../components/Footer";
import { Navbar } from "../components/Navbar";
import { getProject } from "../data/projects";

export function CaseStudyPage() {
  const { slug } = useParams<{ slug: string }>();
  const project = slug ? getProject(slug) : undefined;
  if (!project) return <Navigate to="/" replace />;
  const nextProject = project.nextSlug
    ? getProject(project.nextSlug)
    : undefined;
  useEffect(() => {
    document.title = `${project.name} — Zulfikar Mauludin`;
  }, [project.name]);
  return (
    <>
      <Navbar />
      <CaseStudy project={project} nextProject={nextProject} />
      <Footer />
    </>
  );
}
