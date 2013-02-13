#import <Foundation/Foundation.h>

@interface Calculator: NSObject;
@property (assign) int numberOnScreen;
@property (assign) int numberAccumulated;
@property (assign) char operationPending;

-(void) pressKey: (char) theKey;
bool isADigit(char someChar);
bool isClearScreenKey(char theChar);
-(void) appendDigit: (char) number;

@end