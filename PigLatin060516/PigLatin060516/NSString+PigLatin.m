//
//  NSString+PigLatin.m
//  PigLatin060516
//
//  Created by Yasmin Ahmad on 2016-05-06.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization{
    
    //create two strings
    //string for the 'regular' word that is entered
    //string for 'pig latin' version of the word
    NSString *pigLatin = @"";
    NSString *regularWord = @"";
    
    //require an array for regular words in string
    
    NSArray *regularArray = [self componentsSeparatedByString:@" "];
    
    
    for (NSString *regular in regularArray){
        
        regularWord = regular;
        
        //remove first consonant from word (first character is consonant, second is vowel
        if ([regularWord rangeOfCharacterFromSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"]].location == 1){
            //if regularWord fist letter is a consonant return string with characters not including the one at given index
            regularWord = [regularWord stringByAppendingString:[regular substringToIndex:1]];
            //return remaining characters within the range - in this case from index 1 for the length of the word
            regularWord = [NSString stringWithString:[regularWord substringWithRange:NSMakeRange(1, [regular length])]];
            //return regularWord formatted with'ay' at the end
            regularWord = [NSString stringWithFormat:@"%@%@", regularWord,@"ay"];
            
        }
        
        //if first character is consonant and followed by another consonant return regular word entered by user
        else{
            regularWord = regular;
        }
        
        pigLatin = [pigLatin stringByAppendingString:[NSString stringWithFormat:@"%@", regularWord]];
    }
   
    return pigLatin; 
    
}

//test
//cake = akecay
//today is saturday = odaytayisaturdaysay


@end
