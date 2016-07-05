//
//  person.h
//  BMR Calculator
//
//  Created by Aislin Philomena Black on 7/1/16.
//  Copyright © 2016 Aislin Philomena Black. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong) NSNumber* weightInKg;
@property (strong) NSNumber* heightInM;
@property (strong) NSNumber* result;
@property(assign) bool isMan;
@property(strong) NSNumber* age;

-(NSNumber*) bmr;
-(NSNumber*) bmi;

+(Person*) sharedPersonInstance;



@end
