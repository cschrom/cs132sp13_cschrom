//
//  WCSFractionCalculator.m
//  Fraction Calculator
//
//  Created by Colby Schrom on 5/3/13.
//  Copyright (c) 2013 Colby Schrom. All rights reserved.
//

#import "WCSFractionCalculator.h"
#import "WCSFraction.h"
#import "WCSMutableFraction.h"

@implementation WCSFractionCalculator

-(void) pressKey: (char) theKey
{
    if(isADigit(theKey) == YES)
    {
        [self appendDigit:theKey];
        
        //numberOnScreen = numberOnScreen * 10 + theKey - '0';
    } else if (isClearScreenKey(theKey) == YES)
    {
        [self clearScreen:theKey];
    } else if (isResultKey(theKey) == YES)
    {
        [self computeAndDisplayResult];
    } else if (isArithmeticAllKey(theKey) == YES)
    {
        [self registerArithmetic:theKey];
    } else if (isClearAllKey(theKey) == YES)
    {
        [self clearAccumulator:theKey];
        [self clearOperation:theKey];
    } else if (isSwitchKey(theKey) == YES)
    {
        [self switchPart:(theKey)];
    } else if (isDeleteKey(theKey) == YES)
    {
        [self deleteSpace:theKey];
    } else NSLog(@"uncovered argument '%c' response to '%@' message received by object at %p (%@)", theKey, NSStringFromSelector(_cmd), self, self);
    return;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        [self clearScreen:0];
        [self clearAccumulator:0];
        [self clearOperation:'?'];
    }
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %@ on screen.", _numberOnScreen];
}

-(void) appendDigit: (char) charDigit
{
    WCSMutableFraction* nos = [self numberOnScreen];
    switch ([self activePart])
    {
        case WCSPartTop:
            [nos setNumerator:[nos numerator]*10 + charDigit];
            break;
        case WCSPartBottom:
            [nos setNumerator:[nos denominator]*10 + charDigit];
            
        default: WCSPartTop:
            [nos setNumerator:[nos numerator]*10 + charDigit];
            break;
    }
}

-(void) clearScreen: (char) screenClearer
{
    WCSMutableFraction* zero = [[WCSMutableFraction alloc] initWithNumerator:0 andDenominator:1];
    [self setNumberOnScreen: zero];
}

-(void) registerArithmetic: (char) theOperator
{
    [self computeAndDisplayResult];
    [self setNumberAccumulated:_numberOnScreen];
    [self clearScreen:0];
    [self setOperationPending:theOperator];
}

-(void) computeAndDisplayResult
{
    WCSMutableFraction* nos = [self numberOnScreen];
    WCSMutableFraction* numAcc = [self numberAccumulated];
    
    switch ([self operationPending])
    {
        case '+':
            [nos modifyByAdding: numAcc];
            break;
            
        case '-':
            [nos modifyByAdding: [numAcc negative]];
            break;
            
            
        case '*':
            [nos modifyByMultiplying: numAcc];
            break;
            
        case '/':
            [nos modifyByMultiplying: [numAcc reciprocal]];
            break;
            
        default:
            break;
    }
    
    [self setNumberOnScreen:nos];
    [self clearAccumulator:0];
    [self clearOperation:'?'];
}

-(void) clearAccumulator: (char) accumulatorClearer;
{
    [self setNumberAccumulated:0];
}

-(void) clearOperation: (char) operationClearer;
{
    [self setOperationPending:'?'];
}

-(void)switchPart:(char)switcher
{
    if ([self activePart] == WCSPartTop)
    {
        [self setActivePart: WCSPartBottom];
    } else if (_activePart == WCSPartBottom)
    {
        [self setActivePart: WCSPartTop];
    } else NSLog(@"You broke the program. Impressive.");
}

-(void) deleteSpace:(char)deleteKey
{
    WCSMutableFraction* nos = [self numberOnScreen];
    
    if ([self activePart] == WCSPartTop)
    {
        [nos setNumerator:[nos numerator]/10];
    } else if (_activePart == WCSPartBottom)
    {
        [nos setNumerator:[nos numerator]/10];
    }
}

@end

bool isADigit(char someChar)
{
    if('0' <= someChar && someChar <= '9')
    {
        return YES;
    } else
        return NO;
}

bool isClearScreenKey(char theChar)
{
    if (theChar == 'C' || theChar == 'c')
    {
        return YES;
    }   else
        return NO;
}

bool isClearAllKey(char AllClear)
{
    if (AllClear == 'A' || AllClear == 'a')
    {
        return YES;
    } else
        return NO;
}

bool isResultKey(char resultKey)
{
    if (resultKey == '=')
    {
        return YES;
    }   else
        return NO;
}

bool isArithmeticAllKey(char theOperator)
{
    if(theOperator == '+' || theOperator == '-' || theOperator == '*' || theOperator == '/')
    {
        return YES;
    } else return NO;
}

bool isSwitchKey(char flop)
{
    if (flop == '%')
    {
        return YES;
    } else return NO;
}

bool isDeleteKey(char deleteKey)
{
    if (deleteKey == '<')
    {
        return YES;
    } else return NO;
}
