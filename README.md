---
page: https://idle.run
title: "Github Pages with README Sync"
tags: github pages jekyll ruby
date: 2016-05-2
---

# [idle.run](https://idle.run)

This website is designed to showcase interesting projects I'm working on which are hosted on Github.

The content of many posts on this site are synced from the README.md for the project repositories.

## [github-sync.rb](https://github.com/idlerun/idlerun.github.io/blob/master/github-sync.rb)
A custom Ruby script which does the following

* Read the Jekyll site `_config.yml` to get my github username
* Use the github API to list my public repositories
* Sync the README.md from each repository to `github/_posts/{date}-{reponame}.md`

_Note: the `github/_posts` directory indicates a Jekyll category of 'github' containing posts_

### README.md Requirements
Each public repository will be checked for a README.md
The README.md must start with YAML frontmatter like the following

```text
---
title: "Order VS Chaos AI"
tags: c++ ai
date: 2016-05-01
---
```

### Layout
The sync adds to the YAML frontmatter to set a reponame attribute for linking and a page layout of "repo".
My repo layout is available here: [repo.html](https://github.com/idlerun/idlerun.github.io/blob/master/_layouts/repo.html)

## Github Pages
Github Pages is a wonderful free service which hosts either plain HTML or a Jekyll 3 site out of a github repo
[pages.github.com](https://pages.github.com).
More details about setting up with [Jekyll here](https://help.github.com/articles/about-github-pages-and-jekyll/)
