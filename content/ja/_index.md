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
        about: '概要'
        interests: '研究関心'
        education: '学歴'
        experience: '職歴'
        skills: 'スキル'
        languages: '言語'
        awards: '受賞'
        memberships: '所属学会'
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
      title: 研究テーマ
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
      title: 主要論文
      filters:
        folders:
          - publications
        featured_only: true
    design:
      view: article-grid
      columns: 2

  - block: collection
    content:
      title: 論文一覧
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
      title: 講演
      filters:
        folders:
          - events
    design:
      view: article-grid
      columns: 3
---
