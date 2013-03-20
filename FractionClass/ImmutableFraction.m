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
    int resultNum;
    int resultDenom;
    int result;
    
    [self setResultNum: -resultNum];
    
    [self setResult: resultNum / resultDenom];
    [result reduced];
    
    return result;
}

-(FractPtr) reciprocal
{
    int resultNum;
    int resultDenom;
    int result;
    
    [self setResultNum: resultDenom];
    [self setResultDenom: resultNum];
    
    [self setResult: resultNum / resultDenom];
    [result reduced];
    
    return result;
}

-(FractPtr) reduced
{
    return Nil;
}

-(FractPtr) addTo
{
    int resultNum;
    int resultDenom;
    int result;
    
    [self setResultNum: (numerator * denominator) + (denominator * numerator)];
    [self setResultDenom: denominator * denominator];
    
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
    
    [self setResultNum: numerator * denominator - denominator * numerator];
    [self setResultDenom: denominator * denominator];
    
    [self setResult: resultNum / resultDenom];
    [result reduced];
    
    return result;
}

-(FractPtr) multiplyBy
{
    int resultNum;
    int resultDenom;
    int result;
    
    [self setResultDenom: numerator * numerator];
    [self setResultDenom: denominator * denominator];
    
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
