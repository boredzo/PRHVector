//
//  PRHVectorTests.m
//  PRHVectorTests
//
//  Created by Peter Hosey on 2013-05-24.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import "PRHVectorTests.h"

#import "PRHVector.h"

@implementation PRHVectorTests

- (void) setUp {
	[super setUp];

	// Set-up code here.
}

- (void) tearDown {
	// Tear-down code here.

	[super tearDown];
}

- (void) testMagnitudeOfStraightRightUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:+1.0 y:0.0];
	STAssertEqualsWithAccuracy(vector.magnitude, 1.0, 0.0001, @"Magnitude of unit vector (straight right) should be 1");
}

- (void) testMagnitudeOfStraightLeftUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:-1.0 y:0.0];
	STAssertEqualsWithAccuracy(vector.magnitude, 1.0, 0.0001, @"Magnitude of unit vector (straight left) should be 1");
}

- (void) testMagnitudeOfStraightUpUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:0.0 y:+1.0];
	STAssertEqualsWithAccuracy(vector.magnitude, 1.0, 0.0001, @"Magnitude of unit vector (straight up) should be 1");
}

- (void) testMagnitudeOfStraightDownUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:0.0 y:-1.0];
	STAssertEqualsWithAccuracy(vector.magnitude, 1.0, 0.0001, @"Magnitude of unit vector (straight down) should be 1");
}

- (void) testMagnitudeOf45DegreeUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:cos(M_PI / 8.0) y:sin(M_PI / 8.0)];
	STAssertEqualsWithAccuracy(vector.magnitude, 1.0, 0.0001, @"Magnitude of unit vector (45 degree) should be 1");
}

#pragma mark -

- (void) testAngleOfStraightRightUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:+1.0 y:0.0];
	STAssertEqualsWithAccuracy(vector.angleInRadians, 0.0, 0.0001, @"Angle of unit vector (straight right) should be 0 (0 degrees)");
	STAssertEqualsWithAccuracy(vector.angleInDegrees, 0.0, 0.0001, @"Angle of unit vector (straight right) should be 0 degrees");
}

- (void) testAngleOfStraightLeftUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:-1.0 y:0.0];
	STAssertEqualsWithAccuracy(vector.angleInRadians, M_PI, 0.0001, @"Angle of unit vector (straight left) should be pi (180 degrees)");
	STAssertEqualsWithAccuracy(vector.angleInDegrees, 180.0, 0.0001, @"Angle of unit vector (straight left) should be 180 degrees");
}

- (void) testAngleOfStraightUpUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:0.0 y:+1.0];
	STAssertEqualsWithAccuracy(vector.angleInRadians, (M_PI / 2.0), 0.0001, @"Angle of unit vector (straight up) should be pi/2 (90 degrees)");
	STAssertEqualsWithAccuracy(vector.angleInDegrees, 90.0, 0.0001, @"Angle of unit vector (straight up) should be 90 degrees");
}

- (void) testAngleOfStraightDownUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:0.0 y:-1.0];
	STAssertEqualsWithAccuracy(vector.angleInRadians, (M_PI * 1.5), 0.0001, @"Angle of unit vector (straight down) should be pi * 1.5 (270 degrees)");
	STAssertEqualsWithAccuracy(vector.angleInDegrees, 270.0, 0.0001, @"Angle of unit vector (straight down) should be 270 degrees");
}

- (void) testAngleOf45DegreeUnitVector {
	PRHVector *vector = [PRHVector vectorWithX:cos(M_PI / 4.0) y:sin(M_PI / 4.0)];
	STAssertEqualsWithAccuracy(vector.angleInRadians, (M_PI / 4.0), 0.0001, @"Angle of unit vector (45 degree) should be pi/4 (45 degrees)");
	STAssertEqualsWithAccuracy(vector.angleInDegrees, 45.0, 0.0001, @"Angle of unit vector (45 degree) should be 45 degrees");
}

#pragma mark -

- (void) testCoordinatesOfStraightRightUnitVector {
	PRHVector *vector = [PRHVector vectorWithAngleInDegrees:0.0 magnitude:1.0];
	STAssertEqualsWithAccuracy(vector.x, +1.0, 0.0001, @"X of unit vector (straight right) should be +1");
	STAssertEqualsWithAccuracy(vector.y, 0.0, 0.0001, @"Y of unit vector (straight right) should be 0");
}

- (void) testCoordinatesOfStraightLeftUnitVector {
	PRHVector *vector = [PRHVector vectorWithAngleInDegrees:180.0 magnitude:1.0];
	STAssertEqualsWithAccuracy(vector.x, -1.0, 0.0001, @"X of unit vector (straight left) should be -1");
	STAssertEqualsWithAccuracy(vector.y, 0.0, 0.0001, @"Y of unit vector (straight left) should be 0");
}

- (void) testCoordinatesOfStraightUpUnitVector {
	PRHVector *vector = [PRHVector vectorWithAngleInDegrees:90.0 magnitude:1.0];
	STAssertEqualsWithAccuracy(vector.x, 0.0, 0.0001, @"X of unit vector (straight up) should be 0");
	STAssertEqualsWithAccuracy(vector.y, +1.0, 0.0001, @"Y of unit vector (straight up) should be +1");
}

- (void) testCoordinatesOfStraightDownUnitVector {
	PRHVector *vector = [PRHVector vectorWithAngleInDegrees:270.0 magnitude:1.0];
	STAssertEqualsWithAccuracy(vector.x, 0.0, 0.0001, @"X of unit vector (straight down) should be 0");
	STAssertEqualsWithAccuracy(vector.y, -1.0, 0.0001, @"Y of unit vector (straight down) should be -1");
}

- (void) testCoordinatesOf45DegreeUnitVector {
	PRHVector *vector = [PRHVector vectorWithAngleInDegrees:45.0 magnitude:1.0];
	STAssertEqualsWithAccuracy(vector.x, cos(M_PI / 4.0), 0.0001, @"X of unit vector (45 degree) should be cos(pi/4)");
	STAssertEqualsWithAccuracy(vector.y, sin(M_PI / 4.0), 0.0001, @"Y of unit vector (45 degree) should be sin(pi/4)");
}

@end
