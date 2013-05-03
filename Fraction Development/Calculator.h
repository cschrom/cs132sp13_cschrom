#import <Foundation/Foundation.h>

typedef enum
{
    WCSPartTop,
    WCSPartBottom
} entryPart;

@interface Calculator: NSObject;
@property (assign) int numberOnScreen;
@property (assign) int numberAccumulated;
@property (assign) char operationPending;
@property (assign) entryPart activePart;

-(void) pressKey: (char) theKey;
-(void) appendDigit: (char) charDigit;
-(void) clearScreen: (char) screanClearer;
-(void) registerArithmetic: (char) theOperator;
-(void) computeAndDisplayResult;
-(void) clearAccumulator: (char) accumulatorClearer;
-(void) clearOperation: (char) operationClearer;
-(void) switchPart: (char) switcher;
-(void) deleteSpace: (char) deleteKey;

@end

bool isADigit(char someChar);
bool isClearScreenKey(char theChar);
bool isClearAllKey(char AllClear);
bool isResultKey(char resultKey);
bool isArithmeticAllKey(char theOperator);
bool isSwitchKey(char flop);
bool isDeleteKey(char deleteKey);