#import "Calculator.h"

@implementation Calculator

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
            } else if (isClearAllKey(theKey) == YES);
            {
                [self clearAccumulator:theKey];
                [self clearOperation:theKey];
            } //else NSLog(@"uncovered argument '%c' response to '%@' message received by object at %p (%@)", theKey, NSStringFromSelector(_cmd), self, self);
    return;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        _numberOnScreen = 0;
        _numberAccumulated = 0;
        _operationPending = '?';
    }
    return self;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.", _numberOnScreen];
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
    [self setNumberAccumulated:_numberOnScreen];
    [self clearScreen:0];
    [self setOperationPending:theOperator];
}

-(void) computeAndDisplayResult
{
    int nos = [self numberOnScreen];
    int numAcc = [self numberAccumulated];
    int result = 0;
    
    switch ([self operationPending])
    {
        case '+':
            result = numAcc + nos;
            break;
            
        case '-':
            result = numAcc - nos;
            break;
            
            
        case '*':
            result = numAcc * nos;
            break;
            
        case '/':
            result = numAcc / nos;
            break;
            
        default:
            break;
    }
    
    [self setNumberOnScreen:result];
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