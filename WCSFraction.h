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

-initWithNumerator:andDenominator: (int num, int denom);
-initWithFraction: FractPtr;
int GCD(int x, int y);

-(float) someFloat;
-(FractPtr) negative;
-(FractPtr) reciprocal;
-(FractPtr) reduced;
-(FractPtr) add;
-(FractPtr) subtractFrom;
-(FractPtr) minus;
-(FractPtr) multiply;
-(FractPtr) divideBy;
-(FractPtr) DivideInto;
@end
