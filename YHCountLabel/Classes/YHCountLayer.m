//
//  YHCountLayer.m
//  Pods-YHCountLabel_Example
//
//  Created by yh on 2018/11/27.
//

#import "YHCountLayer.h"

@implementation YHCountLayer

@dynamic countDelegate;
@dynamic yh_number;



+ (BOOL)needsDisplayForKey:(NSString *)key
{
    if ([key isEqualToString:@"yh_number"]) {
        return YES;
    }
    return [super needsDisplayForKey:key];
}


- (void)drawInContext:(CGContextRef)ctx
{
    [self.countDelegate updateCountNumber:self.yh_number];
}

@end
