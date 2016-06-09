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
    self.picktype.dataSource=self;
    self.pickwhich.delegate=self;
    self.pickwhich.dataSource=self;
    self.picktype.tag = 1;
    self.pickwhich.tag = 2;
    // Do any additional setup after loading the view, typically from a nib.
    self.stringArray = @[@"Length", @"Temperature", @"Area" ];
    self.areaArray = @[@"Kilometer Sq", @"Meter Sq", @"Foot Sq"];
    self.lengthArray = @[@"Meter", @"Kilometer", @"Mile", @"Foot"];
    self.tempArray = @[@"Celsius", @"Kelvin", @"Farenheit"];
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
    if([pickerView isEqual: self.picktype])
    {
        // return the appropriate number of components, for instance
        return 1;
    }
    else
    {
        // return the appropriate number of components, for instance
        return 2;
    }
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{

    NSArray* data = [self readContentFromPicker:pickerView];
    return [data count];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{

    if ([pickerView isEqual:self.picktype]) {
        [self.pickwhich reloadAllComponents];
    }
}
-(NSArray*) readContentFromPicker:(UIPickerView *)pickerView
{
    NSArray* data;
    if([pickerView isEqual:self.picktype])
    {
        data = self.stringArray;
    }
    else
    {
        if ([self.picktype selectedRowInComponent:0] == 0) {
            data = self.lengthArray;
        }
        else if ([self.picktype selectedRowInComponent:0] == 1){
            data = self.tempArray;
        }
        else if ([self.picktype selectedRowInComponent:0] == 2){
            data = self.areaArray;
        }
    }
    return data;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    NSLog(@"%@",self.stringArray[row]);

    NSArray* data = [self readContentFromPicker:pickerView];
    return [data objectAtIndex:row];
    
}

@end
