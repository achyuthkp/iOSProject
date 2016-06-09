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
-(double) convertLength:(NSString *)length1 :(NSString *)length2 :(double)val
{
    if ([length1 isEqualToString:@"Meter"])
    {
        if ([length2 isEqualToString:@"Kilometer"])
        {
            return val*0.001;
        }
        else if ([length2 isEqualToString:@"Mile"])
        {
            return val*0.000621371;
        }
        else if ([length2 isEqualToString:@"Foot"])
        {
            return val*3.28084;
        }
        else
        {
            return val;
        }
    }
    else if([length1 isEqualToString:@"Kilometer"])
    {
        if ([length2 isEqualToString:@"Meter"])
        {
            return val*1000;
        }
        else if ([length2 isEqualToString:@"Mile"])
        {
            return val*0.621371;
        }
        else if ([length2 isEqualToString:@"Foot"])
        {
            return val*3280.84;
        }
        else
        {
            return val;
        }

    }
    else if ([length1 isEqualToString:@"Mile"])
    {
        if ([length2 isEqualToString:@"Meter"])
        {
            return val*1609.34;
        }
        else if ([length2 isEqualToString:@"Kilometer"])
        {
            return val*1.60934;
        }
        else if ([length2 isEqualToString:@"Foot"])
        {
            return val*5280;
        }
        else
        {
            return val;
        }
    }
    else if ([length1 isEqualToString:@"Foot"])
    {
        if ([length2 isEqualToString:@"Meter"])
        {
            return val*0.3048;
        }
        else if ([length2 isEqualToString:@"Kilometer"])
        {
            return val*0.0003048;
        }
        else if ([length2 isEqualToString:@"Mile"])
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
@end

