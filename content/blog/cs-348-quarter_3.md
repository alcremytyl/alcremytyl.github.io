---
title: CS-348 Q3 | Never Nesting & Clean Code
description: 
date: 2025-11-16
tags: CS@Worcester,CS-348,Quarter-3
---

After doing the clean code assignments, I remembered a YouTube channel I used to watch, [CodeAesthetic](https://www.youtube.com/@CodeAesthetic), that focused on code design and readability. I want to talk about two of his videos that adhere to clean code.

<br>

[!["I'm a Never Nester" Video Link](https://img.youtube.com/vi/CFRhGnuXG-4/0.jpg)](https://www.youtube.com/watch?v=CFRhGnuXG-4)

First, we have ["I'm a Never Nester"](https://www.youtu.be/CFRhGnuXG-4). The video talks about how to use extraction and inversion to simplify code. 

Extraction is taking a chunk out of code and moving it to its own function. That techinque was used everywhere throughout `Clean Code 1`. Everything within `BadCode`'s `main` function was split up into different methods for polling input and printing results. It also made the output a lot cleaner but I'd say a good bulk of the imposing nature of that blob was from the sheer amount of things being expressed in `main`. Too much was going so making a mental model of the program's flow took significantly longer than `GoodCode`'s `main`.

Inversion is simply checking for failure up front. It incentivizes returning early which drastically cuts down on the mental overhead of a program. I believe it was only used once in the Clean Code assignments, assignment 1's `GoodCode.isPrime()` with the early false but it really helps in real life scenarios. The [2:40](https://youtu.be/CFRhGnuXG-4?t=160) mark on the video shows off how helpful inversion is. CodeAesthetic described that implementation as "creating a validation gatekeeping section of the code which sort of declares the requirements of the function" and yeah pretty much. Going through a whole block of operations then an `else return false` or `throw SomeErrorHere` sounds good when writing it down but you'll need to keep track of more branching paths than just putting end conditions early on then doing whatever the goal is.

If I were forced to pick one as more important to hammer down, I'd say inversion. Extracting away functionality into their own methods is extremely useful for dividing up your program for debugging but a long yet conditionally flat function is still easier to read for me. Either way, those variable and method names did help out with knowing what's going on. 

[!["Naming Things in Code" Video Link](https://img.youtube.com/vi/-J3wNP6u5YU/0.jpg)]([https://www.youtube.com/watch?v=CFRhGnuXG-4](https://youtu.be/-J3wNP6u5YU))

This is where we get to the second video, [Naming Things in Code](https://youtu.be/-J3wNP6u5YU). It has five principles. 

1. **Don't** Abbreviate Names
2. **Don't** put types in variable names
3. **Add** units to variables unless the type tells you
4. **Don't** put types in your types
5. **Refactor** if you find yourself naming code "Utils"

I think _never_ abbreviating is a bit heavy handed if you're just indexing or are reading `l` lines but that may just a bad habit. Names should indicate what they entail but if we're running around with variables as prolix as `amountToAddInGallons`, I'd start thinking the mathematicians were onto something.

Never in my 10ish years of programming have I seen real usage of Hungarian notation in a codebase not old enough to legally drive so I don't think types in variable names is relevant to the modern era. The third principle however is much more relevant but I have a suggestion. We should make wrappers of the base types for maximal readability and reusability. Instead of the previous `int amountToAddInGallons`, we should've simply made it `Volume amount` to a method `add`/`fill`. `Volume` would be a wrapper for an underlying SI unit that we then convert to gallons. It'd make the program clearer and allow us to reuse that wrapper whenever we need volume. 

The fourth principle would adhere to avoiding disinformation with the given truck example but I can see it being okay for inherited error types. It's how I've seen Python projects do it. 

As for the fifth and final principal, I've done it. Finding where to put very generic functions is pretty tough so I can sympathize with people that do it all the time. Refactoring a project to have no `util` pile does help with searchability but I won't crucify anyone for doing it in a codebase. 







