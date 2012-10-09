//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Onur Baykal on 04.10.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "CalculatorViewController.h"
#import "CalculatorBrain.h"

@interface CalculatorViewController()

@property (nonatomic) BOOL userIsInTheMiddleOfEnteringANumber;
@property (nonatomic, strong) CalculatorBrain *brain;

@end


@implementation CalculatorViewController

- (CalculatorBrain *)brain
{
    if(!_brain)
    {
        _brain = [[CalculatorBrain alloc] init];
        
    }
    return _brain;
}
@synthesize brain = _brain;
@synthesize display = _display;
@synthesize userIsInTheMiddleOfEnteringANumber = _userIsInTheMiddleOfEnteringANumber;

- (IBAction)digitPressed:(UIButton *)sender
{
    NSString *digit = sender.currentTitle;
    
    if(self.userIsInTheMiddleOfEnteringANumber)
    {
        self.display.text = [self.display.text stringByAppendingString:digit];
    }
    else
    {
        self.display.text = digit;
        self.userIsInTheMiddleOfEnteringANumber = YES;
    }
}

- (IBAction)operationPressed:(UIButton *)sender
{
    if(self.userIsInTheMiddleOfEnteringANumber)
    {
        [self enterPressed];
    }
    double result = [self.brain performOperation:sender.currentTitle];
    NSString * resultString = [NSString stringWithFormat:@"%g", result];
    self.display.text = resultString;
    
}

- (IBAction)enterPressed
{
    [self.brain pushOperand:[self.display.text doubleValue]];
    self.userIsInTheMiddleOfEnteringANumber = NO;
}

- (IBAction)decimalPointPressed {
    if([self.display.text rangeOfString:@"."].location == NSNotFound)
    {
        self.display.text = [self.display.text stringByAppendingString:@"."];
        self.userIsInTheMiddleOfEnteringANumber = YES;
    }
}

@end
