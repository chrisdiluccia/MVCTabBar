//
//  MVCTabBarAppDelegate.m
//  Apr11
//
//  Created by Christopher J Di Luccia on 4/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "MVCTabBarAppDelegate.h"
#import "Model.h"
#import "TabBarController.h"
#import "ViewController.h"

@implementation MVCTabBarAppDelegate
@synthesize window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
	// Override point for customization after application launch.
    
	Model *model = [[Model alloc] init];
	
    TabBarController *tabBarController = [[TabBarController alloc]initWithNibName:Nil bundle:nil model:model];
    
	self.window.rootViewController = tabBarController;
    
	[self.window makeKeyAndVisible];
    NSLog(@"Hello World");
	return YES;
    
//BEGIN OLD CODE NO LONGER IN USE
/*
    UIScreen *s = [UIScreen mainScreen];
    CGRect f = [s applicationFrame];
    Model *model = [[Model alloc] init];
    
/*    a = [NSArray arrayWithObjects:
         
         [[ViewController alloc]
          initWithTitle: @"Text View"
          image: [UIImage imageNamed: @"Text.png"]
          badge: NULL
          view: [[TextView alloc] initWithFrame: f]
          ],
         
         [[ViewController alloc]
          initWithTitle: @"Web View"
          image: [UIImage imageNamed: @"Web.png"]
          badge: NULL
          view: [[WebView alloc] initWithFrame: f]
          ],
         
         [[ViewController alloc]
          initWithTitle: @"Music View"
          image: [UIImage imageNamed: @"Music.png"]
          badge: NULL
          view: [[MusicView alloc] initWithFrame: f]
          ],
         
         nil
         ];
       
    self.window.rootViewController = tabBarController;
	tabBarController.delegate = self;
	last = ((UIViewController *)[tabBarController.viewControllers objectAtIndex: 0]).title;
    NSLog(last);
    
    window = [[UIWindow alloc] initWithFrame: s.bounds];
    [window addSubview: tabBarController.view];
    [window makeKeyAndVisible];
    
    return YES;
*/
    //END OLD CODE NO LONGER IN USE
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
#pragma mark -
#pragma mark Protocol UITabBarControllerDelegate

- (void) tabBarController: (UITabBarController *)
tabBarController didSelectViewController: (UIViewController *) viewController {
    
    ViewController *v = viewController;
	if ([viewController.title isEqualToString: @"Music View"])
    {
		//We are arriving at the Audio tab.
        [v.audioPlayer play];
        NSLog(@"PLAY!");
	}
    else if ([last isEqualToString: @"Music View"])
    {
		//We are leaving the Audio tab.
		[v.audioPlayer pause];
        NSLog(@"PAUSE!");
	}
    
	last = viewController.title;
    NSLog(@"Last variable equals: %@",last);
}

@end