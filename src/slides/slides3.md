% EMAT10006 - FCP - Lecture 03
% Oscar Benjamin
% Week 15


Today (week 15)
---------------

* Assignment due on Tuesday
* Git/github repos and workflow
* Python modules and packages


Assignment
----------

Register for the assignment!


Git repos
---------

* A git repository is just a directory containing a `.git` directory.
* The .git directory contains all the commits and other stuff.
* The other files are the working tree.

Create a local repo
```shell
$ mkdir myproject
$ cd myproject
$ git init
Initialized empty Git repository in
~/myproject/.git/
```


Connecting repos
----------------

* Normal way is to create a repo on Github
* You "clone" the repo creating a local repo on your computer
* Can clone many times to create multiple repos

Create on Github and clone
```shell
<create on github and copy URL>
$ git clone https://github.com/myname/myproject.git
$ cd myproject
```

Multiple repos
--------------

You can clone a repo more than once:
```
                    github repo
                   /           \
          laptop repo         desktop repo
```
A cloned repo will be initialised with a remote repo called "origin":




That is all
-----------

* Make sure you register for the assignment in the lab on Friday
