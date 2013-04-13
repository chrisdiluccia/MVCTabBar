//
//  WebView.m
//  Apr11
//
//  Created by Christopher J Di Luccia on 4/8/13.
//  Copyright (c) 2013 Christopher J Di Luccia. All rights reserved.
//

#import "WebView.h"

@implementation WebView

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        UIScreen *screen = [UIScreen mainScreen];
        webView = [[UIWebView alloc] initWithFrame: screen.applicationFrame];
        NSURL *webUrl = [NSURL URLWithString: @"http://finance.yahoo.com"];
        NSData *data = [NSData dataWithContentsOfURL: webUrl];
        
        [webView loadData: data MIMEType: @"text/html" textEncodingName: @"NSUTF8StringEncoding" baseURL: webUrl];
        
        [self addSubview: webView];
    }
    return self;
}

@end
