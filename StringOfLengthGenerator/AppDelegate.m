//
//  AppDelegate.m
//  StringOfLengthGenerator
//
//  Created by Anton Shebukov on 26/07/13.
//  Copyright (c) 2013 Feedback Italia S.p.A. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize TextF_Lenght;
@synthesize TextF_String;
@synthesize TextV_String;
@synthesize window = _window;

- (void)dealloc {
    [super dealloc];
}
	
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (IBAction)Btn_Generate:(id)sender {
    NSInteger length_max = [[TextF_Lenght stringValue] integerValue];
    NSInteger length = 0;
    NSString *output = @"";
    
    if (length_max > 0) {
        output = [TextF_Lenght stringValue];
        length = length_max - [output length];
        
        while (length > 1) {
            length--;
            output = [NSString stringWithFormat:@"%ld %@", (long)length, output];
            
            length = length_max - [output length];
        }
        
        if (length == 1)
            output = [NSString stringWithFormat:@".%@", output];
    }
    else
        output = @"Invalid input length";
    
    [TextV_String setString:output];
    
    [TextV_String selectAll:self];
    
    NSText *textEditor = [_window fieldEditor:YES forObject:TextF_String];
    
    [textEditor copy:self];
    
    [TextF_Lenght.currentEditor selectAll:self];
}

@end
