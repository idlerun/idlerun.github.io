---
reponame: simple-ami
layout: repo
page: https://idle.run/simple-ami
title: Simple AMI from EC2 Instance
date: 2016-05-06
tags: aws ec2 python
---

Speaks for itself. A simple Python script to create an AMI from an EC2 instance ID.

### [create_ami.py](https://github.com/idlerun/simple-ami/blob/master/create_ami.py)

```bash
create_ami.py --instance-id INSTANCE_ID --name NAME
```

Where `INSTANCE_ID` is the instance to be copied and `NAME` is the target AMI name.

### Requirements:

* Python3
* Boto (`pip3 install boto3`)
