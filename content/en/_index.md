---
title: ''
summary: ''
date: 2024-01-01
type: landing

sections:
  - block: resume-biography-3
    id: about
    content:
      username: me
      text: ''
      headings:
        about: 'About'
        interests: 'Interests'
        education: 'Education'
        experience: 'Experience'
        skills: 'Skills'
        languages: 'Languages'
        awards: 'Awards'
        memberships: 'Memberships'
    design:
      background:
        gradient_mesh:
          enable: false
      name:
        size: md
      avatar:
        size: medium
        shape: circle

  - block: collection
    id: projects
    content:
      title: Themes
      filters:
        folders:
          - projects
      sort_by: weight
      sort_ascending: true
    design:
      view: article-grid
      columns: 3

  - block: collection
    id: papers
    content:
      title: Featured Publications
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2

  - block: collection
    content:
      title: Recent Publications
      text: ''
      filters:
        folders:
          - publications
        exclude_featured: false
    design:
      view: citation

  - block: collection
    id: talks
    content:
      title: Talks
      filters:
        folders:
          - events
    design:
      view: article-grid
      columns: 3
---
