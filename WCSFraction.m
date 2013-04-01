//
//  WCSFraction.m
//  Fraction Development
//
//  Created by Colby Schrom on 3/25/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import "WCSFraction.h"

@implementation WCSFraction
@synthesize numerator = _DNU_numeratator;
@synthesize denominator = _DNU_dinominatator;

-(id) initWithNumerator:(int)num
         andDenominator:(int) denom;
{
    _DNU_numeratator = 0;
    _DNU_dinominatator = 0;
    _numCalculated = 0;
    _denomCalculated = 0;
    
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

-(float) someFloat;
{
    return 0;
}

-(Fract)convertToFract
{
    int result;
    result = _numCalculated / _denomCalculated;
    return result;
}

-(WCSFraction*) negative
{
    int resultNum = [self numerator];
    int resultDenom = [self denominator];
    WCSFraction* result;
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
    return [result reduced];
}

-(WCSFraction*) reciprocal
{
    int resultNum = [self denominator];
    int resultDenom = [self numerator];
    WCSFraction* result;
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
    return [result reduced];
}

-(WCSFraction*) reduced
{
    int GCD(int x, int y);
    return nil;
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
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
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
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
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
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
    return [result reduced];
}

-(WCSFraction*) multiply
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
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
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
    resultDenom = c * b;
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
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
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
    return [result reduced];
}

int GCD(int x, int y)
{
    return 0;
}

@end
