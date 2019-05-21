#include <Foundation/Foundation.h>


@interface Factorial:NSObject{}

- (void) printfactorials: (int) upto;
- (int) factorialcalc: (int) start;
@end


@implementation Factorial
- (int) factorialcalc: (int) start{
if ((start == 1) || (start == 0)){
return (1);
}
return start * [self factorialcalc:(start-1)];
}

- (void) printfactorials: (int) upto{
for (int i = upto; i > 0; i--){
int var = [self factorialcalc:i];
NSLog(@"var:%d", var);
}
}
@end

int main(int argc, char * argv[]){


Factorial *printfacts = [Factorial new];
[printfacts printfactorials:5];
return (0);

}

