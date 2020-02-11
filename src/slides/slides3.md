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


Git workflow
------------

```
$ cd myproject
$ git status    # check clean before starting
<edit stuff.txt>

$ git status
$ git diff      # check changes before committing
$ git add stuff.txt

$ git status
$ git commit -m "Explain feature X in stuff.txt"

$ git status
$ git push      # send commits to github
```

You should run `git status/diff` all the time


Current state
-------------

Repo state is characterised by:

* files -- the actual files you use and edit
* index -- changes added but not committed
* HEAD -- the last commit


Demo
----

Demo of `git diff/add/commit/--cached`


Commits
-------

* Commits are a sequence of changes of the code
* The commit you are currently on is called HEAD.
* Editing changes the files
```
Clean:

A --> B --> C
           HEAD/index/files


After editing:

A --> B --> C
           HEAD/index --> files
```

Adding
------

* `git add` copies changes from files to index.
* Afterwards index and files are the same.

```
Before:

A --> B --> C
           HEAD/index --> files


After git add:

A --> B --> C
           HEAD --> index/files
```

Committing
----------

* `git commit` makes the index a new commit.
* HEAD is advanced to that commit.
* Afterwards index and HEAD are the same.

```
Before:

A --> B --> C
           HEAD --> index/files


After git commit:

A --> B --> C --> D
                 HEAD/index/files
```

That is all
-----------

* Make sure you register for the assignment in the lab on Friday
