//
//  PRHVector.h
//  PRHVector
//
//  Created by Peter Hosey on 2013-05-24.
//  Copyright (c) 2013 Peter Hosey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PRHVector : NSObject

+ (instancetype) vectorWithX:(CGFloat)x y:(CGFloat)y;
- (instancetype) initWithX:(CGFloat)x y:(CGFloat)y;

+ (instancetype) vectorWithAngleInRadians:(CGFloat)theta magnitude:(CGFloat)mag;
- (instancetype) initWithAngleInRadians:(CGFloat)theta magnitude:(CGFloat)mag;

+ (instancetype) vectorWithAngleInDegrees:(CGFloat)degrees magnitude:(CGFloat)mag;
- (instancetype) initWithAngleInDegrees:(CGFloat)degrees magnitude:(CGFloat)mag;

@property CGFloat x, y;

@property(nonatomic) CGPoint point;
@property(nonatomic) CGSize size;

//Unlike atan2(v.y, v.x), v.angleInRadians will try to always return a positive number.
//So, for example, a 270-degree vector will return an angle of pi*1.5, not -pi/2.
@property(nonatomic) CGFloat angleInDegrees, angleInRadians, magnitude;

@end
