//
//  SimpleKMLLabelStyle.m
//  fa-coreproject
//
//  Created by Bryn Bodayle on March/25/2015.
//  Copyright (c) 2015 Aloompa. All rights reserved.
//

#import "SimpleKMLLabelStyle.h"

@interface SimpleKMLLabelStyle()

@property (nonatomic, assign) CGFloat scale;

@end

@implementation SimpleKMLLabelStyle

- (id)initWithXMLNode:(CXMLNode *)node sourceURL:sourceURL error:(NSError **)error
{
    self = [super initWithXMLNode:node sourceURL:sourceURL error:error];
    
    if (self != nil)
    {
        
        self.scale = 1.0f;
        
        for (CXMLNode *child in [node children])
        {
            if ([[child name] isEqualToString:@"scale"])
            {
                self.scale = [child.stringValue floatValue];
            }
        }
    }
    
    return self;
}

@end
