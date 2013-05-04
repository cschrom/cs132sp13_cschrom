//
//  WCSFractionCalculator.h
//  Fraction Calculator
//
//  Created by Colby Schrom on 5/3/13.
//  Copyright (c) 2013 Colby Schrom. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "WCSFraction.h"
#import "WCSMutableFraction.h"

@interface WCSFractionCalculator : NSObject <NSApplicationDelegate>

typedef enum
{
    WCSPartTop,
    WCSPartBottom
} entryPart;

@property (strong, readwrite) WCSMutableFraction* numberOnScreen;
@property (strong, readwrite) WCSMutableFraction* numberAccumulated;
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
