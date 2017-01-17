---
layout: default
permalink: /projects/
---

# Projects

Listed below are some of the projects that I have either been involved with or am currently working on.

## fsq

[![Download](https://api.bintray.com/packages/upcrob/generic/fsq/images/download.svg)](https://bintray.com/upcrob/generic/fsq/_latestVersion)

[fsq](https://github.com/upcrob/fsq) is a small, simple utility for querying the file system.  I have frequently needed to find files that match a certain set of critera (e.g. size has to be 100 kilobytes, filename endswith '.java', the file contains a certain set of keywords, etc).  While this can be done to some extent with existing *nix tools or by writing a script, looking up the specific flags or even writing a quick script can be a pain, especially when optimization comes into play (e.g. don't read the file if you don't have to).  The fsq utility (as seen on TV) does all of this and more with a small SQL-like language.  Plus I'm a bit of a parser nut, so it gives me an outlet for that.

## jOTP

[![Download](https://api.bintray.com/packages/upcrob/generic/jOTP/images/download.svg)](https://bintray.com/upcrob/generic/jOTP/_latestVersion)

[jOTP](https://www.owasp.org/index.php/OWASP_JOTP_Project) is a lightweight web application, implemented as a set of RESTful services, for generating and validating one-time passwords as a secondary factor of authentication.  This allows web applications to validate that users are who they say they are not only based on what they know (ie. their passwords), but also by something that they have (access to a particular cell phone or email account).

## U Programming Language & Compiler

One of my interests in the field of computer science is programming language and compiler design.  For this reason, I have designed an implemented a small programming language named (perhaps a bit pretentiously), "U".  It's not a terribly practical language, and I wrote it primarily out of curiosity.  That said, given its size, it could potentially be used as a teaching tool for those wishing to learn what goes into a compiler.

* The source code can be downloaded, [here](https://github.com/upcrob/u-programming-language).
* In order to compile the source, you'll need a C compiler (I use GCC) as well as [Flex and Bison](http://dinosaur.compilertools.net).

## "Garry" - A Simple Chess AI

When I was an undergraduate student, I completed a senior project that involved creating a simple chess program. I originally wrote the program to run on a personal computer, and later parallelized it to run on the Math and Computer Science department's supercomputing cluster using MPI.  While my implementation is certainly not the most clever or cleanly coded (I would make a number of different design choices were I to rewrite the program from scratch), it was definitely a good experience to have.  I've included the source code and my (very brief) technical report for anyone who may happen to be interested in the topic.

* [Overview](../files/projects/ChessPaper.pdf)
* [Source Code](https://github.com/upcrob/garry)
