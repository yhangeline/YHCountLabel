//
//  YHCountLayer.h
//  Pods-YHCountLabel_Example
//
//  Created by yh on 2018/11/27.
//

#import <QuartzCore/QuartzCore.h>


@protocol YHCountLayerDelegate <NSObject>

- (void)updateCountNumber:(CGFloat)number;

@end

@interface YHCountLayer : CALayer

@property (nonatomic, weak) id<YHCountLayerDelegate> countDelegate;
@property (nonatomic, assign) CGFloat yh_number;

@end


