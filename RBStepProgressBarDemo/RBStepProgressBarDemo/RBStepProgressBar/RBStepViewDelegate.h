//
//  RBStepViewDelegate.h
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/25.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, RBStepViewStatus) {
    RBStepViewStatusNotDone,
    RBStepViewStatusDone,
};

@protocol RBStepViewDelegate
/**
 切换图标的状态
 
 @param iconStatus 图标将要切换的状态
 */
- (void)changeStepViewStatus:(RBStepViewStatus)iconStatus;
@end
