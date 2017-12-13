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
    
//    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"Resources" ofType:@"bundle"];
//    self.notDoneIconImage = [UIImage imageWithContentsOfFile:[bundlePath stringByAppendingPathComponent:notDoneImageName]];
    self.notDoneIconImage = [UIImage imageNamed:[@"Resources.bundle" stringByAppendingPathComponent:notDoneImageName]];
//    self.doneIconImage = [UIImage imageWithContentsOfFile:[bundlePath stringByAppendingPathComponent:doneImageName]];
    self.doneIconImage = [UIImage imageNamed:[@"Resources.bundle" stringByAppendingPathComponent:doneImageName]];
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
