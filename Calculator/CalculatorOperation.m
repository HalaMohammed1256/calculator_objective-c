//
//  CalculatorOperation.m
//  Calculator
//
//  Created by Hala on 20/02/2021.
//

#import "CalculatorOperation.h"

@implementation CalculatorOperation


-(double) calculateAddition{
    return _firstValue + _secondValue;
}

-(double) calculateSubtraction{
    return _firstValue - _secondValue;
}

-(double) calculateMultiply{
    return _firstValue * _secondValue;
}

-(double) calculateDivision{
    return _firstValue / _secondValue;
}

-(int) calculateReminder{
    return (int)_firstValue % (int)_secondValue;
}



@end
