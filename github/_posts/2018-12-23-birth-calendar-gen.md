---
reponame: birth-calendar-gen
layout: repo
page: https://idle.run/birth-calendar-gen
title: "Birthday Calendar Generator"
tags: python
date: 2018-12-23
---

## Overview

Super simpler calendar event generator from a JSON format of important events

## Requirements

Python2

##

## Usage

Edit `calendar.py` to set `tree` and `year` as appropriate for calendar set being written

Edit `dates.json` to include all relevant events.

Run generator

```
python calendar.py
```

Output example:

```
1920-01-10 = Birth: Bob Schmob in 1920-01-10
1980-10-13 = Birth: Jill (Schmill) Schmob turns 39
1998-10-13 = Anniversary: Bob Schmob & Jill Schmill's 21st anniversary
1998-10-14 = Death: Bob Schmob passed in 1998
1980-10-14 = Birth: Bill Schmill turns 39
```

## Note

This code is known to be hideous and bad, but it's short, simple, and works well enough to not be worth the effort to improve.