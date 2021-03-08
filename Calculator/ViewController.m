//
//  ViewController.m
//  Calculator
//
//  Created by Hala on 18/02/2021.
//

#import "ViewController.h"
#import "CalculatorOperation.h"

@interface ViewController ()

@end

@implementation ViewController{
    CalculatorOperation *operation;
    NSString *stringEntered;
    NSString *stringResult;
}


- (void)viewDidLoad {

    [super viewDidLoad];
    
    [self setDefault];


    operation = [CalculatorOperation new];
    _valueEntered.font = [UIFont systemFontOfSize: 50 weight:UIFontWeightBold ];

    _equal.layer.cornerRadius = 26;
    

    
   
}

- (IBAction)operationButtons:(id)sender {
    
    _equation.text = _firstValue;
    _valueEntered.text = @"";
    [self setCheked: YES];
    
    
    switch ([sender tag]) {
        case 17:
            _operand = '+';
            
            break;
            
        case 11:
            _operand = '-';
            break;
            
        case 12:
            _operand = '*';
            break;
            
        case 13:
            _operand = '/';
            break;
            
        case 14:
            _operand = '%';
            break;
            
    }
    
    stringResult = [ NSString stringWithFormat:@"%c", _operand];
    stringResult = [[[_firstValue stringByAppendingString:@" "] stringByAppendingString: stringResult]stringByAppendingString:@" "];
    _equation.text = stringResult;
    
}

- (IBAction)calculatorFunction:(id)sender {
    
    
    [operation setSecondValue: [_secondValue doubleValue]];
    [_equation.text stringByAppendingString: _secondValue];
    _equation.text = [_equation.text stringByAppendingString: _secondValue];
    
    
    if(_operand == '+') {
            _result = [operation calculateAddition];
    }
            
    else if (_operand == '-'){
            _result = [operation calculateSubtraction];
    }
            
    else if(_operand == '*'){
            _result = [operation calculateMultiply];
    }
            
    else if(_operand == '/'){
            _result = [operation calculateDivision];
    }
            
    else if(_operand == '%'){
            _result = [operation calculateReminder];
    }
        
    [_valueEntered setText:[NSString stringWithFormat:@"%.3f", _result]];
    _equation.text = [_equation.text stringByAppendingString: @" ="];
    
    
    [self setDefault];

}


- (IBAction)numberButtons:(id)sender {
    

    // convert int value to NSString
    stringEntered = [NSString stringWithFormat:@"%li", [sender tag]];
    
    if([sender tag] == 10){
        stringEntered = @".";
    }
    
    if(_cheked == NO){
        
        // adding new value to string
        _firstValue = [_firstValue stringByAppendingString: stringEntered];
        _valueEntered.text = _firstValue;
        
    }else if(_cheked == YES){
        
        [operation setFirstValue: [_firstValue doubleValue]];
        
        _secondValue = [_secondValue stringByAppendingString: stringEntered];
        _valueEntered.text = _secondValue;
    }
    
}

-(void) setDefault{
    [self setResult: 0.0];
    [self setOperand: 'n'];
    [self setFirstValue: @""];
    [self setSecondValue: @""];
    [self setCheked: NO];
}

-(void) clear{
    [self setDefault];
    _valueEntered.text = nil;
    _equation.text = nil;
}

- (IBAction)clearButton:(id)sender {
    [self clear];
}


@end


/*
 
 
 //int i = (int)[sender tag];
 // convert int value to NSString
//    stringEntered = [NSString stringWithFormat:@"%i", i];
 if(i == 10){
     stringEntered = @".";
 }
 
 if(_cheked == NO){
     
     // string entered == 0 replace else append
     // adding new value to string
     _firstValue = [_firstValue stringByAppendingString: stringEntered];
     _valueEntered.text = _firstValue;
     
 }else if(_cheked == YES){
     
     [operation setFirstValue: [_firstValue doubleValue]];
     
     _secondValue = [_secondValue stringByAppendingString: stringEntered];
     _valueEntered.text = _secondValue;
 }

 
 
 */
