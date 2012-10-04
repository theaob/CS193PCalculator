//
//  CalculatorBrain.m
//  Calculator
//
//  Created by Onur Baykal on 04.10.2012.
//  Copyright (c) 2012 Onur Baykal. All rights reserved.
//

#import "CalculatorBrain.h"

@interface CalculatorBrain()


@property (nonatomic, strong) NSMutableArray *operandStack;


@end


@implementation CalculatorBrain

@synthesize operandStack = _operandStack;

- (void)pushOperand:(double)operand
{
    
    
}

- (double)performOperation:(NSString *) operation
{
    double result = 0;
    
    //calculate result
    
    return result;
}


@end
