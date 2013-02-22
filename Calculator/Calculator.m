#import "Calculator.h"

@implementation Calculator
@synthesize numberOnScreen = _DNU_numberOnScreen;
@synthesize numberAccumulated = _DNU_numberAccumulated;
@synthesize operationPending = _DNU_operationPending;


-(void) pressKey: (char) theKey
{
    if(isADigit(theKey) == YES)
    {
        [self appendDigit:theKey];
        
        //numberOnScreen = numberOnScreen * 10 + theKey - '0';
        } else if (isClearScreenKey(theKey) == YES)
            {
                [self clearScreen:theKey];
            } else
                NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", theKey, NSStringFromSelector(_cmd), self, self);
    return;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        _DNU_numberOnScreen = 0;
        _DNU_numberAccumulated = 0;
        _DNU_operationPending = '+';
    }
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", _DNU_numberOnScreen];
}

-(void) appendDigit: (char) charDigit
{
    int nos = [self numberOnScreen];
    int digit = charDigit - '0';
    int newNumber = nos*10 + digit;
    [self setNumberOnScreen:newNumber];
}

-(void) clearScreen: (char) screenClearer
{
    [self setNumberOnScreen:0];
}

-(void) registerArithmetic: (char) theOperator
{
    _DNU_numberAccumulated = _DNU_numberOnScreen + _DNU_numberAccumulated;
    [self setNumberOnScreen:0];
    [self setOperationPending:theOperator];
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

bool isArithmeticAllKey(char arithmetic)
{
    if(arithmetic == '+' || arithmetic == '-' || arithmetic == '*' || arithmetic == '/')
    {
        return YES;
    } else return NO;
}