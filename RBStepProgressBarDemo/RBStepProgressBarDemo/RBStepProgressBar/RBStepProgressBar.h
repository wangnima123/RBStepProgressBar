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

@protocol RBStepProgressBarDelegate;
@interface RBStepProgressBar : UIView

/**
 创建分步骤栏实例

 @param frame 控件的frame
 @param stepDelegate 设置代理
 @return 步骤栏实例
 */
-(instancetype)initWithFrame:(CGRect)frame andDelegate:(id<RBStepProgressBarDelegate>)stepDelegate;
/**
 根据进行到的步骤重绘分步骤栏

 @param progressBarStep 步骤状态
 */
- (void)setLoanBarProgress:(RBProgressBarStep)progressBarStep;
@end

@protocol RBStepProgressBarDelegate<NSObject>

@optional

/**
 用于控制是否需要隐藏步骤名称

 @param stepProgressBar 步骤栏
 @param stepIndex 标题位置
 @return 是否需要隐藏
 */
- (BOOL)stepProgressBar:(RBStepProgressBar *)stepProgressBar shouldHideStepTitleAtIndex:(NSUInteger)stepIndex;

@required

/**
 初始化步骤栏的基本信息(步骤图片，步骤名称)

 @param stepProgressBar 步骤栏
 @return 步骤栏资源数组
 */
- (NSArray *)stepProgressBarResourceList:(RBStepProgressBar *)stepProgressBar;

@end
