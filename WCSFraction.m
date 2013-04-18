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

-(id) initWithNumerator:(int) num
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
    int a = [self numerator];
    int b = [self denominator];
    WCSFraction* result;
    
    int resultNum =  a / gcd(a, b);
    int resultDenom = b / gcd(a, b);
    
    result = [[WCSFraction alloc] initWithNumerator:resultNum andDenominator:resultDenom];
    
    _numCalculated = resultNum;
    _denomCalculated = resultDenom;
    
    [result convertToFract];
    return [result reduced];
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

-(NSComparisonResult) compareToFraction:(WCSFraction*) otherFraction
{
    //Common math trick:
    //   Do not compare two things directly :   a  vs b
    //   Do ompare their difference to zero :  a-b vs 0
    //   It is often easiest to determine whether
    //    a value is postive, negative, or zero
    
    int difference = [[self minus] numerator];
    
    if(difference > 0) return NSOrderedDescending; // self > other
    if(difference < 0) return NSOrderedAscending; // self < other
    if(difference == 0) return NSOrderedSame; //self == other
    
    return NSOrderedSame; //This line should never execute
    
}

- (BOOL)isEqual:(id)other
{
    if (other == self)
        return YES; //That's ME!
    if (!other)
        return NO; //There's no "that" to compare to
    if(![other isKindOfClass:[WCSFraction class]])
        return NO; //Meh, it's not a fraction. Apples'n'oranges.
    
    return [self compareToFraction:other]==NSOrderedSame; //Comparing Fractions
}

-(NSUInteger) hash
{ //This has to do with how these could be stored in sets and dictionaries
    return MAX([self numerator], [self denominator]);
} //Wait until CS222 (Data Structures) to ask about this one


int gcd(int a, int b)
{ //Euclidean algorithm. It works!
    if(b==0) return a;
    else return gcd(b, a%b);
}

@end
