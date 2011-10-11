//
//  ContentManager.h
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ContentManager : NSObject {
    
    UIViewController	*prevViewController;
	NSMutableArray		*controllerList;
    
}

@property (nonatomic, retain) UIViewController  *prevViewController;

+ (ContentManager *)sharedContentManager;
-(void) goBackFromView:(UIViewController*) currentViewController goBack:(int)popOff;
- (void) goToView:(UIViewController*) toViewController fromView:(UIViewController*) fromViewController;


@end
