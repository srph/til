---
title: Why Laravel does not use the native session (```$_SESSION```)
---

For a month now, I've been bothered how Laravel does not use the ```$_SESSION```. Accessing ```$_SESSION``` throws an exception wherein ```$_SESSION``` is undefined. It's also weird that ```session_start()``` has never been called. So, how do these guys implement session?

And then, I realized that Laravel has a ```app/storage``` directory. It also has a configuration for the session (located at ```app/config/session.php```). The configuration file states drivers such as ```redis```, ```memcached```, and a few more, which defaults to ```file```. Checking ```app/storage/session``` will give you a variety of information you'll need, in JSON format.

I never thought how dumb I could be to not realize such simple method.
