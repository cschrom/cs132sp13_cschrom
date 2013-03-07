//
//  ImmutableFraction.h
//  
//
//  Created by Colby Schrom on 3/7/13.
//
//

#import <Cocoa/Cocoa.h>

@interface ImmutableFraction : NSObject
@property (readonly) numerator;
@property (readonly) denominator;

-initWithNumerator: andDenominator: (int num, int denom);
-initWithFraction: FractPtr;
int GCD(int x, int y);

-(float) someFloat;
-(FractPtr) negative;
-(FractPtr) reciprocal;
-(FractPtr) sumWith;
-(FractPtr) subtractFrom;
-(FractPtr) minus;
-(FractPtr) multiplyBy;
-(FractPtr) divideBy;
-(FractPtr) DivideInto;

@end
