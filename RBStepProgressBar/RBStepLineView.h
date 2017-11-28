//
//  RBStepLineView.h
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/24.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RBStepViewDelegate.h"

@interface RBStepLineView : UIView<RBStepViewDelegate>
- (void)changeStepViewStatus:(RBStepViewStatus)iconStatus;
@end
