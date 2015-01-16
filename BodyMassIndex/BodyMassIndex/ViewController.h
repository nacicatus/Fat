//
//  ViewController.h
//  BodyMassIndex
//
//  Created by God on 1/17/15.
//  Copyright (c) 2015 God. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Indexer.h"

@interface ViewController : UIViewController {
    
    IBOutlet UITextField *heightField;
    IBOutlet UITextField *weightField;
    
    IBOutlet UILabel *indexField;
    IBOutlet UILabel *meaningField;
    
    Indexer *indie;
}

-(IBAction)calcIt:(id)sender;

-(IBAction)dismissKeyboard:(UITextField *)sender;

@end
