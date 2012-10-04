//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Onur Baykal on 04.10.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

@synthesize display = _display;

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = [sender currentTitle];
    
    self.display.text = [self.display.text stringByAppendingString:digit];
    
    
    
}

@end
