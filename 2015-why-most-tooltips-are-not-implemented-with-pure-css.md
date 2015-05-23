---
title: Why most Tooltips are not implemented in pure CSS
---

Writing a tooltip with pure CSS is cleaner and more performant. It can be argued that CSS Tooltips have less features. However, most of the features that come with most Tooltip implementations are needed *only* in very few cases.

I realized that this comes with one notable weak point: a pure CSS Tooltip that works for all elements can only be triggered with hover. This makes the tooltips useless for mobile screens.
