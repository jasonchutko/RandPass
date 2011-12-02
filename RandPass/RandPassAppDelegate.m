//
//  RandPassAppDelegate.m
//  RandPass
//
//  Created by Jason Chutko on 11-07-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "RandPassAppDelegate.h"

@implementation RandPassAppDelegate

@synthesize textField;
@synthesize copyLabel;
@synthesize slideLabel;
@synthesize checkMixed;
@synthesize checkPunctuation;
@synthesize checkNumbers;
@synthesize checkSimilar;
@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
    return YES;
}

- (IBAction)copyAction:(id)sender {
    NSPasteboard *pasteboard = [NSPasteboard generalPasteboard];
        [pasteboard clearContents];
    NSArray *objectsToCopy = [NSArray arrayWithObject:[textField stringValue]];
    [pasteboard writeObjects:objectsToCopy];
}

- (IBAction)generate:(id)sender {

    NSString *pool = @"abcdefghijklmnopqrstuvwxyz";
    
    if([checkNumbers state] == NSOnState)
    {
        pool = [NSString stringWithFormat:@"%@%@", pool, @"0123456789"];
    }
    
    if([checkMixed state] == NSOnState)
    {
        pool = [NSString stringWithFormat:@"%@%@", pool, @"ABCDEFGHIJKLMNOPQRSTUVWXYZ"];
    }
    
    if([checkPunctuation state] == NSOnState)
    {
        pool = [NSString stringWithFormat:@"%@%@", pool, @"`~!@#$%^&*()-_=+[{]}\\|;:'\",<.>/?"];
    }
    
    NSString *temp = [NSString stringWithFormat:@"%c", [pool characterAtIndex: arc4random() % [pool length]]];
        
    for(int x = 0; x < [slideLabel intValue] - 1; x++)
    {
        if([checkSimilar state] == NSOffState)
        {
            temp = [NSString stringWithFormat:@"%@%c", temp, [pool characterAtIndex: arc4random() % [pool length]]];
        }
        else
        {
            char tempChar = [pool characterAtIndex:arc4random() % [pool length]];
            
            while(tempChar == [temp characterAtIndex:x])
            {
                tempChar = [pool characterAtIndex: arc4random() % [pool length]];
            }
                        
            temp = [temp stringByAppendingString:[NSString stringWithFormat:@"%c",tempChar]];
        }
    }
    
    [textField setStringValue:temp];
}

- (IBAction)clickEvent:(id)sender {
    if([sender clickCount] == 2)
    {
        [copyLabel setStringValue:@"Copied!"]; 
    }
}
@end
