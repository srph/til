---
title: Autoclosing JSX in Sublime Text 3
---

Writing JSX can be a PITA, this is because autoclosing JSX isn't provided out-of-the-box.

You can make use of ST3's built-in tag autoclosing feature to close JSX. You can run this through the menu (*Edit* -> *Tag* -> *Close Tag*); or use its hotkey `cmd` + `alt` + `.` (`alt` + `.` in Linux / Windows).

Here's a simple before-and-after:

```diff
- <Hello style={{ color: 'red' }}>
+ <Hello style={{ color: 'red' }}></Hello>
```
