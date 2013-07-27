//
//  TempViewController.m
//  tempConverter
//
//  Created by Nimish Manjarekar on 7/27/13.
//  Copyright (c) 2013 nimishm. All rights reserved.
//

#import "TempViewController.h"

@interface TempViewController ()

@property (nonatomic, weak) NSString *lastFahrenheit;
@property (nonatomic, weak) NSString *lastCelsius;

- (void) convertTempManual;

@end

@implementation TempViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Temperature";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.lastCelsius = @"";
    self.lastFahrenheit = @"";
    [self.convertButton addTarget:self action:@selector(convertTempManual) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertTemp:(id)sender {
    [self convertTempManual];
}

#pragma mark -private methods

- (void) convertTempManual {
    [self.view endEditing:YES];
    if(self.fahrenheitTemp.text.length && (![self.fahrenheitTemp.text isEqualToString:self.lastFahrenheit] || !self.celsiusTemp.text.length)) {
        self.celsiusTemp.text = [NSString stringWithFormat:@"%d", (int)roundf(([self.fahrenheitTemp.text floatValue] -32) * 5 / 9)];
    } else if(self.celsiusTemp.text.length && (![self.celsiusTemp.text isEqualToString:self.lastCelsius] || !self.fahrenheitTemp.text.length)) {
        self.fahrenheitTemp.text = [NSString stringWithFormat:@"%d", (int)roundf([self.celsiusTemp.text floatValue] * 9 /5 + 32)];
    }
    self.lastCelsius = self.celsiusTemp.text;
    self.lastFahrenheit = self.fahrenheitTemp.text;
}

@end
