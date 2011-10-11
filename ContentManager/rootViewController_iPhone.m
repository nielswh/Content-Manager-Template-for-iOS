//
//  rootViewController_iPhone.m
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "rootViewController_iPhone.h"
#import "Page1ViewController_iPhone.h"


@implementation rootViewController_iPhone

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Loaded from iPhone Controller");
}

-(IBAction) onNextPageClick: (id) sender {
    
    Page1ViewController_iPhone *viewController = [[Page1ViewController_iPhone alloc] initWithNibName:@"Page1ViewController_iPhone" bundle:nil];
    [self setP1VC:viewController];
	[viewController release];
    
    [super onNextPageClick:sender];
   
}

- (void)viewDidUnload
{
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
