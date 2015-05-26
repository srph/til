---
title: Laravel 5's *make:model* creates the migrations too
---

Laravel 5 takes care of your migrations when you use the *Model* generator.

``` artisan make:model ProfileExperience``` will create `ProfileExperience.php` in the `/app/` folder and `*_create_profile_experiences_table.php` in `/databases/migrations`.

This makes everybody's lives easier when bootstrapping a project. Pretty neat, huh?
