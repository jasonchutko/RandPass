//
//  NumberField.h
//  RandPass
//
//  Created by Jason Chutko on 11-07-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <AppKit/AppKit.h>
#import <Cocoa/Cocoa.h>

@interface NumberField : NSTextField {
}

-(void) textDidChange:(NSNotification *) aNotification;

@end
