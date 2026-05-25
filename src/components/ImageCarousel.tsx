import { useRef, useState, useCallback, useEffect } from "react";
import styles from "./ImageCarousel.module.css";

interface Props {
  slides: string[];
  height?: number;
  fit?: "cover" | "contain";
}

export default function ImageCarousel({
  slides,
  height = 210,
  fit = "cover",
}: Props) {
  const [current, setCurrent] = useState(0);
  const trackRef = useRef<HTMLDivElement>(null);
  const dragStart = useRef<number | null>(null);
  const dragged = useRef(false);

  const [bgColors, setBgColors] = useState<string[]>([]);

  const computeAverageColor = (img: HTMLImageElement): string | null => {
    try {
      const w = 40;
      const h = 40;
      const canvas = document.createElement("canvas");
      canvas.width = w;
      canvas.height = h;
      const ctx = canvas.getContext("2d");
      if (!ctx) return null;
      ctx.drawImage(img, 0, 0, w, h);
      const data = ctx.getImageData(0, 0, w, h).data;
      let r = 0,
        g = 0,
        b = 0,
        count = 0;
      const step = 4 * 2; // sample every 2nd pixel
      for (let i = 0; i < data.length; i += step) {
        r += data[i];
        g += data[i + 1];
        b += data[i + 2];
        count++;
      }
      if (count === 0) return null;
      r = Math.round(r / count);
      g = Math.round(g / count);
      b = Math.round(b / count);
      return `rgb(${r}, ${g}, ${b})`;
    } catch (err) {
      // likely cross-origin image; can't access pixels
      return null;
    }
  };

  const handleImageLoad = (idx: number, img: HTMLImageElement) => {
    // compute color and set into state; ignore if already set
    setBgColors((prev) => {
      if (prev[idx]) return prev;
      const copy = prev.slice();
      const col = computeAverageColor(img) || "";
      copy[idx] = col;
      return copy;
    });
  };

  const goTo = useCallback(
    (idx: number) => {
      setCurrent(Math.max(0, Math.min(slides.length - 1, idx)));
    },
    [slides.length],
  );

  // Drag / swipe
  const onPointerDown = (e: React.PointerEvent) => {
    dragStart.current = e.clientX;
    dragged.current = false;
    trackRef.current?.setPointerCapture(e.pointerId);
  };
  const onPointerMove = (e: React.PointerEvent) => {
    if (dragStart.current === null) return;
    if (Math.abs(e.clientX - dragStart.current) > 6) dragged.current = true;
  };
  const onPointerUp = (e: React.PointerEvent) => {
    if (dragStart.current === null) return;
    const diff = e.clientX - dragStart.current;
    if (dragged.current && Math.abs(diff) > 40)
      goTo(current + (diff < 0 ? 1 : -1));
    dragStart.current = null;
  };

  const stopProp = (e: React.MouseEvent) => {
    if (dragged.current) e.preventDefault();
  };

  // Lightbox / full-size viewer
  const [viewerOpen, setViewerOpen] = useState(false);
  const [viewerIndex, setViewerIndex] = useState(0);

  useEffect(() => {
    if (!viewerOpen) return;
    const onKey = (e: KeyboardEvent) => {
      if (e.key === "Escape") setViewerOpen(false);
      if (e.key === "ArrowLeft") setViewerIndex((i) => Math.max(0, i - 1));
      if (e.key === "ArrowRight")
        setViewerIndex((i) => Math.min(slides.length - 1, i + 1));
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  }, [viewerOpen, slides.length]);

  return (
    <div className={styles.root} style={{ height }}>
      {/* Track */}
      <div
        ref={trackRef}
        className={styles.track}
        style={{ transform: `translateX(-${current * 100}%)` }}
        onPointerDown={onPointerDown}
        onPointerMove={onPointerMove}
        onPointerUp={onPointerUp}
        onClick={stopProp}
      >
        {slides.map((slide, i) => {
          return (
            <div
              key={i}
              className={styles.slide}
              style={{ backgroundColor: bgColors[i] || undefined }}
            >
              <img
                src={slide}
                alt={`Slide ${i + 1}`}
                className={styles.slideImage}
                loading="lazy"
                decoding="async"
                draggable={false}
                crossOrigin="anonymous"
                onLoad={(e) => handleImageLoad(i, e.currentTarget)}
                onDragStart={(e) => e.preventDefault()}
                onClick={(e) => {
                  // ignore clicks that were actually drags
                  if (dragged.current) return;
                  e.stopPropagation();
                  setViewerIndex(i);
                  setViewerOpen(true);
                }}
                style={{ objectFit: fit, objectPosition: "center" }}
              />
            </div>
          );
        })}
      </div>

      {/* Prev */}
      {current > 0 && (
        <button
          className={`${styles.navBtn} ${styles.navLeft}`}
          onClick={(e) => {
            e.preventDefault();
            e.stopPropagation();
            goTo(current - 1);
          }}
          aria-label="Previous slide"
        >
          ‹
        </button>
      )}

      {/* Next */}
      {current < slides.length - 1 && (
        <button
          className={`${styles.navBtn} ${styles.navRight}`}
          onClick={(e) => {
            e.preventDefault();
            e.stopPropagation();
            goTo(current + 1);
          }}
          aria-label="Next slide"
        >
          ›
        </button>
      )}

      {/* Dots */}
      <div className={styles.dots}>
        {slides.map((_, i) => (
          <button
            key={i}
            className={`${styles.dot} ${i === current ? styles.dotActive : ""}`}
            onClick={(e) => {
              e.preventDefault();
              e.stopPropagation();
              goTo(i);
            }}
            aria-label={`Go to slide ${i + 1}`}
          />
        ))}
      </div>

      {/* Counter */}
      <div className={styles.counter}>
        {current + 1} / {slides.length}
      </div>

      {viewerOpen && (
        <div
          className={styles.lightbox}
          onClick={() => setViewerOpen(false)}
          role="dialog"
          aria-modal="true"
        >
          <button
            className={styles.lightboxClose}
            onClick={(e) => {
              e.stopPropagation();
              setViewerOpen(false);
            }}
            aria-label="Close image"
          >
            ✕
          </button>

          {viewerIndex > 0 && (
            <button
              className={`${styles.lightboxNav} ${styles.lightboxPrev}`}
              onClick={(e) => {
                e.stopPropagation();
                setViewerIndex((i) => Math.max(0, i - 1));
              }}
              aria-label="Previous image"
            >
              ‹
            </button>
          )}

          {viewerIndex < slides.length - 1 && (
            <button
              className={`${styles.lightboxNav} ${styles.lightboxNext}`}
              onClick={(e) => {
                e.stopPropagation();
                setViewerIndex((i) => Math.min(slides.length - 1, i + 1));
              }}
              aria-label="Next image"
            >
              ›
            </button>
          )}

          <img
            src={slides[viewerIndex]}
            alt={`Image ${viewerIndex + 1}`}
            className={styles.lightboxImage}
            onClick={(e) => e.stopPropagation()}
          />
        </div>
      )}
    </div>
  );
}
