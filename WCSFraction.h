//
//  WCSFraction.h
//  Fraction Development
//
//  Created by Colby Schrom on 3/25/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WCSFraction : NSObject
@property (readonly) int numerator;
@property (readonly) int denominator;

-(id) initWithNumerator:(int)num
         andDenominator:(int) denom;
-(id) initWithFraction: FractPtr;
int GCD(int x, int y);

-(float) someFloat;
-(WCSFraction*) negative;
-(WCSFraction*) reciprocal;
-(WCSFraction*) reduced;
-(WCSFraction*) add;
-(WCSFraction*) subtractFrom;
-(WCSFraction*) minus;
-(WCSFraction*) multiply;
-(WCSFraction*) divideBy;
-(WCSFraction*) DivideInto;
@end