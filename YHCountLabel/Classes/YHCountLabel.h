//
//  YHCountLabel.h
//  Pods-YHCountLabel_Example
//
//  Created by yh on 2018/11/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YHCountLabel : UILabel

- (void)yh_countFrom:(double)startNumber to:(double)endNumber duration:(NSTimeInterval)duration;

@end

NS_ASSUME_NONNULL_END
