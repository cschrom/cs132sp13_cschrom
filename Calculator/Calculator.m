#import "Calculator.h"

@implementation Calculator
@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operationPending;

-(void) pressKey: (char) theKey
{
    if(isADigit(theKey) == YES)
    {
        int nos = [self numberOnScreen];
        int digit = theKey - '0';
        int newNumber = nos*10 + digit;
        [self setNumberOnScreen:newNumber];
        
        //numberOnScreen = numberOnScreen * 10 + theKey - '0';
        } else if (theKey == 'C' || theKey == 'c')
            {
                [self setNumberOnScreen:0];
            } else
                NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", theKey, NSStringFromSelector(_cmd), self, self);
    return;
}

- (id)init
{
    self = [super init];
    if (self)
    {
        //Set up initial calculator conditions here
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

@end