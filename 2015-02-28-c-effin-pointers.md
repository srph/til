---
title: C's effin' pointers
---

After a year and a half of writing code, I just realized how simple *C*'s *pointers* are.

To get the *address* of a variable, you need to *reference* it (*ampersand*, `&`, e.g. `&x`).

```c
int x = 5;

printf("%d", &x); // Prints out the address of `x`. Something like x0WHATEVER
```

Pointers can only have a value of an *address* (A pointer value is an address).

```c
int x = 5;
int* ptr = &x;
```

The above example which tells that the *value* of `ptr` is the *address* of `x`. But we're not done yet, why don't we check `ptr`'s value first?

```c
// Should be equal
printf("%d \n", ptr);
printf("%d, &x);
```

We'll see that both the variable `ptr` (which is a *pointer* to the *addess* of an `integer` [which is the address of `x`]) is equal to the *address* of `x` (as you can see, `&x`).

To get the value of an *address* (or value stored in an *address*), we need to *dereference* it (*asterisk*, `*`, e.g., (given that `ptr` is a *pointer* (and that it also *points* to the *address* of `x` (`&x`)) `*ptr`, and `*(&x)`).

```c
// Since ptr is a pointer to the address of an integer, like so:
int x = 5;
int* ptr = &x;

// Now, since the variable `ptr` has the address of `x`, we dereference it to get the value
// Should all print `5`
printf("%d \n", *(&x));
printf("%d \n", *ptr);
printf("%d", x);
```

To add, this won't compile although it's the `ptr` it looks like:

```c
int **ptr = &x;
```

Because `int **ptr` is expecting a value, not an *address* (`&x`).

To make it work as intended, we can do this:

```c
int **ptr = *(&x);

// to test
printf("%d", ptr);
printf("%d, x);
```

Definitely, it should compile, but may generate warnings (like what occured to me).

**Other Links**:

- [Stack Overflow - *What does `dereferencing` a pointer mean?](http://stackoverflow.com/questions/4955198/what-does-dereferencing-a-pointer-mean)
- [Stack Overflow - *int*\*\* *ptr = &x is not working*](http://stackoverflow.com/questions/27453461/warning-format-d-expects-argument-of-type-int-but-argument-2-has-type-in)
- [Dereference operator](http://en.wikipedia.org/wiki/Dereference_operator)

Both of the links above are **superb**! Finally, all articles about *pointers* now make sense.

## Note

I'm thinking of a better way to explain *pointers*, so further mentees and other people won't face the same dilemma of seeing *pointers* as intricate beings when they're just misunderstood.

#### Glossary 

- `Pointers` - C Pointers
- `Reference` - C Referencing (using `&x`, e.g. `&variabl_name`)
- `Dereference` - C Dereferencing (using `*`, e.g, `*(&x)`, `*(*ptr)`, `**ptr`)
- `Address` - Memory Address
