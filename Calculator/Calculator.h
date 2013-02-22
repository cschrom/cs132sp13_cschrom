#import <Foundation/Foundation.h>

@interface Calculator: NSObject;
@property (assign) int numberOnScreen;
@property (assign) int numberAccumulated;
@property (assign) char operationPending;


-(void) pressKey: (char) theKey;
-(void) appendDigit: (char) charDigit;
-(void) clearScreen: (char) screanClearer;
-(void) registerArithmetic: (char) theOperator;
-(void) computeAndDisplayResult;
-(void) clearAccumulator: (char) accumulatorClearer;
-(void) clearOperator: (char) operatorClearer;

@end

bool isADigit(char someChar);
bool isClearScreenKey(char theChar);
bool isClearAllKey(char AllClear);
bool isResultKey(char resultKey);
bool isArithmeticAllKey(char arithmetic);