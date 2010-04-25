This is my `.emacs.d/` configuration. It's **heavily** inspired by the nice organization of Greg Newman's [.emacs](http://github.com/gregnewman/20seven-emacs) and I couldn't resist stealing code from there too.

-- Peter Welinder, 22 April 2010

# TODO #
* more python packages
* spell check
* autocomplete
* textmate-like file search
* make dired nicer
* yasnippet (see [this guide](http://dagobart.wordpress.com/2009/04/09/for-purpose-of-reference-textmate-like-code-completion-in-emacs/) )
* backup to somewhere else (not in directory)
* add a markdown mode
* figure out how to do nicer text-wrapping (at least for some modes)
* how to make the cursor color stick?
* enable terminal-specific M-S-left and right commands to switch terminals, and a command to list terminals
* function that takes an input directory and creates a 3-split window with terminal and dired in that directory
  * favourite starting locations for the above fn?
* shortcut to make emacs fill available screen space (not full screen)
* install [anything.el](http://www.20seven.org/journal/2008/11/anything-quicksilver-for-emacs.html)
* read [dired guide](http://www.20seven.org/journal/2008/11/emacs-dired-directory-management.html)
* look over the [starter kits](http://www.20seven.org/journal/2008/12/emacs-starter-kits.html)
* look into [org-mode](http://orgmode.org/)
* look into [tiny tools](https://savannah.nongnu.org/projects/emacs-tiny-tools)
* read [emacs fu](http://emacs-fu.blogspot.com/)
* read [linux guide on emacs](http://www.linuxhelp.net/guides/emacs/)

# Configuration Details #
## Emacs Release ##
I use the [GNU Emacs 23.1 for Mac OS X](http://emacsformacosx.com/). [Aquamacs](http://aquamacs.org/) is also nice, but the 2.0 beta kept on crashing. Maybe I'll switch in the future.

## Fonts ##
Based on the [tip from here](http://www.20seven.org/journal/2008/11/distraction-free-programming-with-gnu-emacs.html#comment-25058) I use [Inconsolata Medium](http://www.fontsquirrel.com/fonts/Inconsolata).

## Color Theme ##
Use the [color-theme package](http://www.nongnu.org/color-theme/). 

## Fullscreen ##

For some reason the official 2009 summer release of Cocoa GNU Emacs 23.1 doesn't support fullscreen mode. However, there is a patch available (from typester) that fixes it. See instructions [here](http://www.stratospark.com/blog/2010/fullscreen_emacs_on_osx.html). Steve Purcell provides a [way to patch the latest version of Emacs](http://www.sanityinc.com/full-screen-support-for-cocoa-emacs-on-osx) with the full screen patch from typester.

# Emacs Resources #

## Guides ##
