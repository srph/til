---
title: Interfaces are type-hintable in PHP
---

This may not be surprising for other people, but I can't actually believe that *type-hinting* `Interface`s are possible without *dependency injection*. I'm surprised although having almost `2` years of experience with **PHP**.

```php
<?php

interface AwesomeInterface {
	public function method($value);
}

class JavaScript {
	public function __construct(AwesomeInterface $awesome)
	{
		$this->awesome = $awesome;
	}

	public function doSomething()
	{
		$this->awesome->method('PHP is awesome (sucks, ehem)!');
	}
}

class PHP implements AwesomeInterface {
	public function method($value)
	{
		echo $value;
	}
}

$php = new PHP;
$js = new JavaScript($php);
$js->doSomething();
```

Which outputs, without errors, 

```
PHP is awesome (sucks, ehe)!
```
