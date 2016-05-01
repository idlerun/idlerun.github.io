---
title: "Pre-Hashing Passwords In Python"
tags: python mysql linux
---

Hashing passwords beforehand which will be used in scripts or other places can be useful. It allows you to store the hashed value for later use, but keep the original password securely stored elsewhere. Here's how to hash passwords in Python for Unix user accounts and MySQL users.

ENDOFSUMMARY

## Unix Password

~~~python
import crypt
pwd = "MY SECURE PASSWORD"
# yes, the literal string 'password' is the salt
hashed = crypt.crypt(pwd, "password")
print(hashed)
~~~

Set the password on a user with usermod

~~~bash
PASSWORD=$(./codefromabove.py)
usermod --password "$PASSWORD" myuser
~~~

## MySQL Password

~~~python
import hashlib
# mysql pwd is two iterations of sha1
first = hashlib.sha1(pwd.encode('ascii'))
second = hashlib.sha1(first.digest())
return "*" + second.hexdigest().upper()
~~~

Apply it to a user in mysql query

~~~sql
CREATE USER 'myuser'@'localhost' IDENTIFIED BY PASSWORD '{hashed_value_goes_here}';
~~~
