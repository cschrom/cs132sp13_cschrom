#import <Foundation/Foundation.h>

@interface Calculator: NSObject;
@property (assign) int numberOnScreen;
@property (assign) int numberAccumulated;
@property (assign) char operationPending;
@property (assign) int _DNU_numberOnScreen;
@property (assign) int _DNU_numberAccumulated;
@property (assign) char _DNU_operationPending;

-(void) pressKey: (char) theKey;
bool isADigit(char someChar);
bool isClearScreenKey(char theChar);
-(void) appendDigit: (char) charDigit;
-(void) clearScreen: (char) screanClearer;

@end