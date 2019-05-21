#include <Foundation/Foundation.h>
@interface Budget : NSObject { //class name, superclass

//variables 
float exchangeRate;
double budget;
}


//methods
- (void) spendDollars: (double) dollars; 
- (void) createBudget: (double) aBudget withExchangeRate: (float) anExchangeRate;
- (void) spendForeignCurrency: (double) amount Currency: (NSString *) type;
- (int) getBudget;
@end


@implementation Budget
- (void) createBudget: (double) aBudget withExchangeRate: (float) anExchangeRate{
exchangeRate = anExchangeRate;
budget = aBudget;
}
//assigns member variables of budget the values you pass into createBudget

-(int) getBudget{
return budget;
}

- (void) spendDollars:(double)dollars{
exchangeRate = 1;
budget -= dollars;
}
//subtract dollars from budget

- (void) spendForeignCurrency: (double) amount Currency: (NSString *) type {
NSString *euros = @"euros";

if ([type isEqualToString:euros]){
	exchangeRate = 1/1.12;
}
else {
	exchangeRate = 1/6.5;

}
budget -= amount*exchangeRate;
}
@end


int main(int argc, char * argv[]){
Budget *DISbudget = [Budget new];
[DISbudget createBudget:5000 withExchangeRate:6.5]; 
[DISbudget spendDollars: 100];
[DISbudget spendForeignCurrency: 200 Currency: @"kroners"];
[DISbudget spendForeignCurrency: 10 Currency: @"euros"];

int var = [DISbudget getBudget];

NSLog(@"var:%d", var);
}