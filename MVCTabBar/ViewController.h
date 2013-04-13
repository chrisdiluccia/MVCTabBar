//
//  ViewController.h
//  Apr11
//
//  Created by Christopher J Di Luccia on 4/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVAudioPlayer.h>
@class Model;

@interface ViewController : UIViewController
{
    AVAudioPlayer *audioPlayer;
}

@property (nonatomic, retain) IBOutlet AVAudioPlayer *audioPlayer;

- (id) initWithTitle: (NSString *) t
               image: (UIImage *) image
               badge: (NSString *) b
                view: (UIView *) v;

@end

