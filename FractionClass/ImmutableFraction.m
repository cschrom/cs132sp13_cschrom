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
    
    [self setResultNum: -numerator];
    
    [self setResult: resultNum / denominator];
    [result reduced];
    
    return result;
}

-(FractPtr) reciprocal
{
    int resultNum;
    int resultDenom;
    int result;
    
    [self setResultNum: denominator];
    [self setResultDenom: numerator];
    
    [self setResult: resultNum / resultDenom];
    [result reduced];
    
    return result;
}

-(FractPtr) reduced
{
    int GCD(int x, int y);
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
    int resultNum;
    int resultDenom;
    int result;
    
    [self setResultNum: numerator * denominator - denominator * numerator];
    [self setResultDenom: denominator * denominator];
    
    [self setResult: resultNum / resultDenom];
    [result reduced];
    
    return result;
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
    [result reduced];
    
    return result;
}

-(FractPtr) divideBy
{
    int resultNum;
    int resultDenom;
    int result;
    
    [self setResultNum: numerator * denominator];
    [self setResultDenom: denominator * numerator];
    
    [self setResult: resultNum / resultDenom];
    [result reduced];
    
    return result;
}

-(FractPtr) DivideInto
{
    int resultNum;
    int resultDenom;
    int result;
    
    [self setResultNum: numerator * denominator];
    [self setResultDenom: denominator * numerator];
    
    [self setResult: resultNum / resultDenom];
    [result reduced];
    
    return result;
}

int GCD(int x, int y)
{
    return 0;
}

@end
