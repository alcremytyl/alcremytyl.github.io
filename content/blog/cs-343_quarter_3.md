---
title: CS-343 Quarter 3
description: 
date: 2025-11-15
tags: CS@Worcester,CS-343,Quarter-3
---


I read Make Computer Science Great Again's blog on [understanding REST APIs](https://medium.com/@MakeComputerScienceGreatAgain/understanding-rest-api-a-comprehensive-guide-52fc10f6c9ed). As the title says, it's a comprehensive guide that dives deep into REST API principles, design, and their benefits. I chose this article as we're using a REST API for Thea's Pantry and I wanted to further familiarize myself with them in my free time. 

After defining what REST is, the author listed off the key principles of REST API design. 

The first is statelessness, the client must provide the server all the context it needs to do an operation. The server itself will hold no state. I saw this principle being upheld when we dug into the code for each operation of GIB (Guest Info Backend). For instance, `replaceGuest` will fetch the current guest and swap in guest data given client parameters. It's all contained within tha endpoint's function call without making use of a greater app state. I wouldn't count RabbitMQ nor the config file as global state as the former is merely a logging tool and the latter just holds static port numbers and paths.

Next two are resources and HTTP methods. Resources refers to some resource (guest data, inventory #) and designating a URL path for it. HTTP methods are our GET, POST, PUT, etc. We separated our resouces into `/guests` for guests, `/version` for the version number, and `/inventory` for the total lb of inventory in our system. `/guests` supports several HTTP methods on top of this. 

And then there's representation. In this case, we use `application/json` but I found out you can also make use of YAML (`application/x-yaml`) or protocol buffers (`application/protobuf`) in the accept header in your project. I might experiment with this in my free time as I had no idea how protobufs were passed around prior to writing this.


Then it goes to design principles. It says stuff like "use appropriate names for your urls" and "use status codes that make sense". One thing from this section that caught my eye however was the bit about versioning. Instead of doing `/foo`, it'd be `/vN/foo` where `N` is the version number. This sounds pretty useful for widely used applications that make use of semantic versioning but I don't see myself using it in the forseeable future.

And finally, the article describes the benefits. It noted simplicity, scalability, interoperability, and flexibility.
REST's design being `HTTP_METHOD /resource {data it asked for...}` is easy to get a grasp of. For context, I've tried using websockets for a personal project and couldn't make heads or tails of it after a solid week of attempts. REST took at an openapi spec to get a basic understanding of it. 
The scalability would come from its statelessness, the system being made up of standalone methods would keep it efficient. 
The article defined interoperability as "used with various programming languages and platforms" which is true but this applies to a ton of language-agnostic APIs. Protobufs for instance have a spec layed out in a `.proto` file and any language can implement the structure akin to a C struct header. Though this is a minor nitpick to an otherwise great guide for getting a firmer grasp on REST APIs.
