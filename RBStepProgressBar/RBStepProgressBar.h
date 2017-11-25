//
//  RBStepProgressBar.h
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/24.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, RBProgressBarStep) {
    
    RBProgressBarUnknownStep,
    RBProgressBarFirstStep,
    RBProgressBarSecondStep,
    RBProgressBarThirdStep,
    RBProgressBarForthStep,
};

@interface RBStepProgressBar : UIView


/**
 创建分步骤栏实例

 @param frame 分步骤栏的位置大小
 @param assertList 分步骤栏的资源列表
 @return 分步骤栏
 */
- (instancetype)initWithFrame:(CGRect)frame andAssets:(NSArray *)assertList;


/**
 根据进行到的步骤重绘分步骤栏

 @param progressBarStep 步骤状态
 */
- (void)setLoanBarProgress:(RBProgressBarStep)progressBarStep;
@end
