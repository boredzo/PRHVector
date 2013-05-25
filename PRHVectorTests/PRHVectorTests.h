//
//  PRHVectorTests.h
//  PRHVectorTests
//
//  Created by Peter Hosey on 2013-05-24.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>

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

@end
