#import "Calculator.h"

@implementation Calculator
@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operationPending;
@synthesize _DNU_numberOnScreen;
@synthesize _DNU_numberAccumulated;
@synthesize _DNU_operationPending;

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
    return [NSString stringWithFormat:@"Calculator with %d on screen.", numberOnScreen];
}

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

@end