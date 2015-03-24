//
//  SimpleKMLLookAt.h
//  fa-coachella-15
//
//  Created by Bryn Bodayle on March/23/2015.
//
//

#import "SimpleKMLFeature.h"

@import CoreLocation;

@interface SimpleKMLLookAt : SimpleKMLFeature

@property (nonatomic, assign) CLLocationCoordinate2D coordinate;
@property (nonatomic, assign) CLLocationDirection heading;
@property (nonatomic, assign) CLLocationDistance range;
@property (nonatomic, assign) CLLocationDistance altitude;

@end
