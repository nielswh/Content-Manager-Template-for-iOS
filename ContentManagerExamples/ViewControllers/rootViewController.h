//
//  rootViewController.h
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 . All rights reserved.
//

#import <UIKit/UIKit.h>


@class Page1ViewController;

@interface rootViewController : UIViewController {
    IBOutlet UILabel *lblDesc;
    IBOutlet UIButton *btnNext;
    
    Page1ViewController *p1VC;
    

}

@property(nonatomic,retain) Page1ViewController *p1VC;


-(IBAction) onNextPageClick: (id) sender;  


-(void) changeBackgroundColor;

@end

