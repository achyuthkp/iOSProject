//
//  ViewController.m
//  MeasuringCalculator
//
//  Created by epita on 18/05/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "ViewController.h"
#import "calculationConvertor.h"


@interface ViewController ()
@property (nonatomic) calculationConvertor* calc;

@end

@implementation ViewController

double type,originalType,ResultType,txt;

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
    self.lengthArray = @[@"Meter", @"Kilometer", @"Mile", @"Foot"];
    self.tempArray = @[@"Celsius", @"Kelvin", @"Farenheit"];
    self.areaArray = @[@"Kilometer Sq", @"Meter Sq", @"Foot Sq"];
    self.calc = [[calculationConvertor alloc] init];
    }
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)button1:(UIButton *)sender
{
   if (type == 0)
    { // Length
        self.resultLabel.text = [NSString stringWithFormat:@"%f",[self.calc convertLength:originalType :ResultType :txt]];
    }
    else if (type == 1)
    { // Temperature
        self.resultLabel.text = [NSString stringWithFormat:@"%f",[self.calc convertTemp:originalType :ResultType :txt]];
    }
    else if (type == 2)
    { // Area 
        self.resultLabel.text = [NSString stringWithFormat:@"%f",[self.calc convertArea:originalType :ResultType :txt]];
    }
    }
- (IBAction)txtfield1:(UITextField *)sender
{

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.txtfield1 becomeFirstResponder];
    txt = [textField.text doubleValue];
    NSLog(@"%f",txt);
    if (txt == 0.000)
    {
     self.resultLabel.textColor = [UIColor redColor];
     self.resultLabel.text = @"Enter a proper value!!";
    }
    else
    {
        self.resultLabel.textColor = [UIColor blueColor];
        self.resultLabel.text = @"";
    }
        
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

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{

    NSArray* data = [self readContentFromPicker:pickerView];
    return [data count];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if ([pickerView isEqual:self.picktype]) {
        [self.pickwhich reloadAllComponents];
    }
    type = [self.picktype selectedRowInComponent:0];
    originalType = [self.pickwhich selectedRowInComponent:0];
    ResultType = [self.pickwhich selectedRowInComponent:1];
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

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSArray* data = [self readContentFromPicker:pickerView];
    
    return [data objectAtIndex:row];
    
}

@end
