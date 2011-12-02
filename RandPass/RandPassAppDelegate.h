//
//  RandPassAppDelegate.h
//  RandPass
//
//  Created by Jason Chutko on 11-07-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NumberField.h"

@interface RandPassAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
    NSTextField *textField;
    NSTextField *copyLabel;
    NSTextField *slideLabel;
    NSButton *checkMixed;
    NSButton *checkPunctuation;
    NSButton *checkNumbers;
    NSButton *checkSimilar;
}

//- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication;

- (IBAction)copyAction:(id)sender;

- (IBAction)generate:(id)sender;

@property (assign) IBOutlet NSTextField *textField;

@property (assign) IBOutlet NSTextField *copyLabel;

- (IBAction)clickEvent:(id)sender;

@property (assign) IBOutlet NSTextField *slideLabel;
@property (assign) IBOutlet NSButton *checkMixed;
@property (assign) IBOutlet NSButton *checkPunctuation;
@property (assign) IBOutlet NSButton *checkNumbers;
@property (assign) IBOutlet NSButton *checkSimilar;

@property (assign) IBOutlet NSWindow *window;

@end
