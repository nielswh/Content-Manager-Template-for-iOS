# Content Manager Template for iOS#

## Overview ##

A very simple Content Manager that is created using a Template Singleton. 
The Manager currently will be responsible for pushing and pulling View Controllers.  
This is useful if you don't want to use the UINavigationController and have View Controllers that call other view controllers with the ability to go back 1 or more.
Since the Content Manager is a Singleton, it can be used to hold state.  
 
### How to use in your own Projects ###
* Create a Managers Group in your project.
* Copy the ContentManager.h, ContentManager.m and SynthesizeSingleton.h into the Managers folder.
* Add #import "ContentManager.h" to the top of your View Controller .m files

#### How to Push to a new view Controller ####
* Initialize your View Controller
* [[ContentManager sharedContentManager] goToView:<insert your VC object> fromView:self];

#### How to Pop to previous View Controller ####
* [[ContentManager sharedContentManager] goBackFromView:self goBack:1];

### Examples for iPhone and iPad are included in project ####
* An example of 3 View controllers that open and close the next and previous view controller
* Review this how to use this with as an Universal Application.  The ViewControllers group contains the shared viewControllers between the iPhone and iPad view controllers.

## Blog for Project ##
More information about the project can be found at [the agilite software blog](http://www.agilitesoftware.com/blog)

## MIT License ##

Copyright (c) 2011 Agilite Software

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.