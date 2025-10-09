---
title: CS-348 Quarter 1
description: 
date: 2025-10-04
tags: CS@Worcester,CS-348,Quarter-1
---

We used this quarter to get acquainted with the `git` version control sofware. I've used git for a few years but it was honestly the bare minimum. 
My usage of it was effectively a cycle of writing out large chunks across several files,`git commit -am "some vaguely related message"`, and `git push`. That is all. No branches no checkouts, _maybe_ a `git reset --hard` if I royally screwed up a system config (my old bspwm setup). That was all I knew and all I felt comfortable doing.

That changed after trying out [pcottle](https://github.com/pcottle)'s [Learn Git Branching](https://learngitbranching.js.org/?locale=en_US) for homework assignments. Its representation of git projects as flexible trees whose nodes may be moved around, cloned, and restructured as you please helped ease me into knowing not only what rebasing actually does (grafting nodes to other places) instead of the magic cure to make my push work. In fact, I tried applying knowledge from it in another class's assignment and it made differentiating between the base, intermediate, and advanced versions of the assignment easy. I thought git branches would've had much more of a storage overhead but no, commits really are just lists with insertions and deletions rather than mass duplicating files.

I've heard that a lot of CS college graduates don't know version control is a thing until they go get trained by employers which shocked me at first. However, I'm glad to know that our cirriculum didn't skip out on it. I'd say learning tools like `git`, `mercurial`, or even copy-pasting your folder is as essential as even writing the code itself. I wouldn't wish permanently losing your project to anyone.
