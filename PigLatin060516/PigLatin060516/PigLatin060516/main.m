//
//  main.m
//  PigLatin060516
//
//  Created by Yasmin Ahmad on 2016-05-06.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"
#import "WordPrompt.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        //for user
        //alloc init NSString for 'regular' string
        //alloc init WordPrompt
        
        NSString *regularString = [[NSString alloc]init];
        WordPrompt *wordPrompt = [[WordPrompt alloc]init];
        
        //make regular string equal to what is entered by user when prompted 
        
        regularString = [wordPrompt prompt:@"Please enter a word: "];
        
        //log out word in pig latin
        NSLog(@"Your word in pig latin is: %@", [regularString stringByPigLatinization]);
        
    }
    return 0;
}
