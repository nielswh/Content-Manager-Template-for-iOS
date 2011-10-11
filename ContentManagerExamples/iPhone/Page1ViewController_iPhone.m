//
//  Page1ViewController_iPhone.m
//  ContentManager
//
//  Created by Niels Hansen on 10/10/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "Page1ViewController_iPhone.h"
#import "Page2ViewController_iPhone.h"

@implementation Page1ViewController_iPhone

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
    NSLog(@"Page 1 cleaning up");
    [super dealloc];
    [p2VC release];
    p2VC = nil;
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
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction) onNextPageClick:(id)sender {
    Page2ViewController_iPhone *viewController = [[Page2ViewController_iPhone alloc] initWithNibName:@"Page2ViewController_iPhone" bundle:nil];
    [self setP2VC:viewController];
	[viewController release];
    
    [super onNextPageClick:sender];
}

@end
