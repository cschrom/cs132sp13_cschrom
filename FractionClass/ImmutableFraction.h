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

-(float) someFloat;

@end
