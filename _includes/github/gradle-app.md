---
title: "Gradle Application Customization"
tags: swagger api nodejs
---

The Gradle application plugin is very useful for generating a distributable application package. There are some customizations that are useful to have available.

ENDOFSUMMARY

### build.gradle

``` gradle
apply plugin: 'application'
mainClassName = "com.myapp.Main"
applicationName = "myapp"

distributions {
    main {
        baseName = 'myapp'
    }
}

tasks.startScripts {
    defaultJvmOpts = ["-server", "-Xmx2048m", "-XX:+AggressiveOpts" ]
    doLast {
        def unixScriptFile = file getUnixScript()
        unixScriptFile.text = unixScriptFile.text.replace('CLASSPATH=$APP_HOME/lib', 'CLASSPATH=$APP_HOME/config/:$APP_HOME/lib')
        delete windowsScript
    }
}
```

* `baseName = 'myapp'` Customize the script file name

* Add extra default JVM options

* Add an extra path to classpath (IE for log4j properties loading from classpath)

* Delete the windows bat file script
