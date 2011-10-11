//
//  ContentManager.m
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "ContentManager.h"
#import "SynthesizeSingleton.h"


@implementation ContentManager

@synthesize prevViewController;

SYNTHESIZE_SINGLETON_FOR_CLASS(ContentManager);

-(void) setPrev: (UIViewController*) controller {
	
	if (controllerList == nil)
		controllerList = [[NSMutableArray alloc] init];
	
	[controllerList addObject:controller];
    
    if (prevViewController != nil)
    {
        [prevViewController release];
        prevViewController = nil;
    }
	
	[self setPrevViewController: controller];
	
}

-(void) popPrev {
	
    if (controllerList != nil)	{
		if ([controllerList count] > 0)	
			[controllerList removeLastObject];
        
		if ([controllerList count] > 0)
        {
			if (prevViewController != nil)
            {
                [prevViewController release];
                prevViewController = nil;
            }

            [self setPrevViewController: (UIViewController*)[controllerList lastObject]];
        }
		else 
			[self setPrevViewController:nil];
	}
	else
		[self setPrevViewController:nil];
}

-(void) goBackFromView:(UIViewController*) currentViewController goBack:(int)popOff {
	
	if (popOff > 1) {
		for (int i=1; i < popOff; i++) {
			[self popPrev];
		}
	}
    
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:[[currentViewController view] superview] cache:YES];
	
	[[currentViewController view] removeFromSuperview];
	[[self prevViewController] viewWillAppear:YES];
	[currentViewController viewWillDisappear:YES];

	
	[[[UIApplication sharedApplication] keyWindow] addSubview:[[self prevViewController] view]];
    //	[currentViewController viewDidDisappear:YES];
    //	[[self prevViewController] viewDidAppear:YES];
	
	[UIView commitAnimations];
	
	[self popPrev];
}

-(void) goToView:(UIViewController*) toViewController fromView:(UIViewController*) fromViewController {
	
    [self setPrev:fromViewController];
    
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:0.75];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:[[fromViewController view] superview] cache:YES];
	
	[[fromViewController view] removeFromSuperview];
	[toViewController viewWillAppear:YES];
	[fromViewController viewWillDisappear:YES];
	
	[[[UIApplication sharedApplication] keyWindow] addSubview:[toViewController view]];
    //	[fromViewController viewDidDisappear:YES];
    //	[toViewController viewDidAppear:YES];
	
	[UIView commitAnimations];
    
}


@end
