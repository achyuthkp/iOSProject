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
    self.picktype.delegate=self;
    self.pickwhich.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
    self.stringArray = @[ @"Length", @"Temperature", @"Area" ];
    self.measureArray = @[@[@"Kilometer Sq", @"Meter Sq", @"Foot Sq"],
                       @[@"Meter", @"Kilometer", @"Mile", @"Foot"],
                       @[@"Celsius", @"Kelvin", @"Farenheit"]];
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
    if([pickerView isEqual: self.picktype]){
        // return the appropriate number of components, for instance
        return 1;
    }
    
    if([pickerView isEqual: self.pickwhich]){
        // return the appropriate number of components, for instance
        return 2;
    }
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfComponentsinPickerView:(NSInteger)component{
    return  1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return self.stringArray.count;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
   
    
    self.type = [self.stringArray objectAtIndex:row];
    
    
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    NSLog(@"%@",self.stringArray[row]);
    if([pickerView isEqual: self.picktype]){
        // return the appropriate number of components, for instance

    return self.stringArray[row];
    }
    if ([pickerView isEqual:self.pickwhich]) {
        if ([self.type isEqualToString:@"Length"]) {
            return  self.measureArray[component][0];
        }
        else if ([self.type isEqualToString:@"Area"])
        {
            return  self.measureArray[component][1];
        }
        else if ([self.type isEqualToString:@"Temperature"])
        {
            return  self.measureArray[component][2];
        }
    }
   
    return self.stringArray[row];
}

@end
