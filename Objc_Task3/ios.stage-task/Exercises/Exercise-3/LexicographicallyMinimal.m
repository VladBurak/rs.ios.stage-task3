#import "LexicographicallyMinimal.h"

@interface LexicographicallyMinimal()

@property (nonatomic, strong) NSMutableString *resultString;

@end

@implementation LexicographicallyMinimal

-(NSString *)findLexicographicallyMinimalForString1:(NSString *)string1 andString2:(NSString *)string2 {
  
    NSString* stringOne = [NSMutableString stringWithString:string1];
    NSString* stringTwo = [NSMutableString stringWithString:string2];
    NSMutableString* stringsResult = [[NSMutableString alloc]init];
  
    while (stringOne.length && stringTwo.length ) {
        const char* one = [stringOne UTF8String];
        const char* two = [stringTwo UTF8String];
    
        if (one[0] < two[0] || one[0] == two[0] ) {
            [stringsResult appendString:[stringOne substringToIndex:1]];
            stringOne = [stringOne substringFromIndex:1];
            
        } else {
            [stringsResult appendString:[stringTwo substringToIndex:1]];
            stringTwo = [stringTwo substringFromIndex:1];
        }
        
}
    if ([stringOne length]) {
        [stringsResult appendString:stringOne];
        
    } else {
        [stringsResult appendString:stringTwo];
    }
    return stringsResult;
}

@end
