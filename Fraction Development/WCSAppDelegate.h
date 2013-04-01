//
//  WCSAppDelegate.h
//  Fraction Development
//
//  Created by Bryant Adams on 3/19/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WCSFraction : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (readonly) int numerator;
@property (readonly) int denominator;
@property int numCalculated;
@property int denomCalculated;

-(id) initWithNumerator:(int)num
         andDenominator:(int) denom;
-(id) initWithFraction: FractPtr;
int GCD(int x, int y);

-(Fract)convertToFract;
-(float) someFloat;
-(WCSFraction*) negative;
-(WCSFraction*) reciprocal;
-(WCSFraction*) reduced;
-(WCSFraction*) addTo;
-(WCSFraction*) subtractFrom;
-(WCSFraction*) minus;
-(WCSFraction*) multiply;
-(WCSFraction*) divideBy;
-(WCSFraction*) DivideInto;
@end