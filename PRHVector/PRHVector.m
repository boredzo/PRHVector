//
//  PRHVector.m
//  PRHVector
//
//  Created by Peter Hosey on 2013-05-24.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import "PRHVector.h"

#include <tgmath.h>

@interface PRHVector ()

- (CGFloat) convertToDegreesFromRadians:(CGFloat)radians;

- (void) convertFromAngleInRadians:(CGFloat)theta magnitude:(CGFloat)mag toX:(CGFloat *)outX y:(CGFloat *)outY;

- (CGFloat) convertToRadiansFromDegrees:(CGFloat)degrees;

@end

@implementation PRHVector

+ (instancetype) vectorWithX:(CGFloat)x y:(CGFloat)y {
	return [[self alloc] initWithX:x y:y];
}

- (instancetype) initWithX:(CGFloat)x y:(CGFloat)y {
	if ((self = [super init])) {
		_x = x;
		_y = y;
	}
	return self;
}

+ (instancetype) vectorWithAngleInRadians:(CGFloat)theta magnitude:(CGFloat)mag {
	return [[PRHVector alloc] initWithAngleInRadians:theta magnitude:mag];
}
- (instancetype) initWithAngleInRadians:(CGFloat)theta magnitude:(CGFloat)mag {
	CGFloat x;
	CGFloat y;
	[self convertFromAngleInRadians:theta magnitude:mag toX:&x y:&y];
	return [self initWithX:x y:y];
}

+ (instancetype) vectorWithAngleInDegrees:(CGFloat)degrees magnitude:(CGFloat)mag {
	return [[PRHVector alloc] initWithAngleInDegrees:degrees magnitude:mag];
}
- (instancetype) initWithAngleInDegrees:(CGFloat)degrees magnitude:(CGFloat)mag {
	CGFloat theta = [self convertToRadiansFromDegrees:degrees];
	return [self initWithAngleInRadians:theta magnitude:mag];
}

- (CGPoint) point {
	return (CGPoint){ self.x, self.y };
}
- (void) setPoint:(CGPoint)point {
	self.x = point.x;
	self.y = point.y;
}

- (CGSize) size {
	return (CGSize){ self.x, self.y };
}
- (void) setSize:(CGSize)size {
	self.x = size.width;
	self.y = size.height;
}

- (CGFloat) angleInDegrees {
	CGFloat radians = self.angleInRadians;
	return [self convertToDegreesFromRadians:radians];
}
- (void) setAngleInDegrees:(CGFloat)angleInDegrees {
	[self setAngleInRadians:[self convertToRadiansFromDegrees:angleInDegrees]];
}

- (CGFloat) angleInRadians {
	CGFloat angleInRadians = atan2(self.y, self.x);
	if (angleInRadians < 0.0)
		angleInRadians += M_PI * 2.0;
	return angleInRadians;
}
- (void) setAngleInRadians:(CGFloat)angleInRadians {
	CGFloat x, y;
	[self convertFromAngleInRadians:angleInRadians
		magnitude:self.magnitude
		toX:&x
		y:&y];
	self.x = x;
	self.y = y;
}

- (CGFloat) magnitude {
	return hypot(self.x, self.y);
}
- (void) setMagnitude:(CGFloat)magnitude {
	CGFloat x, y;
	[self convertFromAngleInRadians:self.angleInRadians
		magnitude:magnitude
		toX:&x
		y:&y];
	self.x = x;
	self.y = y;
}

- (void) convertFromAngleInRadians:(CGFloat)theta magnitude:(CGFloat)mag toX:(out CGFloat *)outX y:(out CGFloat *)outY {
	(*outX) = cos(theta) * mag;
	(*outY) = sin(theta) * mag;
}

- (CGFloat) convertToRadiansFromDegrees:(CGFloat)degrees {
	return (degrees / 360.0) * (M_PI * 2);
}
- (CGFloat) convertToDegreesFromRadians:(CGFloat)radians {
	return (radians / (M_PI * 2.0)) * 360.0;
}

- (CGFloat) slope {
	CGFloat slope = fabs(self.x) > 0.0
		? tan(self.angleInRadians)
		: fabs(self.y) > 0.0
			? copysign(INFINITY, self.y)
			: 0.0;

	return slope;
}

- (void) getDirectionOnXAxis:(out CGFloat *)outXAxis yAxis:(out CGFloat *)outYAxis {
	if (outXAxis != NULL) {
		*outXAxis = self.x == 0.0
			? 0.0
			: self.x < -0.0
				? -1.0
				: +1.0;
	}
	if (outYAxis != NULL) {
		*outYAxis = self.y == 0.0
			? 0.0
			: self.y < -0.0
				? -1.0
				: +1.0;
	}
}

- (PRHVectorAxis) axis {
	return __builtin_expect(self.magnitude == 0.0, 0)
		? PRHVectorAxisPerfectCenter
		: fabs(self.slope) > 1.0
			? PRHVectorAxisY
			: PRHVectorAxisX;
}

@end
