---
layout: post
---

{{ content }}
{% capture repo_content %}{% include github-repo.md %}{% endcapture %}
{{ repo_content | markdownify }}