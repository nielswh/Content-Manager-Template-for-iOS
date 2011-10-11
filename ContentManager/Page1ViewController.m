//
//  Page1ViewController.m
//  ContentManager
//
//  Created by Niels Hansen on 10/10/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "Page1ViewController.h"
#import "ContentManager.h"
#import "Page2ViewController.h"


@implementation Page1ViewController

@synthesize p2VC;

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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void) viewDidAppear:(BOOL)animated  {
    if (p2VC != nil) {
        [p2VC release];
        p2VC = nil;
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction) onClickBack: (id) sender {
    [[ContentManager sharedContentManager] goBackFromView:self goBack:1];
}

-(IBAction) onNextPageClick: (id) sender {
    [[ContentManager sharedContentManager] goToView:p2VC fromView:self];
}

@end
