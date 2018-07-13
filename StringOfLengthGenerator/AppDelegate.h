//
//  AppDelegate.h
//  StringOfLengthGenerator
//
//  Created by Anton Shebukov on 26/07/13.
//  Copyright (c) 2013 Feedback Italia S.p.A. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) IBOutlet NSTextField *TextF_Lenght;
@property (assign) IBOutlet NSTextField *TextF_String;
@property (assign) IBOutlet NSTextView *TextV_String;

- (IBAction)Btn_Generate:(id)sender;

@end
