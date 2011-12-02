//
//  NumberField.m
//  RandPass
//
//  Created by Jason Chutko on 11-07-23.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NumberField.h"

@implementation NumberField

-(void) textDidChange: (NSNotification *) aNotification
{
    int val = [self intValue];
    
    if(val == 0)
    {
        val++;
    }
    
    [self setIntValue:val];
    //[[self delegate] controlTextDidChange:aNotification];
}

@end
