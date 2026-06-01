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

  - block: markdown
    id: research
    content:
      title: 'Research Approach'
      subtitle: ''
      text: |-
        I study how disasters reshape firms, households, and local economies — and which interventions actually build resilience. My approach combines three lines of evidence:

        - **Quantitative empirics** — listed-firm financial panels, retail POS data, household surveys
        - **Causal inference** — difference-in-differences, propensity-score matching, synthetic control
        - **Field engagement** — structured interviews with SMEs, local governments, and disaster-affected firms

        These methods are applied to three connected questions:

        1. **How disasters affect firms and economies** over the long term
        2. **Whether Business Continuity Planning (BCP) actually mitigates damage** and accelerates recovery
        3. **What interventions translate preparedness intentions into action**

        → For deep-dives by topic, see the **Research Themes** below.

        I am **available for invited talks and international research collaboration**. Please reach out by email.
    design:
      columns: '1'

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
