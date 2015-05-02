---
title: Relay complements Flux!
description: As a joint unit, they are truly React’s friends.
---

Facebook announced [Relay](https://gist.github.com/wincent/598fa75e22bdfa44cf47#What_is_Relay) a few months ago. It *didn’t* make sense for me because I only thought it was a replacement for Flux; I just realized it wasn't.

As I wade through the tides with Flux, I noticed a few weaknesses along the way. Data-fetching isn’t so awesome with a hammer like Flux. It also goes to the point that Flux and React crosses each other’s world, when there’s no good reason to. I also noticed how stale the process is, and how it makes me an unproductive developer.

This counter-productivity isn’t what I signed up for.

Just now (after a heavy meal for a breakfast) giving it some thought, Flux's primary strength isn't fetching data; it's managing data. Although the majority of examples include data-fetching and API requests, it’s starting to hit me that Flux is crossing another territory that someone has already peed at; it's hammering nails it wasn't supposed to hmamer.

This is where Relay steps in (or peed at, haha).

**(TL;DR)** *Components*, (specifically ones that play as the *container*), handle the requesting of the data, and hydrate the Flux Stores (with the response payload, ofc) afterwards. In a sense, it’s similar to Angular’s resolves.

So for now, it might be a better idea to start writing some of my stuff to the said paradigm. There’s [**react-resolver**](https://github.com/ericclemmons/react-resolver/) anyway (while Relay is still a work in progress), which is an awesome work by [ericclemmons](https://github.com/ericclemmons/).

One downside of Relay is it depends on GraphQL; we can only incorporate its core concept, but not itself, to projects or APIs not using GraphQL.

Honestly, I’m awestruck by this out-of-the-blue idea. Over-eating can sometimes be awesome, haha (no not really, I’ve gotten so unhealthy and attractive and fat now).

**Other Links**:
- [React](https://facebook.github.io/react)
- [Flux](https://facebook.github.io/flux)
- [Relay (Gist)](https://gist.github.com/wincent/598fa75e22bdfa44cf47#What_is_Relay)
- [react-resolver](https://github.com/ericclemmons/react-resolver/)
- [Introducing Relay and GraphQL - ReactJS Blog](https://facebook.github.io/react/blog/2015/02/20/introducing-relay-and-graphql.html).
