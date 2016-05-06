---
reponame: openssl-encrypt
layout: repo
title: Simple OpenSSL File Encrypt/Decrypt
tags: bash openssl
date: 2016-05-06
---

Two paired CLI scripts which perform very simple AES-256 encryption of any file
using `openssl aes-256-cbc`. A password is required for any encrypt or decrypt operations

### [encrypt.sh](https://github.com/idlerun/openssl-encrypt/blob/master/encrypt.sh)

### [decrypt.sh](https://github.com/idlerun/openssl-encrypt/blob/master/decrypt.sh)

## Usage:

```bash
$ ls
1.jpg
2.jpg
```

```bash
$ ./encrypt.sh *.jpg
$ ls
1.jpg
1.jpg.enc
2.jpg
2.jpg.enc
```

```bash
$ rm *.jpg
$ ls
1.jpg.enc
2.jpg.enc
```

```bash
$ ./decrypt.sh *.enc
$ ls
1.jpg
1.jpg.enc
2.jpg
2.jpg.enc
```
