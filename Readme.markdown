### What's all this, then? ###

This is a super simple skeleton project demonstrating:

1. How to make a Mac OS X menubar app, with a status bar item and a popover.
2. How to make the menu bar item and popover look decent with both light and dark themes in 
Yosemite and above (hint: use template images and system colors; see my answer to [this stackoverflow question]
(http://stackoverflow.com/questions/30901120/how-to-make-a-menubar-app-look-good-with-dark-mode-in-yosemite/30908871?noredirect=1#comment49889381_30908871)).


### Why? ###

Because someone was asking. If you find it useful, awesome.


### How's it work? ###

`AppDelegate` adds an `NSStatusItem` to the menu bar, and sets its view to an instance of 
`StatusItemView`, which basically just has an `NSImageView` to draw something in the menu bar.
`StatusItemView` also has a target/action, which it sends when it's clicked on.

`AppDelegate` also instantiates a `MainViewController`, which shows itself in aN `NSPopover`.

All this stuff is basically a very cut down version of the UI used for one of my apps, 
[TaskLog](http://fat-apps.com/tasklog-mac/).


### Who's responsible for this? ###

I'm Zacharias Pasternack, lead developer for [Fat Apps, LLC](http://www.fat-apps.com). You can check 
out [my blog](http://zpasternack.org), or follow me on [Twitter](https://twitter.com/zpasternack)
or [App.net](https://alpha.app.net/zpasternack).


### Can I use this code? ###

You bet. Do whatever you want with it. If you find issues, please let me know. If you make it
better, please let me know.


### License ###

The code is available under a Modified BSD License. See the LICENSE file for more info.
