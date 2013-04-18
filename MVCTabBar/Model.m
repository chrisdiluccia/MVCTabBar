//
//  Model.m
//  Apr11
//
//  Created by Christopher J Di Luccia on 4/12/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "Model.h"
#import "ViewController.h"
#import "TextView.h"
#import "WebView.h"
#import "MusicView.h"

@implementation Model
@synthesize a = _a;

- (id) init
{
	self = [super init];
	if (self)
    {
        UIScreen *s = [UIScreen mainScreen];
        CGRect f = [s applicationFrame];
        
		a = [NSArray arrayWithObjects:
             
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
    }
    return self;
}

@end
