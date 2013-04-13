//
//  TextView.m
//  Apr11
//
//  Created by Christopher J Di Luccia on 4/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "TextView.h"

@implementation TextView

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        
        CGFloat w = self.bounds.size.width;
        CGFloat h = self.bounds.size.height;
        
        CGRect t = CGRectMake(w-w, (h-h)+16, 320, 60);
        textView = [[UITextView alloc] initWithFrame: t];
		textView.backgroundColor = [UIColor whiteColor];
		textView.textColor = [UIColor blackColor];
		textView.font = [UIFont fontWithName: @"Times New Roman" size: 16.0];
		textView.editable = NO;	//Don't pop up a keyboard.
		
		textView.text = @"You're in the Text View!";
		[self addSubview: textView];
    }
    return self;
}

@end
