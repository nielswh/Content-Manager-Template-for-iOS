//
//  Page1ViewController.h
//  ContentManager
//
//  Created by Niels Hansen on 10/10/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Page2ViewController.h"

@class Page2ViewController;
@interface Page1ViewController : UIViewController {
    
    Page2ViewController *p2VC;
}

@property(nonatomic,retain) Page2ViewController *p2VC;

-(IBAction) onClickBack: (id) sender; 
-(IBAction) onNextPageClick: (id) sender;  

@end
