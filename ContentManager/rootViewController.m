//
//  rootViewController.m
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "rootViewController.h"
#import "ContentManager.h"
#import "Page1ViewController.h"


@implementation rootViewController

@synthesize p1VC;

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

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


- (void)viewDidLoad
{
    NSLog(@"did Load from root");
    [super viewDidLoad];
}


-(void) changeBackgroundColor 
{
    [[self view] setBackgroundColor:[UIColor purpleColor]];
}

- (void) viewDidAppear:(BOOL)animated  {
    if (p1VC != nil) {
        [p1VC release];
        p1VC = nil;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(IBAction) onNextPageClick: (id) sender {
    NSLog(@"Clicked");
    [lblDesc setText:@"I was clicked"];
    [[ContentManager sharedContentManager] goToView:p1VC fromView:self];
}

@end
