//
//  WCSMutableFraction.h
//  Fraction Development
//
//  Created by Colby Schrom on 4/18/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"

@interface WCSMutableFraction : WCSFraction
@property (readwrite, assign) int numerator;
@property (readwrite, assign) int denominator;

-(void) setNumerator:(int)num
      andDenominator:(int)denom;
-(void) modifyByAdding:(WCSMutableFraction*)fract;
-(void) modifyByMultiplying:(WCSMutableFraction*)fract;
-(void)modifyByInverting:(WCSMutableFraction*)fract;
-(void)modifyByNegating:(WCSMutableFraction*)fract;

@end
