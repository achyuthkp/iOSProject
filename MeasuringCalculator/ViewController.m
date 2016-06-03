//
//  ViewController.m
//  MeasuringCalculator
//
//  Created by epita on 18/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.txtfield1.delegate=self;
    self.pickme.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
    self.stringArray = @[ @"Length", @"Temperature", @"Mass" ];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(UIButton *)sender {
}
- (IBAction)txtfield1:(UITextField *)sender {

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.txtfield1 becomeFirstResponder];
    
    NSLog(@"%@",textField);
    [self.txtfield1 resignFirstResponder];
    return false;
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1; }

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfComponentsinPickerView:(NSInteger)component{
    return  1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return self.stringArray.count;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
   
NSLog(@"%@",[self.stringArray objectAtIndex:row]);
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    NSLog(@"%@",self.stringArray[row]);
    return self.stringArray[row];
}
@end
