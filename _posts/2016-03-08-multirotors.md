---
layout: post
title:  "Multirotors"
date:   2016-03-08 14:25:00
---

<span class="image featured"><img src="/images/quadcopters/origquad.jpg" alt="my quadcopter"></span>
It has been pretty long since I posted, but between academics and wedding planning (I'm getting married in less than two weeks!), I've been pretty stressed out and have not found the time to write. But fear not, for I have finally gotten around to making another post. I am trying to get at least one blog post out for each Cool Thing (TM) I've worked on so I can put a "portfolio" with links to all the posts on my front page. Today's Cool Thing is multirotors!

In the past few years, there has been an explosion in the popularity of multirotors (more commonly called "drones" these days). They are incredibly cool and have become incredibly cheap. Back in 2011, which was around my sophomore year of high school, I got really into quadcopters, and decided to build my own. The picture at the top of this post is my quadcopter after I broke its first frame, and rebuilt it on a fancier one. Here is a video of me flying it with its original frame, back when I had hella long hair and only wore cargo pants:

<div style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/xFNpdusEweY" frameborder="0" allowfullscreen></iframe>
</div>

---

## How does it work?
This is the part where I explain all the components of a quadcopter and how they play a role in the bigger picture. If you are interested, keep reading. Otherwise, skip to the next section. Or don't. You don't have to listen to me.

<span class="image small"><img src="/images/quadcopters/transmitterandreceiver.jpg" alt="a transmitter and receiver"></span>
The transmitter basically a giant controller that takes input from the pilot and sends it off to the receiver. The receiver is a small device that sits in the center of the quadcopter. A bunch of wires come out of the receiver carrying data about the positions of all the switches and joysticks on the transmitter.

<span class="image small"><img src="/images/quadcopters/accelandgyro.jpg" alt="an accelerometer and gyroscope"></span>
The accelerometer and gyroscope sit in the center of the quadcopter. The accelerometer is a sensor that carries information about how the quadcopter is currently *accelerating* (in three dimensions), and the gyroscope is a sensor that carries information about how the quadcopter is currently *rotating* (in three dimensions). Knowing changes in speed and rotation allows the quadcopter to appropriately respond to imperfections in the environment and the quadcopter itself. For instance, if the quadcopter spins up all four propellors to exactly half speed, theoretically, it should begin moving upwards while staying perfectly level. In actuality, the motors do not spin at the same speed, there might be wind, and the quadcopter's center of balance might be slightly off. Factors like these cause the quadcopter to tilt and move unpredictably, so knowing the information provided by the accelerometer and gyroscope allows the quadcopter to react by speeding up or slowing down the appropriate propellors.

<span class="image small"><img src="/images/quadcopters/arduino.jpg" alt="an Arduino Uno"></span>
The microcontroller is essentially the brain of the quadcopter. It gets data from the receiver, gyroscope, and accelerometer, and does the calculations necessary to determine what speed to spin the motors at. Various other sensors may also be hooked up to the microcontroller, but these are not necessary for a minimal quadcopter build. For example, a barometer, which detects air pressure, can be connected to the quadcopter. This would allow the quadcopter to automatically stay at a fixed altitude. Similarly, a GPS could allow the quadcopter to navigate or stay at exact coordinates. In summary, more sensors generally means more precision and a more viable autonomous quadcopter. I have never built an autonomous quadcopter before, but it is something I am very interested in doing.

<span class="image small"><img src="/images/quadcopters/esc.jpg" alt="an electronic speed controller"></span>
Electronic speed controllers are essential in building any remote controlled Flying Thing. There are three sets of wires on an ESC. First, there are three wires that connect to the motor. These are the three wires coming out of the right side of the ESC displayed above. These power the motor. Second, there are two wires that go to a power source. In the picture above, the thick black and red wires on the left side are what powers the ESC, and by extension the motor it is connected to. Finally, there are three signal wires. The data sent through these wires determines the speed of the motor the ESC is connected to. Essentially, it determines how much to allow or restrict flow from the battery to the motor. On a remote controlled airplane, this signal would come directly from the throttle output on the receiver (the device I talked about first). On a quadcopter, this signal comes from the microcontroller, which as we previously discussed, determines how much the motors need to increase or decrease in speed to keep the quadcopter flying appropriately.

<span class="image small"><img src="/images/quadcopters/motor.jpg" alt="a brushless motor"></span>
This is a motor. There are four of these, one at each corner of the quadcopter. All this does is receive data from the ESC and spin the propellors accordingly. The size of the motor generally correlates to how big the quadcopter is. Bigger motors can spin faster and with more torque, and can lift heavier loads (but require more power as well).

<span class="image small"><img src="/images/quadcopters/props.jpg" alt="a set of quadcopter propellors"></span>
In order to actually lift the quadcopter off the ground, it is necessary to have propellors. These come in all sizes, but the ones I used for my quadcopter were eight inches long. Propellors tend to be the scariest single item in any quadcopter build. If you put your finger too close to a spinning propellor, you might have a deep cut at best, and you might not have a finger anymore at worst. Quadcopter propellors must also alternate directions. Two turn clockwise and two turn counterclockwise. This is necessary because if all four propellors turn clockwise, the quadcopter will have a net angular momentum that is clockwise, so the entire aircraft will spin, which is not easy control. By having two propellors spin in the opposite direction, the angular momentum is zero and spinning all the propellors does not spin the quadcopter.

When all four propellors are spun at the same speed, the quadcopter moves upwards. When two adjacent propellors are spun faster, that side of the quadcopter is elevated, and the quadcopter moves in the opposite direction. For instance, if the two rear propellors are sped up, the quadcopter will tilt and move forward. If two diagonal propellors are sped up, and the other two diagonal propellors slow down, the quadcopter will rotate clockwise or counterclockwise.

<span class="image small"><img src="/images/quadcopters/battery.jpg" alt="a LiPo battery"></span>
The final item necessary to make the quadcopter work is a battery. This powers the microcontroller and the ESCs, and by extension, every other electrical component of the quadcopter.

## My experience
Fortunately, when I decided to build a quadcopter, I was not going in blind. There is a detailed wiki and active discussion forum at [AeroQuad.com](http://aeroquad.com). The community there is great and answered all the questions I had regarding my first build. In addition, the source code and configuration software necessary for setting up a multirotor is all available freely on that website. The [wiki](http://aeroquad.com/showwiki.php) on the site goes step by step into everything you need to know to build a multirotor. Overall, AeroQuad was an essential resource for me, and without it, I would have quickly given up trying to build a quadcopter.

After I built my quadcopter, I was invited to be an assistant at a quadcopter-building camp at the local community college. Somewhere between fifteen and twenty high school students were taught everything necessary to build a quadcopter from start to finish over the course of the week. Unfortunately, I can't take credit for much of the camp. I really just helped with minor parts like teaching the students how to solder or program their microcontrollers and set up the AeroQuad software. Regardless, I still had a lot of fun helping out, and the end result was a bunch of tiny but functional quadcopters flying all over the place.
<span class="image small"><img src="/images/quadcopters/quadcamp.jpg" alt="a bunch of tiny quadcopters"></span>

After swapping my quadcopter to its second frame, I flew it a few times, and eventually crashed it, breaking the frame. With encouragement from my dad and members of the local hackerspace, I tried to rebuild it on a circular frame. We called it the iQuad. Rather than having an X shaped frame, we used a heat gun to bend a long, thin piece of material (I forgot exactly what the material was) into a circle, and positioned the motors evenly around its circumference. The electronics hung in the center by fishing line, and the quadcopter was completely functional. Although I did not get further than this, we intended the final design to be much cooler. The intention was to attach all the electronics around the frame so the center was completely clear. I even soldered the motors and ESCs to copper tape on the inside of the frame in order to get rid of as much wire as possible. Unfortunately, it became one of the many personal projects I stopped working on and never completed. Maybe one day I will finish it and have the coolest looking quadcopter around.
<span class="image small"><img src="/images/quadcopters/iquad.jpg" alt="the iQuad"></span>

That pretty much sums up my experience with flying machines. It is definitely still something I have great interest in, but I keep making excuses for why I don't have time to pursue hobbies anymore. It seems to be a common theme for college students, but I am slowly breaking away from it as I decide to place long-term personal happiness and hobbies above academics and laziness. I hope writing this blog will help push me to be as cool of a person as I was in high school.
