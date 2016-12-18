---
layout: default
permalink: /why-redis-is-awesome/
---

# Why Redis is Awesome

<!-- 2/20/2014 -->

I like to complain about things - it's one of those pastimes that, unlike sailing and golf, requires neither strong skill nor financial backing [^1].  This may be what makes this article so personally unique: I have nearly nothing bad to say about Redis.

[^1]: It should be noted that I possess neither of these things.

## What is it?

For those who aren't familiar with [Redis](http://www.redis.io), it's a key-value store.  It's a NoSQL database...kind of.  In the words of its makers, it's an in-memory data structure server.  In its purist form, it acts like a big hash table tied to a simple TCP server; you can add values (strings, integers...whatever, really) and remove them in constant (_O(1)_) time.  So what makes such a stupid-simple piece of software so attractive?  I'm glad you asked.

## 1. It's BSD Licensed

I don't like reading long licenses, nor do I have anything against the creation and sale of commercial software.  For these reasons, I'm partial to the MIT and BSD licenses, the latter being the legal binding chosen by the creators of Redis.  In a nutshell, it prevents you from suing them.  Other than that, feel free to do what you wish with the software.

## 2. It has a Simple Codebase

I'm a fan of simple, elegant solutions.  While the elegance of the Redis source code could be debated, its simplicity is hard to argue with.  It consists of a small number (< 90) of source files (including the header files!) all written in ANSI C.  For this reason, it's an easy program to tinker with.

The simplicity does, of course, come with a cost: the authors of Redis make it intentionally difficult to add new features to the master codebase in order to retain the system's ease of use.  Given the amount of feature-creep that abounds in modern software, however, I like to think this is a good thing.

## 3. It has an Even Simpler API

The codebase is simple.  The API is even simpler.  The [Redis client API](http://www.redis.io/commands) consists of a modest set of easy-to-understand commands that are made even more approachable by the fantastic documentation.  Each command even has its running time (constant, linear, etc) listed next to its description which, admittedly, gives me a warm, fuzzy feeling inside.

## 4. It's Really, Really Fast

One can describe Redis in many ways, but 'slow' is not among the list of available adjectives.  It's an in-memory store so although it's database size is limited to the amount of available RAM, it doesn't have to sit around waiting for disk I/O operations to finish.  This quick response time allows the server to be designed around a single-threaded model which minimizes the amount of synchronization that needs to be done.  This focus on the in-memory model has even allowed the authors to make some nice optimizations relating to the way in which data in memory is stored and retrieved.

## 5. It Supports the Observer Pattern

Redis is primarily a key-value store, so its main focus is on CRUD operations.  This does not by any means imply that its a one-trick pony.  Redis has built-in publish-subscribe support that allows clients to 'watch' data stored in the system and respond to changes.  If you wanted, you could even use it as a simple message queue.

---
