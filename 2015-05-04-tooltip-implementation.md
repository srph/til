---
title: Tooltip implementation
---

In bullets,

- The trigger element needs to be rendered.
- Render the tooltip element by creating a new `div` somewhere (the best option would be exactly one level below `body`).
- Calculate proper offset from the trigger element
- Add listeners to display / hide the tooltip.

**Other Links**:
- [**OverlayTrigger** - React Bootstrap](https://github.com/react-bootstrap/react-bootstrap/blob/master/src/OverlayTrigger.js)
- [**Tooltips** - TWBS](http://getbootstrap.com/javascript/#tooltips)
