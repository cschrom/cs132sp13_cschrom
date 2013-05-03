//
//  ImmutableFraction.h
//  
//
//  Created by Colby Schrom on 3/7/13.
//
//

#import <Cocoa/Cocoa.h>

@interface ImmutableFraction : NSObject
@property (int readonly) numerator;
@property (int readonly) denominator;

-initWithNumerator: andDenominator: (int num, int denom);
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
