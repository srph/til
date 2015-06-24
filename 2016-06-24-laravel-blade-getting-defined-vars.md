---
title: Laravel Blade: Getting defined variables
---

To get all defined variables, we can simply use a *private* variable set by blade, `__data`.

```php
<?php
dd(array_except(__data, ['__env', 'errors']));
```

I accidentally found out while looking at the compiled views. Useful for debugging or test routes (for *View Composers*).
