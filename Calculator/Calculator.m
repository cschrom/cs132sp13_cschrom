#import "Calculator.h"

@implementation Calculator
@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operationPending;

-(void) pressKey: (char) theKey
{
    if (numberOnScreen >= 0 && numberOnScreen <=9)
    {
        numberOnScreen = numberOnScreen * 10 + numberOnScreen;
    }
    if (theKey == 'C' || theKey == 'c')
    {
        numberOnScreen = 0;
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