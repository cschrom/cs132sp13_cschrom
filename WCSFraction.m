//
//  WCSFraction.m
//  Fraction Development
//
//  Created by Colby Schrom on 3/25/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"

@implementation WCSFraction: NSObject
@synthesize numerator = _DNU_numeratator;
@synthesize denominator = _DNU_dinominatator;

-(id) initWithNumerator:(int)num
         andDenominator:(int) denom;
{
    _DNU_numeratator = 0;
    _DNU_dinominatator = 0;
    return Nil;
}

-(id) initWithFraction:(id)FractPtr
{
    return nil;
}

-(NSString*) description
{
    return nil;
}

-(WCSFraction*) negative
{
    int resultNum = [self numerator];
    int resultDenom = [self denominator];
    WCSFraction* result;
    
    result = [[WCSFraction alloc] initWithNumerator:-resultNum];
    result = [[WCSFraction alloc] andDenominator:resultDenom];
    
    return [result reduced];
}

-(WCSFraction*) reciprocal
{
    int resultNum = [self denominator];
    int resultDenom = [self numerator];
    WCSFraction* result;
    
    result = resultNum / resultDenom;
    return [result reduced];
}

-(WCSFraction*) reduced
{
    int GCD(int x, int y);
}

-(WCSFraction*) addTo
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    WCSFraction* result;
    
    resultNum = (a * c) + (d * b);
    resultDenom = c * d;
    
    result = resultNum / resultDenom;
    return [result reduced];
}

-(WCSFraction*) subtractFrom
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    WCSFraction* result;
    
    resultNum = a * c - b * d;
    resultDenom = c * d;
    
    result = resultNum / resultDenom;
    return [result reduced];
}

-(WCSFraction*) minus
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    WCSFraction* result;
    
    resultNum = (a * c) - (d * b);
    resultDenom = c * d;
    
    result = resultNum / resultDenom;
    return [result reduced];
}

-(WCSFraction*) multiplyBy
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    WCSFraction* result;
    
    resultNum = a * b;
    resultDenom = c * d;
    
    result = resultNum / resultDenom;
    return [result reduced];
}

-(WCSFraction*) divideBy
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    WCSFraction* result;
    
    resultNum = a * d;
    resultDenom: c * b;
    
    result = resultNum / resultDenom;
    return [result reduced];
}

-(WCSFraction*) DivideInto
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    WCSFraction* result;
    
    resultNum = b * c;
    resultDenom = d * a;
    
    result = resultNum / resultDenom;
    return [result reduced];
}

int GCD(int x, int y)
{
    return 0;
}

@end
