//
//  CalculatorOperation.h
//  Calculator
//
//  Created by Hala on 20/02/2021.
//

#import <Foundation/Foundation.h>



@interface CalculatorOperation : NSObject

@property double firstValue;
@property double secondValue;

-(double) calculateAddition;
-(double) calculateSubtraction;
-(double) calculateMultiply;
-(double) calculateDivision;
-(int) calculateReminder;

@end

