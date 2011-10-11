//
//  ContentManagerAppDelegate_iPad.m
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "ContentManagerAppDelegate_iPad.h"
#import "rootViewController_iPad.h"

@implementation ContentManagerAppDelegate_iPad

@synthesize rootViewController = _rootViewController;

- (void)dealloc
{
	[_rootViewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    rootViewController_iPad *aViewController = [[rootViewController_iPad alloc] initWithNibName:@"RootViewController_iPad" bundle:nil];
    [self setRootViewController:aViewController];
    [aViewController release];
    
    [[self window] setRootViewController:[self rootViewController]];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
