//
//  person.m
//  BMR Calculator
//
//  Created by Aislin Philomena Black on 7/1/16.
//  Copyright © 2016 Aislin Philomena Black. All rights reserved.
//

#import "Person.h"

static Person* secretPerson;
@implementation Person

@synthesize weightInKg;
@synthesize heightInM;
@synthesize result;
@synthesize isMan;
@synthesize age;
-(NSNumber*) bmr

{
    
    if(isMan == YES)
    {
        double bm = (((13.397*weightInKg.floatValue)/1) + ((4.799*heightInM.floatValue*100)/1) - ((5.677*age.floatValue)/1) + 88.362);
        return [NSNumber numberWithDouble:bm];
    }
    else
    {
        double bm = (((9.247*weightInKg.floatValue)/1) + ((3.098*heightInM.floatValue*100)/1) - ((4.330*age.floatValue)/1) + 447.593);
                     return [NSNumber numberWithDouble:bm];
    }
    return 0;
}
-(NSNumber*) bmi

{
    
    
    return [NSNumber numberWithFloat: weightInKg.floatValue/(heightInM.floatValue * heightInM.floatValue)];
}

+(Person*) sharedPersonInstance
{
    if (secretPerson == nil)
    {
        secretPerson = [[Person alloc] init];
    }
    return secretPerson;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%p %@ %@", self, self.weightInKg, self.heightInM];
}


@end