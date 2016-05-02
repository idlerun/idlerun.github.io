---
reponame: gradle-app
layout: repo
title: "Gradle Application Customization"
tags: swagger api nodejs
date: 2016-04-12
---

The Gradle application plugin is very useful for generating a distributable application package. There are some customizations that are useful to have available.

### [build.gradle](https://github.com/idlerun/gradle-app/blob/master/build.gradle)

* `baseName = 'myapp'` Customize the script file name
* Add extra default JVM options
* Add an extra path to classpath (IE for log4j properties loading from classpath)
* Delete the windows bat file script
