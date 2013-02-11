#import <Foundation/Foundation.h>

@interface Calculator: NSObject
@property (assign) int numberOnScreen;
@property int numberAccumulated;
@property char operatingPending;

-(void) pressKey: (char) theKey;

@end
