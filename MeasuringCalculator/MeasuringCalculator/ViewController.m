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
    if([pickerView isEqual: self.picktype]){
        // return the appropriate number of components, for instance
        return 1;
    }
    else{
        // return the appropriate number of components, for instance
        return 2;
    }
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    if ([pickerView isEqual:self.pickwhich]) {
        if (component==0 && pickerView.tag==2) {
            return self.lengthArray.count;
        }
        else if(component==1 && pickerView.tag==2){
            return self.tempArray.count;
        }
        else if(component==2 && pickerView.tag==2)
        { return self.areaArray.count;
        }
        else
            return self.stringArray.count;
    }
    else
        return self.stringArray.count;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
   
    if ([pickerView isEqual:self.pickwhich]) {
        if (pickerView.tag==2 && component==0) {
            [self.pickwhich reloadAllComponents];
            self.measure = [self.lengthArray objectAtIndex:[pickerView selectedRowInComponent:0]];
        }
        else if(pickerView.tag==2 && component==1){
            [self.pickwhich reloadAllComponents];
            self.measure = [self.tempArray objectAtIndex:[pickerView selectedRowInComponent:1]];
        }
        else if(pickerView.tag==2 && component==2){
            [self.pickwhich reloadAllComponents];
            self.measure = [self.areaArray objectAtIndex:[pickerView selectedRowInComponent:2]];
        }
    }
    else
    {
        self.type = [self.stringArray objectAtIndex:[pickerView selectedRowInComponent:0]];
    }
    
    
    
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
//    NSLog(@"%@",self.stringArray[row]);
    if ([pickerView isEqual:self.pickwhich])
    {
        if (pickerView.tag==2 && component==0) {
            return  self.lengthArray[row];
        }
        else if (pickerView.tag==2 && component==1)
        {
            return  self.areaArray[row];
        }
        else if(pickerView.tag==2 && component==2)
        {
            return  self.tempArray[row];
        }
        else
            return  self.stringArray[row];
    }
    else
    {
            return self.stringArray[row];
    }
    
}

@end
