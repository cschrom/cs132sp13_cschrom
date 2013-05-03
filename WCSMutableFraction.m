//
//  WCSMutableFraction.m
//  Fraction Development
//
//  Created by Colby Schrom on 4/18/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSMutableFraction.h"

@implementation WCSMutableFraction
@synthesize numerator = _AOII_numerator;
@synthesize denominator = _AOII_denominator;

-(void) setNumerator:(int)num
      andDenominator:(int)denom
{
    int GCD = gcd(num,denom);
    
    [self setNumerator:num/GCD];
    [self setDenominator:denom/GCD];
}

-(id)mutablecopyWithZone:(NSZone*)zone
{
    WCSFraction* theFraction;
    theFraction = [[WCSFraction allocWithZone:zone] initWithFraction:self];
    return theFraction;
}

-(void) modifyByAdding:(WCSFraction*)fract
{
    int a = [self numerator];
    int b = [fract numerator];
    int c = [self denominator];
    int d = [fract denominator];
    int resultNum;
    int resultDenom;
    
    resultNum = (a * d) + (c * b);
    resultDenom = c * d;
    
    [self setNumerator:resultNum
        andDenominator:resultDenom];

}

-(void)modifyByMultiplying:(WCSFraction*)fract
{
    int a = [self numerator];
    int b = [fract numerator];
    int c = [self denominator];
    int d = [fract denominator];
    int resultNum;
    int resultDenom;
    
    resultNum = a * b;
    resultDenom = c * d;
    
    [self setNumerator:resultNum
        andDenominator:resultDenom];
}

-(void)modifyByInverting
{
    [self reciprocal];

}

-(void)modifyByNegating
{
    [self negative];
}
@end
