---
layout: post
title:  "My First Ludum Dare Experience"
date:   2016-02-10 16:19:00
---

<span class="image featured"><img src="/images/ld27.png" alt=""></span>
It shouldn't be surprising that the side projects I am most proud of are games. Three such games I have worked on were made in Ludum Dares. [Ludum Dare](http://ludumdare.com/compo/) is a game development competition, very similar to a hackathon if you are familiar with that kind of thing. The Ludum Dare occurs three times a year, and there is a "competition" and a "jam". The week before the Dare, users vote on a theme that all games must relate to in some way. For the competition, each contestant must develop a game alone in 48 hours. Every resource (art, music, etc...) must be created within those 48 hours. The code for the game must also be open source. The jam is more lenient. Jam contestants can work in teams and have 72 hours. They can also use assets like art and music that were created before the Ludum Dare starts, as long as they have the legal right to use those assets.

My first Ludum Dare was Ludum Dare 27. It took place August 23-26, 2013. This was my first time really creating a game since the Python games I talked about in my previous post. At this point, I was fairly decent at web development, particularly at programming in Javascript. Because of this, I decided to create a game that runs natively in the browser. Using an HTML canvas element, I could easily draw everything I needed for a 2D game. Rather than creating a simple top-down game like I had in the past, I decided to go with a more physics based game.

The theme for Ludum Dare 27 was "10 Seconds". Some people interpreted this in really cool ways. In [one game that was submitted](http://ludumdare.com/compo/ludum-dare-27/?action=preview&uid=16077), you had to control 10 out of 11 runners in a race to all finish in second place. I personally wanted to make a game like [Super Meat Boy](https://en.wikipedia.org/wiki/Super_Meat_Boy), an amazing yet very difficult platformer. After a few hours of brainstorming, I found a way to relate it to the theme of the competition. My idea was to make a basic platformer where the player tries to get to a certain spot on the right side of the level. I related it to the theme by saying the player had to finish each level in 10 seconds or fewer. However, I wanted to make it a bit more interesting, so rather than simply having a countdown timer, I had a green "download" bar filling up the level and moving to the right. If the player touched this, the "download" would unexpectedly stop and need to be restarted.

I probably learned more from creating "Download Simulator" than I had from any previous personal project. One of the reasons I am huge advocate for hackathons and similar events is because having a weekend deadline forces you to learn at an accelerated rate in order to finish on time. At the end of the event, you can always go back and refine what you created. The difficult part is putting your ideas into motion in the first place, not having good ideas.

If you are interested in playing my game, I have embedded it below. Alternatively, you can click [here](http://mobyvb.com/ludum-dare-27) to go to a dedicated page for the game. In addition, here is [my submission](http://ludumdare.com/compo/ludum-dare-27/?action=preview&uid=10171) for Download Simulator on the Ludum Dare website.

<iframe style="width:100%; height:600px; border: solid 1px black" src="http://mobyvb.com/ludum-dare-27"></iframe>
