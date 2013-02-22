#import <Foundation/Foundation.h>

@interface Calculator: NSObject;
@property (assign) int numberOnScreen;
@property (assign) int numberAccumulated;
@property (assign) char operationPending;


-(void) pressKey: (char) theKey;
-(void) appendDigit: (char) charDigit;
-(void) clearScreen: (char) screanClearer;

@end

bool isADigit(char someChar);
bool isClearScreenKey(char theChar);
bool isClearAllKey(char AllClear);