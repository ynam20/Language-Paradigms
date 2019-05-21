#include <Foundation/Foundation.h>

@interface Player:NSObject {
int getpoints;
NSString *playername;
}

- (void) enterstats: (int) fieldgoals shotsmissed: (int) missed threepointers: (int) threes rebounds: (int) rebs assists: (int)ass
turnovers: (int) TOs;
- (void) setname: (NSString *) name;
- (NSString *) getname;
- (int) getpoints;

@end


@implementation Player 

- (int) getpoints{
	return getpoints;
}
	
- (void) enterstats: (int) fieldgoals shotsmissed: (int) missed threepointers: (int) threes rebounds: (int) rebs assists: (int)ass
turnovers: (int) TOs{
getpoints = fieldgoals - missed + threes + rebs + ass - TOs;
}

- (void) setname: name{
playername = name;
}

- (NSString *) getname{

return playername;

}

@end

int main(int argc, char * argv[]){
NSArray *players;
Player *curry = [Player new];
[curry enterstats: 8 shotsmissed: 10 threepointers: 4 rebounds: 5 assists: 7 turnovers: 5]; 
[curry setname: @"curry"];
Player *lebron = [Player new];
[lebron enterstats: 11 shotsmissed: 7 threepointers: 2 rebounds: 12 assists: 9 turnovers: 7];
[lebron setname: @"lebron"];

Player *westbrook = [Player new];
[westbrook enterstats: 6 shotsmissed: 13 threepointers: 0 rebounds: 9 assists: 14 turnovers: 6];
[westbrook setname: @"westbrook"];

Player *giannis = [Player new];
[giannis enterstats: 13 shotsmissed: 8  threepointers: 1 rebounds: 16 assists: 4 turnovers: 2];
[giannis setname: @"giannis"];

Player *harden = [Player new];
[harden enterstats: 12 shotsmissed: 16 threepointers: 6 rebounds: 7 assists: 15 turnovers: 8];
[harden setname: @"harden"];

players = [NSArray arrayWithObjects: giannis, curry, lebron, westbrook, harden, nil];


NSComparisonResult (^sortBlock)(id, id) = ^(id obj1, id obj2) //dynamic typing
{
    if ([obj1 getpoints] > [obj2 getpoints]) 
    { 
        return (NSComparisonResult)NSOrderedAscending;
    }
    if ([obj1 getpoints] < [obj2 getpoints]) 
    {
        return (NSComparisonResult)NSOrderedDescending;
    }
    return (NSComparisonResult)NSOrderedSame;
};
NSArray *sorted = [players sortedArrayUsingComparator:sortBlock];

for (Player *tempObject in sorted) {
    NSLog(@"Single element: %@", [tempObject getname]);
    NSLog(@"fantasy points: %d", [tempObject getpoints]);
}


}

