//
//  ViewController.h
//  BMR Calc 2
//
//  Created by Aislin Philomena Black on 7/1/16.
//  Copyright © 2016 Aislin Philomena Black. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISwitch *sexSwitch;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UITextField *weightLabel;
@property (weak, nonatomic) IBOutlet UITextField *heightLabel;
@property (weak, nonatomic) IBOutlet UITextField *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *bmiLabel;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *unitOfWeight;
@property (weak, nonatomic) IBOutlet UITextField *inchesLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *unitOfHeight;

- (IBAction)buttonPressed:(id)sender;
- (IBAction)heightMeasure:(id)sender;

@end

