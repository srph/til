---
title: JS&colon; Function.Prototype.toString includes comments to its result
---

Let's take this code as an example:

```js
function help() {
  /* Help me! */  
}
```

When ran, it outputs this:

```js
"function help() {
  /* Help me! */  
}"
```

This can be useful when writing the help / manual section of your CLI application.

```js
function help() {
/*
Usage:

    bower <command> [<args>] [<options>]
Commands:

    cache                   Manage bower cache
    help                    Display help information about Bower
    home                    Opens a package homepage into your favorite browser
    info                    Info of a particular package
*/
}

console.log(help.toString().split('\n').slice(2, -2).join('\n'));
```

Which outputs:

```
Usage:

    bower <command> [<args>] [<options>]
Commands:

    cache                   Manage bower cache
    help                    Display help information about Bower
    home                    Opens a package homepage into your favorite browser
    info                    Info of a particular package
```

> What does `help.toString().split('\n').slice(2, -2).join('\n')` do?

Let's breakdown that code a bit.

- First, we use `toString`.
- Next, we call `split('\n')` which convert a string to an array. In this case we split it by each line.
- Afterwards, we use `slice(2, -2)` to remove the the function declaration (`function help() {` and `}`) in the first and last line from the string; and remove the starting/closing multi-line comment (`/*` and `*/`) on the second and second to the last line.
- Lastly, we call `join('\n')` to convert it back to a string (; undoing `split('\n')`).
