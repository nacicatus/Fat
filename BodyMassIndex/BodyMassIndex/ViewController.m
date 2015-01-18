//
//  ViewController.m
//  BodyMassIndex
//
//  Created by God on 1/17/15.
//  Copyright (c) 2015 God. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end
@implementation ViewController

- (IBAction)dismissKeyboard:(UITextField *)sender
{
    [heightField resignFirstResponder];
    [weightField resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)calcIt:(id)sender {
    float bmi;
    NSString *diagnosis = [[NSString alloc]init];
    indie = [[Indexer alloc]init];
    [indie setHeight:[heightField.text floatValue]];
    [indie setWeight:[weightField.text floatValue]];
    bmi = [indie calcIndex];
    
    if (bmi <= 16.00)
        diagnosis = @"Severely Underweight";
        else if (bmi <= 16.99 && bmi > 16.00)
            diagnosis = @"Moderately Underweight";
            else if (bmi <= 18.49 && bmi > 17.00)
                diagnosis = @"Mildly Underweight";
                else if (bmi <= 24.99 && bmi > 18.50)
                    diagnosis = @"Normal";
                    else if (bmi <= 29.99 && bmi > 25.00)
                        diagnosis = @"Overweight: Pre-obese";
                        else if (bmi <= 34.99 && bmi > 30.00)
                            diagnosis = @"Obese Class I";
                            else if (bmi <= 39.99 && bmi > 35.00)
                                diagnosis = @"Obese Class II";
                                else if (bmi >= 40)
                                    diagnosis = @"Obese Class III";
                                    
                                    
    [indexField setText: [NSString stringWithFormat:@"%.2f", bmi]];
    [meaningField setText:diagnosis];
}


@end
