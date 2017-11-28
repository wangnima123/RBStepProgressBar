//
//  RBStepTitleLabel.m
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/25.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#define kRBTitleNotDoneColor [UIColor colorWithRed:138/255. green:138/255. blue:138/255. alpha:1.0f]
#define kRBTitleDoneColor    [UIColor colorWithRed:18/255. green:150/255. blue:219/255. alpha:1.0f]

#import "RBStepTitleLabel.h"

@implementation RBStepTitleLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if(self){
        self.textColor = kRBTitleNotDoneColor;
        [self setFont:[UIFont systemFontOfSize:12.0f]];
    }
    return self;
}

- (void)changeStepViewStatus:(RBStepViewStatus)iconStatus{
    
    if(iconStatus == RBStepViewStatusNotDone){
        self.textColor = kRBTitleNotDoneColor;
    }else{
        self.textColor = kRBTitleDoneColor;
    }
}

@end
