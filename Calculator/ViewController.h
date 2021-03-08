//
//  ViewController.h
//  Calculator
//
//  Created by Hala on 18/02/2021.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *valueEntered;
@property (weak, nonatomic) IBOutlet UILabel *equation;

@property char operand;
@property double result;
@property NSString* firstValue;
@property NSString* secondValue;
@property bool cheked;


@property (weak, nonatomic) IBOutlet UIButton *equal;



@end

