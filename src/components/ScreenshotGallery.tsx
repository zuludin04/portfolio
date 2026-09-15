import type { Screenshot } from "../data/projects";

export function ScreenshotGallery({
  screenshots,
  compact = false,
}: {
  screenshots: Screenshot[];
  compact?: boolean;
}) {
  if (!screenshots.length)
    return (
      <div className="project-placeholder">
        <span>BU</span>
        <small>Visuals coming soon</small>
      </div>
    );
  return (
    <div className={`screenshot-gallery ${compact ? "compact" : ""}`}>
      {screenshots.map((shot, index) => (
        <figure
          className={`screenshot-frame screenshot-${index + 1}`}
          key={shot.src}
        >
          <img
            src={shot.src}
            alt={shot.alt}
            loading={compact || index === 0 ? "eager" : "lazy"}
          />
        </figure>
      ))}
    </div>
  );
}

export function ScreenshotStrip({
  screenshots,
}: {
  screenshots: Screenshot[];
}) {
  if (!screenshots.length) return null;
  return (
    <div className="screenshot-strip">
      {screenshots.map((shot) => (
        <img key={shot.src} src={shot.src} alt={shot.alt} loading="lazy" />
      ))}
    </div>
  );
}
