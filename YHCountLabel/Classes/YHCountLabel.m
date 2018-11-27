//
//  YHCountLabel.m
//  Pods-YHCountLabel_Example
//
//  Created by yh on 2018/11/27.
//

#import "YHCountLabel.h"
#import "YHCountLayer.h"

@interface YHCountLabel ()<YHCountLayerDelegate, CAAnimationDelegate>

@property (nonatomic, strong) YHCountLayer *countLayer;

@end

@implementation YHCountLabel
{
    CGFloat _toValue;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.layer addSublayer:self.countLayer];
    }
    return self;
}

- (void)layoutSubviews
{
    self.countLayer.frame = self.bounds;
}


- (void)yh_countFrom:(double)startNumber to:(double)endNumber duration:(NSTimeInterval)duration
{
    _toValue = endNumber;
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"yh_number"];
    animation.fromValue = @(startNumber);
    animation.toValue = @(endNumber);
    animation.duration = duration;
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    animation.delegate = self;
    [self.countLayer addAnimation:animation forKey:nil];
    
}

- (void)updateCountNumber:(CGFloat)number
{
    self.text = [NSString stringWithFormat:@"%.0f",number];
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    self.countLayer.yh_number = _toValue;
    [self.countLayer removeAllAnimations];
}

- (YHCountLayer *)countLayer
{
    if (!_countLayer) {
        _countLayer = [YHCountLayer layer];
        _countLayer.countDelegate = self;
    }
    return _countLayer;
}

@end
