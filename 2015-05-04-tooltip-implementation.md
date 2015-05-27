---
title: Tooltip implementation
---

In bullets,

- Render the tooltip's *container* element by creating a new `div` somewhere (the best option would be exactly one level below `body`).
- Add listeners to display / hide the tooltip.
- When the trigger element is <inser listener here>,
  - Render the tooltip
  - Calculate proper offset relative to the trigger element

**Other Links**:
- [**OverlayTrigger** - React Bootstrap](https://github.com/react-bootstrap/react-bootstrap/blob/master/src/OverlayTrigger.js)
- [**Tooltips** - TWBS](http://getbootstrap.com/javascript/#tooltips)
