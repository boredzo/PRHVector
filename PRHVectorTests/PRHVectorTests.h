//
//  PRHVectorTests.h
//  PRHVectorTests
//
//  Created by Peter Hosey on 2013-05-24.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import "PRHVector.h"

@interface PRHVectorTests : SenTestCase

- (void) testMagnitudeOfStraightRightUnitVector;
- (void) testMagnitudeOfStraightLeftUnitVector;
- (void) testMagnitudeOfStraightUpUnitVector;
- (void) testMagnitudeOfStraightDownUnitVector;
- (void) testMagnitudeOf45DegreeUnitVector;

- (void) testAngleOfStraightRightUnitVector;
- (void) testAngleOfStraightLeftUnitVector;
- (void) testAngleOfStraightUpUnitVector;
- (void) testAngleOfStraightDownUnitVector;
- (void) testAngleOf45DegreeUnitVector;

- (void) testCoordinatesOfStraightRightUnitVector;
- (void) testCoordinatesOfStraightLeftUnitVector;
- (void) testCoordinatesOfStraightUpUnitVector;
- (void) testCoordinatesOfStraightDownUnitVector;
- (void) testCoordinatesOf45DegreeUnitVector;

- (void) testSlopeOfZeroVector;
- (void) testSlopeOfStraightRightUnitVector;
- (void) testSlopeOfStraightLeftUnitVector;
//Slope of straight up/down should be INF
- (void) testSlopeOfStraightUpUnitVector;
- (void) testSlopeOfStraightDownUnitVector;
//Slope of 45-degree (or multiple thereof) should be ±1.0
//TODO: Check correct slope for negative-x and/or negative-y vectors
- (void) testSlopeOf45DegreeUnitVector;
- (void) testSlopeOf135DegreeUnitVector;
- (void) testSlopeOf225DegreeUnitVector;
- (void) testSlopeOf315DegreeUnitVector;

- (void) testAxisDirectionsOfZeroVector;
- (void) testAxisDirectionsOfStraightRightUnitVector;
- (void) testAxisDirectionsOfStraightLeftUnitVector;
- (void) testAxisDirectionsOfStraightUpUnitVector;
- (void) testAxisDirectionsOfStraightDownUnitVector;
- (void) testAxisDirectionsOf45DegreeUnitVector;
- (void) testAxisDirectionsOf135DegreeUnitVector;
- (void) testAxisDirectionsOf225DegreeUnitVector;
- (void) testAxisDirectionsOf315DegreeUnitVector;

- (void) testAxisOfZeroVector;
- (void) testAxisOfStraightRightUnitVector;
- (void) testAxisOfStraightLeftUnitVector;
- (void) testAxisOfStraightUpUnitVector;
- (void) testAxisOfStraightDownUnitVector;

- (void) testDescriptionOfZeroVector;
- (void) testDescriptionOfStraightRightUnitVector;
- (void) testDescriptionOfStraightLeftUnitVector;
- (void) testDescriptionOfStraightUpUnitVector;
- (void) testDescriptionOfStraightDownUnitVector;
- (void) testDescriptionOf45DegreeUnitVector;
- (void) testDescriptionOf135DegreeUnitVector;
- (void) testDescriptionOf225DegreeUnitVector;
- (void) testDescriptionOf315DegreeUnitVector;

@end
