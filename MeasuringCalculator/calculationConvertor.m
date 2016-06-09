//
//  calculationConvertor.m
//  MeasuringCalculator
//
//  Created by epita on 09/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import "calculationConvertor.h"
#import <math.h>

@implementation calculationConvertor
-(double) convertLength:(double)length1 :(double)length2 :(double)val
{
    if (length1==0)
    {
        if (length2==1)
        {
            return val*0.001;
        }
        else if (length2==2)
        {
            return val*0.000621371;
        }
        else if (length2==3)
        {
            return val*3.28084;
        }
        else
        {
            return val;
        }
    }
    else if(length1==1)
    {
        if (length2==0)
        {
            return val*1000;
        }
        else if (length2==2)
        {
            return val*0.621371;
        }
        else if (length2==3)
        {
            return val*3280.84;
        }
        else
        {
            return val;
        }

    }
    else if (length1==2)
    {
        if (length2==0)
        {
            return val*1609.34;
        }
        else if (length2==1)
        {
            return val*1.60934;
        }
        else if (length2==3)
        {
            return val*5280;
        }
        else
        {
            return val;
        }
    }
    else if (length1==3)
    {
        if (length2==0)
        {
            return val*0.3048;
        }
        else if (length2==1)
        {
            return val*0.0003048;
        }
        else if (length2==2)
        {
            return val*0.000189394;
        }
        else
        {
            return val;
        }

    }
    else
    {
        return val;
    }
}
-(double) convertArea:(NSString *)area1 :(NSString *)area2 :(double)val
{
    if ([area1 isEqualToString:@"Kilometer Sq"])
    {
        if ([area2 isEqualToString:@"Meter Sq"])
        {
            return val*pow(10, 6);
        }
        else if ([area2 isEqualToString:@"Foot Sq"])
        {
            return val*10.76391041671*pow(10, 6);
        }
        else
        {
            return val;
        }
    }
    else if ([area1 isEqualToString:@"Meter Sq"])
    {
        if ([area2 isEqualToString:@"Kilometer Sq"])
        {
            return val*pow(10,-6);
        }
        else if ([area2 isEqualToString:@"Foot Sq"])
        {
            return val*10.76391041671;
        }
        else
        {
            return val;
        }
    }
    else if ([area1 isEqualToString:@"Foot Sq"])
    {
        if ([area2 isEqualToString:@"Kilometer Sq"])
        {
            return val*9.290304*pow(10, -8);
        }
        else if ([area2 isEqualToString:@"Meter Sq"])
        {
            return val*9.290304*pow(10, -2);
        }
        else
        {
            return val;
        }
    }
        else
    {
        return val;
    }

}
-(double) convertTemp:(NSString *)temp1 :(NSString *)temp2 :(double)val
{
    if ([temp1 isEqualToString:@"Celsius"])
    {
        if ([temp2 isEqualToString:@"Kelvin"])
        {
            return val+273.15;
        }
        else if ([temp2 isEqualToString:@"Farenheit"])
        {
            return val+32;
        }
        else
        {
            return val;
        }
    }
    else if ([temp1 isEqualToString:@"Kelvin"])
    {
        if ([temp2 isEqualToString:@"Celsius"])
        {
            return val-273.15;
        }
        else if ([temp2 isEqualToString:@"Farenheit"])
        {
            return val-459.67;
        }
        else
        {
            return val;
        }
    }
    else if ([temp1 isEqualToString:@"Farenheit"])
    {
        if ([temp2 isEqualToString:@"Kelvin"])
        {
            return val+255.372;
        }
        else if ([temp2 isEqualToString:@"Celsius"])
        {
            return val-17.7778;
        }
        else
        {
            return val;
        }
    }
    else
    {
        return val;
    }

}
@end

