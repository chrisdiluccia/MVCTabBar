//
//  MVCTabBarAppDelegate.h
//  Apr11
//
//  Created by Christopher J Di Luccia on 4/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface MVCTabBarAppDelegate : NSObject <UIApplicationDelegate,UITabBarControllerDelegate> {
	UIWindow *window;
//    NSString *last;
}

@property (strong, nonatomic) UIWindow *window;
@end