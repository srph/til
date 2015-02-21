---
title: Infinite scrolling requires a scrolling container
---

This isn't something new, but I've been skeptical about **infinite scrolling** requiring the whole container element (or the body) to be scrollable. It is required (by design); technically, it has to be filled with content to consume vertical space.

![myimage 4](https://cloud.githubusercontent.com/assets/5093058/6312743/b22c17e6-b9bf-11e4-8c09-2c0a47c10518.png)
> This works.

![myimage 3](https://cloud.githubusercontent.com/assets/5093058/6312744/b22da160-b9bf-11e4-8d93-73b2d4320979.png)
> This won't allow the **infinite scroll** to be triggered.

\* *Notice the scrollbar of the browser.*

Recently, I encountered a problem for large screens wherein my container element is non-scrollable at initial state (similar to the first image).

Other links

- [UX.SE](http://ux.stackexchange.com/questions/73883/should-an-infinite-scroll-container-always-show-the-same-number-of-visible-items/73891?noredirect=1#comment114987_73891) question (which I submitted).
- Balsamiq (used to create the wireframes)
