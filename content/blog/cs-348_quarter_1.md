---
title: CS-348 Quarter 1
description: 
date: 2025-10-04
tags: CS@Worcester,CS-348,Quarter-1
---

I was looking at some `git` articles and found a neat command. The article in question is [How I use the Git for-each-ref command for DevOps](https://opensource.com/article/22/4/git-each-ref-command) and it covers the `for-each-ref` subcommand. We've always used `git branch` to list out all the commits and, in most use cases, that's all that's needed. But some use cases may need more data within those commits or even filter them. We _can_ write some shell script with a bunch of pipes to do so but the solution is built-in. The article explored a use case where a bug occurred in some branch that Quality Assurance received but no one knows which build has it. The author then used `for-each-ref` to cleanly grab every branch then filter for the ones QA would've received as they follow a naming convention so they may get looked at properly.

The snippet and its output are the following:
```sh
git for-each-ref --format='%(refname:short) (%(committerdate))' \
								 --sort='-committerdate' \
								 'refs/remotes/**/deployment-qa-*'
```
```sh
origin/deployment-qa-c6e94a5 (Wed May 12 19:40:46 2021 -0500)
origin/deployment-qa-b70b438 (Fri Apr 23 15:42:30 2021 -0500)
origin/deployment-qa-347fc1d (Thu Apr 15 17:11:25 2021 -0500)
origin/deployment-qa-c1df9dd (Wed Apr 7 11:10:32 2021 -0500)
origin/deployment-qa-260f8f1 (Tue Apr 6 15:50:05 2021 -0500)
```

We can tell what it does at a glance and can pipe the output into whatever internal tooling we have to make it fancier looking. Doing it by hand not knowing that this is a feature would've been a lot more confusing to sift through. In fact, a manual implementation of that same snippet would look like this:

```sh
for ref in .git/refs/remotes/*/deployment-qa-*; do
    [ -f "$ref" ] || continue  # skip non-files

    branch=${ref#.git/refs/remotes/}
    sha=$(cat "$ref")
    date=$(git show -s --format="%cd" "$sha")

    echo "$branch ($date)"
done | sort -r
```

It's still legible and can be expanded upon but the previous snippet trumps is not only more concise but `for-each-ref` provides greater functionality. Its `--format` flag eliminates the risk of typoing something within the `$()` of every variable declaration. And after getting the output formatted as needed, it can be forced into a Python or Pearl-compatible string via `--python` and `--pearl` for easy piping. You can also set how many branches should be listed, where to start at, merge-specific filtering, and a lot more. All of these features are written in [the documentation](https://git-scm.com/docs/git-for-each-ref).

I don't see myself using this command too often but it definitely shows the maturity of `git`. There's tons of features that we don't learn unless we go out of our ways to dig for them. 
