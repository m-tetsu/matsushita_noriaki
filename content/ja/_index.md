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

  - block: markdown
    id: research
    content:
      title: '研究アプローチ'
      subtitle: ''
      text: |-
        災害が企業・家計・地域経済に与える影響と、レジリエンス強化に有効な施策を、実証的なエビデンスにもとづいて研究しています。アプローチは次の3本柱です。

        - **定量的実証分析** — 上場企業の財務パネルデータ、小売POSデータ、家計調査
        - **因果推論** — 差分の差分（DID）、傾向スコアマッチング、合成統制法
        - **現場での調査** — 中小企業、自治体、被災企業への構造化インタビュー

        これらを以下の3つの問いに適用しています。

        1. **災害が企業と経済に与える長期的影響**
        2. **BCP（事業継続計画）は実際に被害を軽減し、復旧を加速させるか**
        3. **「備える意思」を「備える行動」につなげる施策は何か**

        → テーマ別の詳細は下の **研究テーマ** を参照ください。

        **招待講演・国際的な共同研究を歓迎しております。** お気軽にメールでご連絡ください。
    design:
      columns: '1'

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
