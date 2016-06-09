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
    // 0 - Meter
    // 1 - Kilometer
    // 2 - Mile
    // 3 - Foot
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

-(double) convertTemp:(double)temp1 :(double)temp2 :(double)val
{
    // 0 - Celsius
    // 1 - Kelvin
    // 2 - Farenheit
    if (temp1==0)
    {
        if (temp2==1)
        {
            return val+273.15;
        }
        else if (temp2==2)
        {
            return (val*1.8)+32;
        }
        else
        {
            return val;
        }
    }
    else if (temp1==1)
    {
        if (temp2==0)
        {
            return val-273.15;
        }
        else if (temp2==2)
        {
            return ((val*9)/5)-459.67;
        }
        else
        {
            return val;
        }
    }
    else if (temp1==2)
    {
        if (temp2==0)
        {
            return ((val-32)/1.8);
        }
        else if (temp2==1)
        {
            return ((val+459.67)*5/9);
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

-(double) convertArea:(double)area1 :(double)area2 :(double)val
{
    // 0 - Kilometer Sq
    // 1 - Meter Sq
    // 2 - Foot Sq
    if (area1==0)
    {
        if (area2==1)
        {
            return val*pow(10, 6);
        }
        else if (area2==2)
        {
            return val*10.76391041671*pow(10, 6);
        }
        else
        {
            return val;
        }
    }
    else if (area1==1)
    {
        if (area2==0)
        {
            return val*pow(10,-6);
        }
        else if (area2==2)
        {
            return val*10.76391041671;
        }
        else
        {
            return val;
        }
    }
    else if (area1==2)
    {
        if (area2==0)
        {
            return val*9.290304*pow(10, -8);
        }
        else if (area2==1)
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

