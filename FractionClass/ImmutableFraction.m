//
//  ImmutableFraction.m
//  
//
//  Created by Colby Schrom on 3/7/13.
//
//

#import "ImmutableFraction.h"

@implementation ImmutableFraction

-(id) init
{
    int numerator = 0;
    int denominator = 1;
    return Nil;
}

-(NSString*) description
{
    
}

-(FractPtr) negative
{
    
}

-(FractPtr) reciprocal
{
    [self setNumerator: denominator];
    [self setDenominator: numerator];
}

-(FractPtr) reduced
{
    return Nil;
}

-(FractPtr) add
{
    int resultNum;
    int resultDenom;
    int result;
    
    resultNum = (numerator * denominator) + (denominator * f.numerator);
    resultDenom = denominator * denominator;
    
    [self setResult: resultNum / resultDenom];
    [result reduced];
    
    return result;
}

-(FractPtr) subtractFrom
{
    return Nil;
}

-(FractPtr) minus
{
    int resultNum;
    int resultDenom;
    int result;
    
    resultNum = numerator * denominator - denominator * numerator;
    resultDenom = denominator * denominator;
    
    [self setResult: resultNum / resultDenom];
    [result reduce];
    
    return result;
}

-(FractPtr) multiply
{
    int resultNum;
    int resultDenom;
    int result;
    
    resultDenom = numerator * numerator;
    resultDenom = denominator * denominator;
    
    [self setResult: resultNum / resultDenom];
    [result reduce];
    
    return result;
}

-(FractPtr) divideBy
{
    
}

-(FractPtr) DivideInto
{
    return Nil;
}

int GCD(int x, int y)
{
    return 0;
}

@end
