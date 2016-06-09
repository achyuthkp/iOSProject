//
//  calculationConvertor.h
//  MeasuringCalculator
//
//  Created by epita on 09/06/16.
//  Copyright © 2016 epita. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calculationConvertor : NSObject
-(double) convertLength:(NSString*)length1 :(NSString*)length2 :(double)val;
-(double) convertArea:(NSString*)area1 :(NSString*)area2 :(double)val;
@end
