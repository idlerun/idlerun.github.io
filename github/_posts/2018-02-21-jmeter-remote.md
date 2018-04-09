---
reponame: jmeter-remote
layout: repo
page: https://idle.run/jmeter-remote
title: "Remote JMeter over SSH"
tags: jmeter ssh
date: 2018-02-21
---

To control JMeter running on a remote server over SSH.

Reference: https://blog.ionelmc.ro/2012/02/16/how-to-run-jmeter-over-ssh-tunnel/

## Client Wrapper

Automatically download JMeter client as required

[jmeter wrapper](jmeter.sh)

```
#!/bin/bash
cd $(dirname $0)
if [[ ! -d .jmeter ]] || [[ ! -d .jmeter/apache-jmeter-4.0 ]]; then
  echo "Downloading jmeter.."
  mkdir -p .jmeter
  pushd .jmeter &>/dev/null
  curl -Ss http://muug.ca/mirror/apache-dist/jmeter/binaries/apache-jmeter-4.0.tgz | pv | tar x
  popd
fi

exec .jmeter/apache-jmeter-4.0/bin/jmeter "$@"
```

## Client Command

[jmeter-remote-client](jmeter-remote-client.sh)

```
./jmeter.sh -Djava.rmi.server.hostname=127.0.0.1 \
  -Jremote_hosts=127.0.0.1:55501 \
  -Jclient.rmi.localport=55512 \
  -Jmode=Batch \
  -Jnum_sample_threshold=250 \
  -Jserver.rmi.ssl.disable=true
```

## Server Command

[jmeter-remote-server](jmeter-remote-server.sh)

```
./jmeter.sh -s -Djava.rmi.server.hostname=127.0.0.1 \
  -Jserver_port=55501 \
  -Jserver.rmi.localhostname=127.0.0.1 \
  -Jserver.rmi.localport=55511 \
  -Jserver.rmi.ssl.disable=true
```

## SSH Command

```
ssh -L 55501:127.0.0.1:55501 -L 55511:127.0.0.1:55511 -R 55512:127.0.0.1:55512 user@hostname
```


