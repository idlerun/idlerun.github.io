---
title: "Github Pages with README Sync"
tags: github pages jekyll ruby
date: 2016-05-2
---

# [idle.run](http://idle.run)

This website is designed to showcase interesting projects I'm working on which are hosted on Github.

I wanted to keep the README.md along with the projects since that is the most sensible place to describe the project itself. I *also* wanted to have my website show details about each project.

To avoid making duplicate files in each repository, I instead wrote a simple ruby script which syncs my README.md files from each repository I own into a `_posts` directory.

## [github-sync.rb](https://github.com/idlerun/idlerun.github.io/blob/master/github-sync.rb)
A custom, very simple ruby script I wrote which does the following

* Read the Jekyll site `_config.yml` to get my github username
* Use the github API to list my public repositories
* Sync the README.md from each repository to `github/_posts/{date}-{reponame}.md`

_Note: the `github/_posts` directory indicates a Jekyll category of 'github' containing posts_

### README.md Requirements
Each repository will be checked for a README.md
It will only be synced as a post if the README.md starts with YAML frontmatter like the following

```text
---
title: "Order VS Chaos AI"
tags: c++ ai
date: 2016-05-01
---
```

Everything else is handled automatically

## Github Pages
Github Pages is a wonderful free service which hosts either plain HTML or a Jekyll 3 site out of a github repo
[pages.github.com](https://pages.github.com).
More details about setting up with [Jekyll here](https://help.github.com/articles/about-github-pages-and-jekyll/)

