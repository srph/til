---
title: Laravel 5's *Model* Generator creates the *Migrations* too
---

Laravel 5 takes care of your migrations when you use the *Model* generator.

``` artisan make:model ProfileExperience``` will create `ProfileExperience.php` in the `/app/` folder and `*_create_profile_experiences_table.php` in `/databases/migrations`.

This makes it easier to bootstrap a Laravel project. Pretty neat, huh?
