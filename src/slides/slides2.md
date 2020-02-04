% EMAT10006 - FCP - Lecture 02
% Oscar Benjamin
% Week 14


Today (week 14)
---------------

* Assignment up (deadline Tuesday week 16)
* Functions and exceptions
* Git and github


Assignment
----------

* 25% of the unit mark
* Make a CLI Caesar cypher (not hard).
* Use the tests provided
* Get spec and code from Github Classroom
* Submission through Github Classroom
* Instructions in the worksheet on Friday


Functions in a script
---------------------

~~~python
# myscript.py

def double(thing):
    """Doubles the thing"""
    return thing + thing

print(double(2))
print(double([1, 2]))
print(double("foo"))
~~~

Run in the terminal:

~~~shell
$ python myscript.py
4
[1, 2, 1, 2]
'foofoo'
~~~


Why functions
-------------

* Break up code into small pieces
* Good function names improve readability
* Reuse code
* Don't repeat yourself (DRY)
* One place to fix bugs


Functions in a module
---------------------

~~~python
# myscript.py

def double(thing):
    """Doubles the thing"""
    return thing + thing
~~~

Run in the *Python* shell:

~~~python
>>> from myscript import double
>>> double(4)
8
~~~


Function execution
------------------

DEMO...


Good names
----------

~~~python
# Call func1
var1 = func1(var2)
~~~

VS

~~~python
# All components are equally weighted
unit_mark = mean(component_marks)
~~~

* Variable and function names can explain code
* Comments should explain non-obvious things


Raising exceptions
------------------

~~~python
def get_first_name(student_number):
    """Return first name of the student with this student number"""

    if student_number not in registered_students:
        raise ValueError("No such student registered %s" % student_number)

    details = registered_students[student_number]
    return details['firstname']
~~~

Use exceptions when it is not possible to return something sensible


Seeing Exceptions
-----------------

~~~python
>>> x = 2
>>> x.upper()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'int' object has no attribute 'upper'
>>> 2 + [3]
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: unsupported operand type(s) for +: 'int' and 'list'
~~~

Traceback
---------

~~~python
>>> import subprocess
>>> subprocess.run('foo')
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File ".../lib/python3.8/subprocess.py", line 489, in run
    with Popen(*popenargs, **kwargs) as process:
  File ".../lib/python3.8/subprocess.py", line 854, in __init__
    self._execute_child(args, executable, preexec_fn, close_fds,
  File ".../lib/python3.8/subprocess.py", line 1702, in _execute_child
    raise child_exception_type(errno_num, err_msg, err_filename)
FileNotFoundError: [Errno 2] No such file or directory: 'foo'
~~~


Traceback demo
--------------

Demo...

Make sure you read the traceback!


Catching exceptions
-------------------

~~~python
number_string = input("Please enter a number: ")
try:
    number = int(number_string)
except ValueError:
    print("Not a valid number. Found '%s'" number_string)
~~~

* Catch exception to handle failure (if expected!)
* Usually best not to catch the exception
* Catch *only* the exception you expect


Git
---

* Version constrol system
* Useful for collaborating on large codebases
* Originally for Linux code (30 million lines)
* Created by [Linus Torvalds](https://en.wikipedia.org/wiki/Linus_Torvalds)
* [Rant](http://lkml.iu.edu/hypermail/linux/kernel/1707.3/02367.html)


Github
------

* Provides a remote git server for free
* Has a web front-end for navigating the code
* Makes it easy to fork and open pull requests
* More on this later...


Start a git project
-------------------

* Create repo on Github
* Clone the repo

```shell
$ git clone https://github.com/myname/myrepo.git
$ cd myrepo
$ git status
```


Change the code
---------------

```
$ git status       # Check all clean
$ gedit README.md  # Make changes and save
$ git status       # Shows changed files
$ git diff         # Shows the changes
```

```
diff --git a/t.py b/t.py
index c5d61cf..fbcc63c 100644
--- a/t.py
+++ b/t.py
@@ -1,7 +1,7 @@
 def myfunction(x):
     y = 2
     z = 3
-    return y + z - x
+    return [y + z - x]

 # here is some code
```


Commit the changes
------------------

```shell
$ git status
$ git diff
$ git add README.md   # Tell git you want to commit
$ git commit -m "Add installation instructions in README"
```


Committing
----------

* Always check (`status/diff`) before committing.
* Git saves the commit as a "version" of your code.
* Can make more changes and commits after
* Use good commit messages


Push/pull
---------

* Git stores commits in the `.git` folder.
* Use push to send them to github

```
$ git status   # Always check clean first
$ git log      # What am I pushing?
$ git push
```

Use `git pull` to get changes *from* github.


Git
---

* Stores every commit forever
* Use `git log` to see commits
* Can switch to old commits (`git checkout ab1234`)
* Use `git checkout master` to get to latest commit
* Result is visible on Github straight away


That's all
----------

* Make sure you register for the assignment in the lab on Friday
