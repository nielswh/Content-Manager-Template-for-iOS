//
//  ContentManager.h
//  ContentManager
//
//  Created by Niels Hansen on 10/9/11.
//  Copyright 2011 Agilite Software. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface ContentManager : NSObject {
    
    UIViewController	*prevViewController;
	NSMutableArray		*controllerList;
    
}

@property (nonatomic, retain) UIViewController  *prevViewController;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

+ (ContentManager *)sharedContentManager;
-(void) goBackFromView:(UIViewController*) currentViewController goBack:(int)popOff;
- (void) goToView:(UIViewController*) toViewController fromView:(UIViewController*) fromViewController;


@end
