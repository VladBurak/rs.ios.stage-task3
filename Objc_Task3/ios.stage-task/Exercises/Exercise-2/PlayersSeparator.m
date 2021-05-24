#import "PlayersSeparator.h"

@implementation PlayersSeparator

- (NSInteger)dividePlayersIntoTeams:(NSArray<NSNumber *>*)ratingArray {
    int count = 0;
    for (int i =0; i < ratingArray.count; i++) {
        for (int j =1 +i; j < ratingArray.count; j++) {
            for (int k =1 +j; k < ratingArray.count; k++) {
            if ((ratingArray[i].intValue < ratingArray[j].intValue && ratingArray[j].intValue  < ratingArray[k].intValue) || (ratingArray[i].intValue > ratingArray[j].intValue && ratingArray[j].intValue > ratingArray[k].intValue)){
                    count +=1;
            }
        }
    }
}
    return count;
}

@end
