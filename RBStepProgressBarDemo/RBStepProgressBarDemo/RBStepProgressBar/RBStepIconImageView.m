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

    NSBundle *resBundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"Resources" ofType:@"bundle"]];
    
    if(!resBundle){
        
        NSString *SDKBundlePath = [[NSBundle mainBundle] pathForResource:@"RBStepProgressBar" ofType:@"framework"];
        NSBundle *SDKBundle = [NSBundle bundleWithPath:SDKBundlePath];
        resBundle= [NSBundle bundleWithPath:[SDKBundle pathForResource:@"Resources" ofType:@"bundle"]];
    }
    
    self.notDoneIconImage = [UIImage imageNamed:notDoneImageName inBundle:resBundle compatibleWithTraitCollection:nil];
//    [UIImage imageWithContentsOfFile:[bundlePath stringByAppendingPathComponent:notDoneImageName]];
    self.doneIconImage = [UIImage imageNamed:doneImageName inBundle:resBundle compatibleWithTraitCollection:nil];
//    [UIImage imageWithContentsOfFile:[bundlePath stringByAppendingPathComponent:doneImageName]];
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
