//
//  rootViewController_iPad.m
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import "rootViewController_iPad.h"
#import "Page1ViewController_iPad.h"


@implementation rootViewController_iPad

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


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Load from iPad Controller");
    
   
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

-(IBAction) onNextPageClick: (id) sender {
    
    
    Page1ViewController_iPad *viewController = [[Page1ViewController_iPad alloc] initWithNibName:@"Page1ViewController_iPad" bundle:nil];
    [self setP1VC:viewController];
	[viewController release];
    
    [super onNextPageClick:sender];
    
}

@end
