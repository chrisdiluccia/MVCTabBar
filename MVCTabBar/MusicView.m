//
//  MusicView.m
//  Apr11
//
//  Created by Christopher J Di Luccia on 4/10/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "MusicView.h"

@implementation MusicView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGFloat w = self.bounds.size.width;
    CGFloat h = self.bounds.size.height;
    
    UIImage *image = [UIImage imageNamed: @"ScottJoplin.png"];
    if (image == nil) {
        NSLog(@"could not find the image");
        return;
    }
    
    CGPoint point = CGPointMake(w/2-image.size.width/2,h/2-image.size.height/2);//center the image
    
    [image drawAtPoint: point];
}

@end
