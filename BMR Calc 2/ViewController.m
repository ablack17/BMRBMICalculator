//
//  ViewController.m
//  BMR Calc 2
//
//  Created by Aislin Philomena Black on 7/1/16.
//  Copyright © 2016 Aislin Philomena Black. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


    
- (IBAction)buttonPressed:(id)sender {
        
        Person* p = [Person sharedPersonInstance];
    
        NSNumber * a = [NSNumber numberWithFloat:self.ageLabel.text.floatValue ];
        p.age = a;
        self.bmiLabel.text = p.bmi.stringValue;
        if(self.unitOfHeight.selectedSegmentIndex == 0)
        {
            NSNumber * w = [NSNumber numberWithFloat:self.heightLabel.text.floatValue ];
            p.heightInM = w;
        }
        if(self.unitOfHeight.selectedSegmentIndex == 1)
        {
            NSNumber *m = [NSNumber numberWithFloat:(self.heightLabel.text.floatValue+(self.inchesLabel.text.floatValue/12))*0.3048 ];
            p.heightInM = m;
        }
        if(self.sexSwitch.
           on == NO)
        {
            p.isMan = NO;
            //NSLog(@"female");
        }
        else
        {
            p.isMan = YES;
        }
        if(_unitOfWeight.selectedSegmentIndex == 0)
        {
             NSNumber * w = [NSNumber numberWithFloat:self.weightLabel.text.floatValue ];
             p.weightInKg = w;
        }
        if(_unitOfWeight.selectedSegmentIndex == 1)
        {
            NSNumber * w = [NSNumber numberWithFloat: 0.45359237*self.weightLabel.text.floatValue ];
                p.weightInKg = w;
        }
        if(_unitOfWeight.selectedSegmentIndex == 2)
        {
        NSNumber * w = [NSNumber numberWithFloat: 6.35029318*self.weightLabel.text.floatValue ];
        p.weightInKg = w;
        }
        p.result = p.bmr;
        self.resultLabel.text = p.result.stringValue;
        if(p.bmi.doubleValue >= 30)
        {
        NSBundle *myBundle = [NSBundle mainBundle];
        
        NSString* path = [myBundle pathForResource:@"obeseDogImage" ofType:@"png"];
        UIImage *newImage = [UIImage imageWithContentsOfFile:path];
        self.imageView.image = newImage;
        }
        if(p.bmi.doubleValue >= 18.5 && p.bmi.doubleValue < 25)
        {
        NSBundle *myBundle = [NSBundle mainBundle];
        
        NSString* path = [myBundle pathForResource:@"healthyDog" ofType:@"png"];
        UIImage *newImage = [UIImage imageWithContentsOfFile:path];
        self.imageView.image = newImage;
        }
        if(p.bmi.doubleValue <= 18.5)
        {
        NSBundle *myBundle = [NSBundle mainBundle];
        
        NSString* path = [myBundle pathForResource:@"underweight" ofType:@"png"];
        UIImage *newImage = [UIImage imageWithContentsOfFile:path];
        self.imageView.image = newImage;
        }
    
        if(p.bmi.doubleValue >= 25 && p.bmi.doubleValue < 30)
        {
        NSBundle *myBundle = [NSBundle mainBundle];
        
        NSString* path = [myBundle pathForResource:@"thunder" ofType:@"png"];
        UIImage *newImage = [UIImage imageWithContentsOfFile:path];
        self.imageView.image = newImage;
        }

    
        
    }

- (IBAction)heightMeasure:(id)sender {
    if(self.unitOfHeight.selectedSegmentIndex == 0)
    {
        self.inchesLabel.hidden = YES;
    }
    if(self.unitOfHeight.selectedSegmentIndex == 1)
    {
       self.inchesLabel.hidden = NO;
    }
    
    
}
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touches Began");
    [self.heightLabel resignFirstResponder];
    [self.weightLabel resignFirstResponder];
    
    
}

@end
