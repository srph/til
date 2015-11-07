---
title: How Laravel implements its authentication
---

For a month now, I still haven't figured out the right way to implement authentication, The Right Way™. Digging into the internal code of Laravel (Illuminate), I found out the abstractions used in authentication, and how they "store" the authentication data.

A summary:

- Laravel only saves the unique identifier in the session as (login_*<insert your [app.key]>*).
- Laravel uses the ```UserProviderInterface``` to *abstract* user data fetching
  - Fetching a user by token
  - Fetching a user by the unique identifier
  - Retrieving a user by the given credentials.
  - Validating a user (usually by password). 
  - The two above (Validation and Retrieving) are used together to check if the passed credentials are correct. Since validation is usually checking the password, the hashing is done by PHP to avoid overhead if the user does not exist. Bcrypt is fucking expensive.
- Laravel uses ```UserInterface``` for the data model / fetcher itself.
- Laravel uses ```UserTrait``` to fill in for ```UserInterface``` (for Eloquent only). I think should've been named as ```EloquentUserTrait```.
- Laravel fetches and caches the user data when the ```user()``` (```Auth::user```) is called, speeding up the application and reducing overhead.
- Laravel (checking if a user is authenticated) not only checks the user data (if cached), but also checks if the session still exists, and is not logged out (calling the logout method, ```logout()``` (```Auth::logout()```), will set the logged out flag to true).
