//
//  ViewController.m
//  Apr11
//
//  Created by Christopher J Di Luccia on 4/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"

@interface ViewController ()
@end

@implementation ViewController
@synthesize audioPlayer;

- (id) initWithTitle: (NSString *) t
               image: (UIImage *) image
               badge: (NSString *) b
                view: (UIView *) v
{
	if (self = [super initWithNibName: nil bundle: nil])
    {
		self.title = t;
        self.tabBarItem.image = image;
		self.tabBarItem.badgeValue = b;
		self.view = v;
        
        //audio code begin
        NSBundle *bundle = [NSBundle mainBundle];
        NSURL *audioUrl = [NSURL fileURLWithPath: [bundle pathForResource: @"entertainer" ofType: @"m4a"]];
        NSError *error = nil;
        audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL: audioUrl error: &error];
        if (audioPlayer == nil) {
            NSLog(@"error == %@", error);
        }
        audioPlayer.numberOfLoops = -1; //infinite
        [audioPlayer prepareToPlay];
        //audio code end
        
	}
	return self;
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
 // Custom initialization
 }
 return self;
 }
 */

/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */

/*
 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad {
 [super viewDidLoad];
 }
 */

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    // [super dealloc];
}

@end
