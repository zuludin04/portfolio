import type { ProjectLink, LinkStatus } from '../data/projects'

const statusLabel: Record<LinkStatus, string> = {
  available: 'Available',
  'coming-soon': 'Coming soon',
  'not-available': 'Not available',
}

export function ProjectLinks({ links, compact = false }: { links: ProjectLink[]; compact?: boolean }) {
  return (
    <div className={`project-links ${compact ? 'compact' : ''}`}>
      {links.map(link => {
        const content = <><span>{link.label}</span><small>{statusLabel[link.status]}</small></>
        if (link.status === 'available' && link.url) {
          return <a key={link.label} className="available" href={link.url} target="_blank" rel="noreferrer">{content} <span aria-hidden>↗</span></a>
        }
        return <span key={link.label} className={`project-link-disabled ${link.status}`}>{content}</span>
      })}
    </div>
  )
}
