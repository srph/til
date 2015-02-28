---
title: C's effin' pointers
---

After a year and a half of writing code, I just realized how simple *C*'s pointers are.

To get the address, you need to reference to it (*ampersand*, `&`).

```c
// To get the reference to an address
int x = 5;

printf("%d", &x); // Prints out something like x0WHATEVER
```

The pointers can only have an address. Which means,

```c
int x = 5;
int* ptr = &x;
```

Which tells that the value of `ptr` is the *address* of `x`. But we're not done yet, why don't we check `*ptr`'s value first?

```c
// Should be equal
printf("%d \n", ptr);
printf("%d, &x);
```

We'll see that both the variable `ptr` (which is a pointer to the addess of an integer [which is the address of `x`]) is equal to the address of `x` (as you can see, `&x`).

To get the value of the address, we need the pointer to dereference it by using the *dereference* syntax.

```c
// Since ptr is a pointer to the address of an integer, like so:
int x = 5;
int* ptr = &x;

// Now, since the variable `ptr` has the address of `x`, we dereference it to get the value
// Should be equal
printf("%d \n", *ptr);
printf("%d", x);
```

To add, this won't compile although it's the `ptr` it looks like:

```c
int **ptr = &x;
```

Because `int **ptr` is expecting a value, not an address (`&x`).

I'm thinking if this is possible:

```c
int x = 5;
printf("%d", *(&x));
```

Why don't you try it out?

\* **Edit:** It works!

*Other Links*:

- [Stack Overflow - *What does `dereferencing` a pointer mean?](http://stackoverflow.com/questions/4955198/what-does-dereferencing-a-pointer-mean)
- [Dereference operator](http://en.wikipedia.org/wiki/Dereference_operator)

Both of the links above are **superb**! Finally, all articles about *pointers* now make sense.

## Note

I'm thinking of a better way to explain *pointers*, so further mentees and other people won't face the same dilemma of seeing *pointers* as intricate beings when they're just misunderstood.
