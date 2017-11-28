//
//  RBStepIconImageView.h
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/24.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RBStepViewDelegate.h"

@interface RBStepIconImageView : UIImageView<RBStepViewDelegate>

/**
 设置未完成状态和已完成状态的图标

 @param notDoneImageName 未完成时的图片名
 @param doneImageName 已完成时的图片名
 */
- (void)setupIconWithNotDoneImageName:(NSString *)notDoneImageName
                     andDoneImageName:(NSString *)doneImageName;


/**
 切换图标的状态

 @param iconStatus 图标将要切换的状态
 */
- (void)changeStepViewStatus:(RBStepViewStatus)iconStatus;
@end
