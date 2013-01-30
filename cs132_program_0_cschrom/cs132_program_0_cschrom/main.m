/**
 @file main.m
 @author Prof. Adams, Colby Schrom
 @date 2013 01 18
 */

#import <Foundation/Foundation.h>

/**
 @brief Entry point for the program - sets up objects and puts everything in motion
 @returns EXIT_SUCCESS if all went well
 */
int main(void)
{
    
    @autoreleasepool {
        
        NSMutableArray* words = nil;
        
        NSLog(@"array unitialized %@", words);
        words = [[NSMutableArray alloc] init];
        NSLog(@"initialized array %@", words);
        
        NSLog(@"adding to array %@", words);
        [words addObject:(@" ,")];
        
        NSLog(@"adding to array %@", words);
        [words addObject:(@"Hello")];
        
        NSLog(@"adding to array %@", words);
        [words addObject:(@"World")];
        
        NSLog(@"sorting %@", words);
        [words sortUsingSelector: @selector(localizedCaseInsensitiveCompare:)];
        
        
        
    }
    return EXIT_SUCCESS;
}