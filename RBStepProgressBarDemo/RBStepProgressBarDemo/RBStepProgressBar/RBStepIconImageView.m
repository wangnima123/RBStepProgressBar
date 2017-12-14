//
//  RBStepIconImageView.m
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/24.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#import "RBStepIconImageView.h"

@interface RBStepIconImageView()
@property (nonatomic, strong)UIImage *notDoneIconImage;
@property (nonatomic, strong)UIImage *doneIconImage;
@end

@implementation RBStepIconImageView

- (void)setupIconWithNotDoneImageName:(NSString *)notDoneImageName
                     andDoneImageName:(NSString *)doneImageName{
    
    NSBundle *resBundle = nil;
#ifndef RBSDKEnvironment
    resBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"Resources" ofType:@"bundle"]];
#else
    // 获取SDK bundle参数
    NSBundle *SDKBundle = [NSBundle bundleForClass:[self class]];
    resBundle= [NSBundle bundleWithPath:[SDKBundle pathForResource:@"Resources" ofType:@"bundle"]];
#endif
    
    self.notDoneIconImage = [UIImage imageNamed:notDoneImageName inBundle:resBundle compatibleWithTraitCollection:nil];
    self.doneIconImage = [UIImage imageNamed:doneImageName inBundle:resBundle compatibleWithTraitCollection:nil];
    if(!self.image) [self setImage:self.notDoneIconImage];
}

- (void)changeStepViewStatus:(RBStepViewStatus)iconStatus{
    
    if(iconStatus == RBStepViewStatusNotDone){
        [self setImage:self.notDoneIconImage];
    }else{
        [self setImage:self.doneIconImage];
    }
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end
