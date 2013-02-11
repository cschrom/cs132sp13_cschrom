#import "Calculator.h"

@implementation Calculator
@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operatingPending;

-(void) pressKey: (char) theKey
{
    if (numberOnScreen >= '0' && numberOnScreen <='9')
    {
        numberOnScreen = numberOnScreen*10 + numberOnScreen;
    }
    else numberOnScreen = numberOnScreen;
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