---
title: Typecasting array to object makes it an instance of StdClass
---

It converts the array to an instance of [`stdClass`](http://php.net/manual/en/reserved.classes.php).

Handy because it is a shorthand for making an stdClass and assigning properties to it.

```php
// without typecasting
function x() {
    $x = new StdClass;
    $x->porn = 'tube';

    return $x;
}

// with typecasting
function x() {
    return (object) [
        'porn' => 'tube'   
    ];
}
```

**References**:
- [`srph/playground/php/typecast-array-to-object`](https://github.com/srph/playground/tree/master/php/typecast-array-to-object)
- [`octobercms/october/modules/backend/classes/NavigationManager`](https://github.com/octobercms/october/blob/8e5a086067dad8c0ecb025e18448bf36be2594a8/modules/backend/classes/NavigationManager.php#L190)
