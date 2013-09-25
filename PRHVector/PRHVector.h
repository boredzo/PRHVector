//
//  PRHVector.h
//  PRHVector
//
//  Created by Peter Hosey on 2013-05-24.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import <Foundation/Foundation.h>
#ifdef __MAC_OS_X_VERSION_MIN_REQUIRED
#   import <AppKit/AppKit.h>
#endif

typedef NS_ENUM(NSUInteger, PRHVectorAxis) {
	PRHVectorAxisPerfectCenter, //magnitude = 0
	PRHVectorAxisX,
	PRHVectorAxisY,
};

@interface PRHVector : NSObject

+ (instancetype) vectorWithX:(CGFloat)x y:(CGFloat)y;
- (instancetype) initWithX:(CGFloat)x y:(CGFloat)y;

+ (instancetype) vectorWithPoint:(NSPoint)point;
- (instancetype) initWithPoint:(NSPoint)point;

+ (instancetype) vectorWithSize:(NSSize)size;
- (instancetype) initWithSize:(NSSize)size;

+ (instancetype) vectorWithAngleInRadians:(CGFloat)theta magnitude:(CGFloat)mag;
- (instancetype) initWithAngleInRadians:(CGFloat)theta magnitude:(CGFloat)mag;

+ (instancetype) vectorWithAngleInDegrees:(CGFloat)degrees magnitude:(CGFloat)mag;
- (instancetype) initWithAngleInDegrees:(CGFloat)degrees magnitude:(CGFloat)mag;

#ifdef MAC_OS_X_VERSION_MIN_REQUIRED
//Returns a vector of the locationInWindow of absolute-location mouse events (such as mouseDown and mouseUp), or the deltaX and deltaY of relative mouse events (such as scrollWheel). All gestures are treated as absolute.
+ (instancetype) vectorWithEvent:(NSEvent *)event;
+ (bool) eventWillBeInterpretedAsRelative:(NSEvent *)event;

+ (bool) isStartOfDragFromMouseDownEvent:(NSEvent *)mouseDownEvent toMouseDraggedEvent:(NSEvent *)mouseDraggedEvent;
#endif

@property CGFloat x, y;

@property(nonatomic) CGPoint point;
@property(nonatomic) CGSize size;

//Unlike atan2(v.y, v.x), v.angleInRadians will try to always return a positive number.
//So, for example, a 270-degree vector will return an angle of pi*1.5, not -pi/2.
@property(nonatomic) CGFloat angleInDegrees, angleInRadians, magnitude;

@property(nonatomic, readonly) CGFloat slope;

//A vector with zero magnitude will return 0, 0. Any other vector will return a pair of 1s, of which either, neither, or both may be negative.
- (void) getDirectionOnXAxis:(out CGFloat *)outXAxis yAxis:(out CGFloat *)outYAxis;

//Returns whether a vector is horizontal or vertical (or goes nowhere).
//Use this for, e.g., examining drags.
- (PRHVectorAxis) axis;

- (instancetype) vectorForMovementFromOriginVector:(PRHVector *)originVector;
@end
