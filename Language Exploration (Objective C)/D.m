#include <Foundation/Foundation.h>
@interface DNode: NSObject{
NSString *letter; //a letter to identify the node
int distancefromroot; //this value can get updated if there is a different route whose distance is shorter

}
- (NSString *) getLetter; 
- (int) getDist;

- (void) setDist: (int) newdist;
- (void) setLetter: (NSString *) letterarg;


@end

@implementation DNode

//getter and setter methods
- (void) setLetter: (NSString *) letterarg;{
letter = letterarg;
}
- (NSString *) getLetter{
return letter;
}
- (int) getDist{
return distancefromroot;
}
- (void) setDist: (int) newdist{
distancefromroot = newdist;
}

@end


int main(int argc, char * argv[]){
//initialize the 4 nodes
DNode *A = [DNode new]; 
[A setDist:0];
[A setLetter: @"A"];
DNode *B = [DNode new];
[B setDist:10000];
[B setLetter: @"B"];
DNode *C = [DNode new];
[C setDist:10000];
[C setLetter: @"C"];
DNode *D = [DNode new];
[D setDist:10000];
[D setLetter: @"D"];


//unvisited array
NSMutableArray *unvisited;
unvisited = [[NSMutableArray alloc] initWithObjects: A, B, C, D, nil];

//dictionary makes node objects accessible by their letter
NSMutableDictionary *nodevaluepairs = [NSMutableDictionary dictionary];
[nodevaluepairs setObject: A forKey: @"A"];
[nodevaluepairs setObject: B forKey: @"B"];
[nodevaluepairs setObject: C forKey: @"C"];
[nodevaluepairs setObject: D  forKey: @"D"];


//establishes edge lengths to neighbors
NSMutableDictionary *ayyy = [NSMutableDictionary dictionary];
[ayyy setObject: [NSNumber numberWithInt:4]  forKey: @"B"];
[ayyy setObject: [NSNumber numberWithInt:5]  forKey: @"C"];
[ayyy setObject: [NSNumber numberWithInt:1]  forKey: @"D"];


NSMutableDictionary *beee = [NSMutableDictionary dictionary];
[beee setObject: [NSNumber numberWithInt:4] forKey: @"A"];
[beee setObject: [NSNumber numberWithInt:6]  forKey: @"D"];

NSMutableDictionary *seee = [NSMutableDictionary dictionary];
[seee setObject: [NSNumber numberWithInt:5] forKey: @"A"];
[seee setObject: [NSNumber numberWithInt:3]  forKey: @"D"];


NSMutableDictionary *deee = [NSMutableDictionary dictionary];
[deee setObject: [NSNumber numberWithInt:6] forKey: @"B"];
[deee setObject: [NSNumber numberWithInt:1]  forKey: @"A"];
[deee setObject: [NSNumber numberWithInt:3]  forKey: @"C"];

//nested dictionary where each entry is a node, and its value is the distance to each of its neighbors
NSMutableDictionary *edges = [NSMutableDictionary dictionary];
[edges setObject: ayyy forKey: @"A"];
[edges setObject: beee forKey: @"B"];
[edges setObject: seee forKey: @"C"];
[edges setObject: deee forKey: @"D"];

// current node to be used in while loop, declared outside of loop for convenience
DNode* curr = A;

while ([unvisited count] != 0){ //while there are unvisited neighbros
DNode* min = [DNode new];
[min setDist: INT_MAX]; //min node initialized as largest int so that the first neighbor will always be less than it

[unvisited removeObjectIdenticalTo:curr]; //remove current object from unvisited
NSMutableDictionary *neighborsof = edges[[curr getLetter]]; //returns a dictionary containing distances from current node to each of its neighbors

for (NSString* key in neighborsof){ //for each neighbor of current node
if ([unvisited containsObject:nodevaluepairs[key]]){ //if neighbor has not been visited
int potentialdist = [curr getDist] + [[neighborsof objectForKey: key]intValue]; //current node's distance + distance from current node to neighbor
if (potentialdist < [nodevaluepairs[key] getDist]){ //if potential distance is less than neighbor's distance from root
[nodevaluepairs[key] setDist:potentialdist]; //set neighbor's distance is new, lower potential distance
}
if ([nodevaluepairs[key] getDist] <= [min getDist]){ //find neighbor with smallest distance
min = nodevaluepairs[key]; 
} 
}
}
curr = min; //visit neighbor w/ smallest distance

if ([curr getDist] == INT_MAX) {
break; //if neighbors have all been visited, end loop
} 
}
//print distances from root node
for (NSString* keyyy in nodevaluepairs){
NSLog(@"%@", keyyy);
NSLog(@"%i", [nodevaluepairs[keyyy] getDist]);
}

}





