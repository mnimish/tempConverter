//
//  TempViewController.h
//  tempConverter
//
//  Created by Nimish Manjarekar on 7/27/13.
//  Copyright (c) 2013 nimishm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *fahrenheitTemp;
@property (nonatomic, weak) IBOutlet UITextField *celsiusTemp;
@property (nonatomic, weak) IBOutlet UIButton *convertButton;

- (IBAction)convertTemp:(id)sender;

@end
