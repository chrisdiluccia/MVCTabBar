//
//  TabBarController.h
//  Sandbox_Apr11
//
//  Created by Christopher J Di Luccia on 4/12/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Model;

@interface TabBarController : UITabBarController
{
    Model *model;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil model:(Model *)m;

@end
