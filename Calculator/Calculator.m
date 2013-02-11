#import "Calculator.h"

@implementation Calculator
@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operationPending;

-(void) pressKey: (char) theKey
{
    if (theKey >= '0' && theKey <= '9')
    {
        int nos = [self numberOnScreen];
        int digit = the key - '0';
        int newNumber = nos*10 + digit;
        [self setNumberOnScreen:newNumber];
        
        //numberOnScreen = numberOnScreen * 10 + theKey - '0';
        
    } else if (theKey == 'C' || theKey == 'c')
    {
        [self setNumberOnScreen:0];
    }
    else NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)", theKey, NSStringFromSelector(_cmd), self, self);
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
@end