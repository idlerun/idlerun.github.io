---
title: "Github Pages with README Sync"
tags: github pages jekyll ruby
date: 2016-05-2
---

# [idle.run](http://idle.run)

This website is designed to showcase interesting projects I'm working on which are hosted on Github.

I wanted to keep the README.md along with the projects since that is the most sensible place to describe the project itself. I *also* wanted to have my website show details about each project.

To avoid making duplicate files in each repository, I instead wrote a simple ruby script which syncs my README.md files from each repository I own into my `_includes` directory.

## [github-sync.rb](https://github.com/idlerun/idlerun.github.io/blob/master/github-sync.rb)
A custom, very simple ruby script I wrote which does the following

* Read the Jekyll site `_config.yml` to get my github username
* Use the github API to list my public repositories
* Sync the README.md from each repository to `_includes/github/{reponame}.md`

## Page Layout

[_layouts/repo.html](https://github.com/idlerun/idlerun.github.io/blob/master/_layouts/repo.html) is
a template which extends `post`.
Unfortunately templates can only be written in HTML, not markdown. So I had the layout simply capture an `_include` and
run it through markdownify to make it into html.

[_includes/github-repo.md](https://raw.githubusercontent.com/idlerun/idlerun.github.io/master/_includes/github-repo.md) is
the include which is read in by the repo.html template. It expects a `page.reponame` attribute _(inside the --- at top of file)_ which indicates what repository README.md to include and to link to with a 'project page' link.

A [post](https://github.com/idlerun/idlerun.github.io/blob/master/_posts/2016-05-01-order-chaos.md) ends up looking like this

```text
---
layout: repo
title: "Order VS Chaos AI"
tags: c++ ai
reponame: chaos
---
```

And everything else is handled automatically.

## Github Pages
Github Pages is a wonderful free service which hosts either plain HTML or a Jekyll 3 site out of a github repo
[pages.github.com](https://pages.github.com).
More details about setting up with [Jekyll here](https://help.github.com/articles/about-github-pages-and-jekyll/)

