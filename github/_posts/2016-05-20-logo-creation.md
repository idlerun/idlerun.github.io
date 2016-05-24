---
reponame: logo-creation
layout: repo
page: http://www.idle.run/logo-creation
title: "Simple Logo and FavIcon Creation"
tags: logo favicon
date: 2016-05-20
---

### Install [Sketch App](http://www.sketchapp.com/) and ImageMagick

```bash
brew cask install sketch
brew install imagemagick
```

### Create a logo
Design a logo in Sketch using vector components. Export the result to an SVG

### Convert the SVG to favicon formats

**With the ImageMagick `convert` command**

```bash
convert -density 300 -background transparent myicon.svg -define icon:auto-resize=64,48,32,16 favicon.ico
convert -density 300 -background transparent myicon.svg -resize 64x64 favicon.png
```

### Use the icon
Copy `favicon.ico` and `favicon.png` to your site root

Add the following to your page `<head>` section

```html
<link rel="icon" type="image/png" href="/favicon.png"/>
```

This should work on almost all browsers. [Wiki](https://en.wikipedia.org/wiki/Favicon#How_to_use)

* Those with PNG favicon support will use `favicon.png`
* Others will fallback on trying the default `/favicon.ico`
