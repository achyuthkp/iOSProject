//
//  calculationConvertor.h
//  MeasuringCalculator
//
//  Created by epita on 09/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calculationConvertor : NSObject
-(double) convertLength:(double)length1 :(double)length2 :(double)val;
-(double) convertArea:(double)area1 :(double)area2 :(double)val;
-(double) convertTemp:(double)temp1 :(double)temp2 :(double)val;
@end
