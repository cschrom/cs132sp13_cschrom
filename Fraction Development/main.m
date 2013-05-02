//
//  main.m
//  Fraction Development
//
//  Created by Bryant Adams on 3/19/13.
//  Copyright (c) 2013 Wells CS132: Object Oriented Programming. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "WCSFraction.h"
#import "WCSMutableFraction.h"

int main(int argc, char *argv[])
{
    WCSFraction* oneThird;
    WCSFraction* oneHalf;
    WCSFraction* oneEighth;
    WCSFraction* two;
    WCSFraction* theMutant;
    WCSFraction* theResult;
    
    oneThird = [[WCSFraction alloc] initWithNumerator:1 andDenominator:3];
    oneHalf = [[WCSFraction alloc] initWithNumerator:1 andDenominator:2];
    theResult = [oneThird minus:oneHalf];
    NSLog(@"%@", theResult);
    
    oneEighth = [[WCSMutableFraction alloc] initWithNumerator:1 andDenominator:8];
    two = [[WCSMutableFraction alloc] initWithNumerator:4 andDenominator:2];
    theMutant = [[WCSMutableFraction alloc] initWithNumerator:5 andDenominator:8];
    theMutant = [theMutant minus:oneEighth];
    theMutant = [theMutant multiply:two];
    NSLog(@"%@", theMutant);
    
    return NSApplicationMain(argc, (const char **)argv);
}
