---
title: ''
summary: ''
date: 2026-05-31
type: landing

sections:
  - block: resume-biography-3
    content:
      username: me
      text: ''
      headings:
        about: ''
        education: ''
        interests: ''
    design:
      background:
        gradient_mesh:
          enable: true
      name:
        size: md
      avatar:
        size: medium
        shape: circle

  - block: markdown
    id: research
    content:
      title: 'Research Focus'
      subtitle: ''
      text: |-
        My research applies large-scale empirical methods — listed-firm financial data, consumer purchasing records, and structured field interviews — to three connected questions:

        - **How disasters affect firms and economies** over the long term
        - **Whether Business Continuity Planning (BCP) actually mitigates damage** and accelerates recovery
        - **What interventions translate preparedness intentions into action**

        I am **available for invited talks and international research collaboration**. Please reach out by email.
    design:
      columns: '1'

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
      title: Recent & Upcoming Talks
      filters:
        folders:
          - events
    design:
      view: card

  - block: collection
    id: projects
    content:
      title: Research Themes
      filters:
        folders:
          - projects
    design:
      view: article-grid
      columns: 3
---
