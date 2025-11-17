---
title: CS-343 Q3 | Composition & Dependency Injection
description: 
date: 2025-11-16
tags: CS@Worcester,CS-343,Quarter-3
---

I was writing my [blog entry for CS-348](https://alcremytyl.github.io/blog/cs-348-quarter_3/) and I came across another pair of [CodeAesthetic](https://www.youtube.com/@CodeAesthetic) videos that reminded me of what we practiced in class. 


[!["The Flaws of Inheritance" Video Link](https://img.youtube.com/vi/hxGOiiR9ZKg/0.jpg)](https://youtu.be/hxGOiiR9ZKg)
[!["Dependency Injection, The Best Pattern" Video Link](https://img.youtube.com/vi/J1f5b4vcxCQ/0.jpg)](https://youtu.be/J1f5b4vcxCQ)

The first video described an issue about image manipulation with saving and loading functionality that were too tightly coupled thank to poor use of inheritance. The second is about dependency injection being used to develop some chat app. 

We had something similar happen in our Duck Simulation assignment where we had ducks that inherited methods that they had no use for (decoy and rubber ducks quacking/flying when they shouldn't). We solved this by moving functionality into behaviors responsible for their own logic and allowing users to pick and choose whatever behavior made sense for their ducks. That's pretty much composition in a nutshell. We compose an object that holds other objects and have the members be responsible for their own functionality. As for dependency injection, merely passing in objects would be an example of it. 

The first video's composition example had CodeAesthetics abstracting away save and load logic to an interface and implemented it on his extension-specific types. It was done in such a way where you could intermingle types and draw on some image regardless of the extension the file it was loaded from has. I think Python's PIL does something similar given how it's used but I've never dug into the source code. Like the duck simulation, we only take what we want.

The second video's dependency injection example had message attachments being sent to multiple storage locations and many parameters to compensate for it. The main requirement was to upload and download attachments so CodeAesthetics created an interface for storage classes of each content delivery network to use. Then he changed his API to find which class to use then use the interface's methods. This is much more preferable than doing a whole song and dance of "if it's AWS do this if it's SFTP do that" at every step. We didn't have to do that sort of gymnastics in our duck simulation but we did use objects to encapsulate functionality. He also extracted the "determining which storage class to use" bit into a factory class which we also did for our ducks. 

These examples are pretty similar. There's some functionality with branching paths that gets boiled down to "classes that implement some interface that removes responsibilities from the main logic". That's by design as dependency injection and composition go hand in hand. They make Object-Oriented Programming a lot simpler to extend and maintain.















