//
//  ContentManagerAppDelegate_iPhone.m
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "ContentManagerAppDelegate_iPhone.h"
#import "rootViewController_iPhone.h"


@implementation ContentManagerAppDelegate_iPhone

@synthesize rootViewController = _rootViewController;

- (void)dealloc
{
	
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    rootViewController_iPhone *aViewController = [[rootViewController_iPhone alloc] initWithNibName:@"RootViewController_iPhone" bundle:nil];
    [self setRootViewController:aViewController];
    [aViewController release];
    
    [[self window] setRootViewController:[self rootViewController]];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [_rootViewController release];
}


@end
