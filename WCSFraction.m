//
//  WCSFraction.m
//  Fraction Development
//
//  Created by Colby Schrom on 3/25/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"

@implementation WCSFraction

-(id) initWithNumerator:(id)andDenominator
{
    int numerator = 0;
    int denominator = 1;
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

-(FractPtr) negative
{
    int resultNum = [self numerator];
    int resultDenom = [self denominator];
    Fract* result;
    
    resultNum = -resultNum;
    
    result = resultNum / resultDenom;
    [result reduced];
    
    return result;
}

-(FractPtr) reciprocal
{
    int resultNum = [self denominator];
    int resultDenom = [self numerator];
    Fract* result;
    
    result = resultNum / resultDenom;
    [result reduced];
    
    return result;
}

-(FractPtr) reduced
{
    int GCD(int x, int y);
}

-(FractPtr) addTo
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    Fract* result;
    
    resultNum = (a * c) + (d * b);
    resultDenom = c * d;
    
    result = resultNum / resultDenom;
    [result reduced];
    
    return result;
}

-(FractPtr) subtractFrom
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    Fract* result;
    
    resultNum = a * c - b * d;
    resultDenom = c * d;
    
    result = resultNum / resultDenom;
    [result reduced];
    
    return result;
}

-(FractPtr) minus
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    Fract* result;
    
    resultNum = (a * c) - (d * b);
    resultDenom = c * d;
    
    result = resultNum / resultDenom;
    [result reduced];
    
    return result;
}

-(FractPtr) multiplyBy
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    Fract* result;
    
    resultNum = a * b;
    resultDenom: c * d;
    
    result = resultNum / resultDenom;
    [result reduced];
    
    return result;
}

-(FractPtr) divideBy
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    Fract* result;
    
    resultNum = a * d;
    resultDenom: c * b;
    
    result = resultNum / resultDenom;
    [result reduced];
    
    return result;
}

-(FractPtr) DivideInto
{
    int a = [self numerator];
    int b = [self numerator];
    int c = [self denominator];
    int d = [self denominator];
    int resultNum;
    int resultDenom;
    Fract* result;
    
    resultNum = b * c;
    resultDenom = d * a;
    
    result = resultNum / resultDenom;
    [result reduced];
    
    return result;
}

int GCD(int x, int y)
{
    return 0;
}

@end
