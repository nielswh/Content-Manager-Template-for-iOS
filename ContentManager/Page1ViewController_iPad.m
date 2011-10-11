//
//  Page1ViewController_iPad.m
//  ContentManager
//
//  Created by Niels Hansen on 10/10/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "Page1ViewController_iPad.h"
#import "Page2ViewController_iPad.h"


@implementation Page1ViewController_iPad

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
	return YES;
}

- (IBAction) onNextPageClick:(id)sender {
    Page2ViewController_iPad *viewController = [[Page2ViewController_iPad alloc] initWithNibName:@"Page2ViewController_iPad" bundle:nil];
    [self setP2VC:viewController];
	[viewController release];
    
    [super onNextPageClick:sender];
}

@end
