//
//  TabBarController.m
//  Sandbox_Apr11
//
//  Created by Christopher J Di Luccia on 4/12/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "TabBarController.h"
#import "Model.h"


@interface TabBarController ()

@end

@implementation TabBarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil model:(Model *)m
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        model = m; //get the model
        self.viewControllers = model.a; //get the view controllers from the model and put them in each tab
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
