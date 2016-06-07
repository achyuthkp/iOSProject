//
//  ViewController.h
//  MeasuringCalculator
//
//  Created by epita on 18/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate,UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UITextField *txtfield1;
@property (weak, nonatomic) IBOutlet UIPickerView *picktype;
@property (weak, nonatomic) IBOutlet UIPickerView *pickwhich;
@property (nonatomic) NSArray *measureArray;
@property (nonatomic) NSString *type;
@property (nonatomic) NSArray *stringArray;
@end

