//
//  SimpleKMLLookAt.m
//  fa-coachella-15
//
//  Created by Bryn Bodayle on March/23/2015.
//
//

#import "SimpleKMLLookAt.h"

@implementation SimpleKMLLookAt

- (id)initWithXMLNode:(CXMLNode *)node sourceURL:(NSURL *)inSourceURL error:(NSError **)error
{
    self = [super initWithXMLNode:node sourceURL:inSourceURL error:error];
    
    if (self != nil) {
        
        self.range = 0.0f;
        self.heading = 0.0f;
        self.altitude = 0.0f;
        
        CLLocationCoordinate2D coordinate = kCLLocationCoordinate2DInvalid;
        
        for(CXMLNode *child in node.children){
            
            if([child.name isEqualToString:@"latitude"]) {
                
                coordinate.latitude = [child.stringValue doubleValue];
            }
            else if([child.name isEqualToString:@"longitude"]) {
                
                coordinate.longitude = [child.stringValue doubleValue];
            }
            else if([child.name isEqualToString:@"heading"]) {
                
                self.heading = [child.stringValue doubleValue];
            }
            else if([child.name isEqualToString:@"range"]) {
                
                self.range = [child.stringValue doubleValue];
            }
            else if([child.name isEqualToString:@"altitude"]) {
                
                self.altitude = [child.stringValue doubleValue];
            }
        }
        
        _coordinate = coordinate;
    }
    
    return self;
}

@end
