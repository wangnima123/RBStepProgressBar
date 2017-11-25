//
//  RBStepLineView.m
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/24.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#define kRBLineNotDoneColor [UIColor colorWithRed:138/255. green:138/255. blue:138/255. alpha:1.0f]
#define kRBLineDoneColor    [UIColor colorWithRed:18/255. green:150/255. blue:219/255. alpha:1.0f]

#import "RBStepLineView.h"

@implementation RBStepLineView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if(self){
        self.backgroundColor = kRBLineNotDoneColor;
    }
    return self;
}

- (void)changeStepViewStatus:(RBStepViewStatus)iconStatus{
    
    if(iconStatus == RBStepViewStatusNotDone){
        self.backgroundColor = kRBLineNotDoneColor;
    }else{
        self.backgroundColor = kRBLineDoneColor;
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
