//
//  WordPrompt.m
//  PigLatin060516
//
//  Created by Yasmin Ahmad on 2016-05-08.
//  Copyright © 2016 YasminA. All rights reserved.
//

#import "WordPrompt.h"

@implementation WordPrompt

//instantiate the prompt method

-(NSString *)prompt:(NSString *)promptString{
    char inputChar[200];
    NSString *userString = [[NSString alloc]init];
    
    NSLog(@"%@", promptString);
    
    fgets(inputChar, 200, stdin);
    userString = [NSString stringWithUTF8String:inputChar];
    userString = [userString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
 
    return userString;


}
@end