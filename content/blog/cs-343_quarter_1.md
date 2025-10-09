---
title: CS-343 Quarter 1
description: 
date: 2025-10-05
tags: CS@Worcester,CS-343,Quarter-1
---

We did three things this quarter. 
- PlantUML diagrams
- Design pattern implementation
- dipping our toes into REST APIs

<br><br>

PlantUML is a tool that generates diagrams based on their domain-specific language. 
Here's an example structural diagram:
```plantuml
@startuml
title Hello World - Structural Diagram

class Hello {
    +sayHello()
}

class World {
    +receiveHello()
}

Hello --> World : says "Hello"
@enduml
```
<img src="https://www.plantuml.com/plantuml/png/JSmx2W91383XFgS8Moao5x2GBIpiBQp3R921Z0jv22BUtMLCORg4B_ziJkhH1RovC5vOPCNRgh9WmQjhL0ybmNEZkr87g49cwTw0snoCNcFVxU6J81C9b2kt9_-XttyffuH7t2A6qxXFCFDZYIvV" alt="Hello World Diagram">

There are also ones known as "Sequence Diagrams" that outline a program's flow of operations while showing the scope of each variable. I don't know when it'd come in handy but that may change once I do the capstone assignment.

They look something like this: 

```plantuml
@startuml
participant "Program" as Program
participant "main()" as Main
participant "readInput()" as Read
participant "printOutput()" as Print

Program -> Main: call main()
activate Main

Main -> Read: call readInput()
activate Read
Read -> Read: get user input
deactivate Read
Main <-- Read: return input

Main -> Print: call printOutput(input)
activate Print
Print -> Print: print to console
deactivate Print

deactivate Main
Program <-- Main: end main()
@enduml
```

<img src="https://www.plantuml.com/plantuml/png/LP11RWKX28RtdeAyLRkO2pHDyxPTD7tf3SWCUJ5nr23s_1LbOjqWmWS_S2-2BFKCBhVNxpvZ5BWzE3qPpnjW0VDNu4GVNrvx_gkvQv89Zy-OgnZnq_uhaTb7-QuocOT6d3Cns3vwtpVOCGGOQWvtyRyeD2ITMWMrlO5JUT93Nis4doHG2p5uXTr12pmwls-RqKnIEHfxoOw9JVV_FXsRyhPPjxDiL80as5CiAP3Ei5RCY2rijz71x3WKZ-isz-RNC_m1" alt="Hello World Diagram">

<br><br>

We then applied what we learned to refactor a duck codebase into variants that follow the Strategy and Singleton patterns. The usage of a structural diagram helped visualize the attribtues and relations between classes immensely. I'd see myself using at least the structural diagrams for collaborative projects as we'd iron out a design for our codebase to follow. 









