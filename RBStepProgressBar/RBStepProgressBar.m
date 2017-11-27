//
//  RBStepProgressBar.m
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/24.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#define kRBGapWidth 33.5f
#define kRBIconTopAlign 12.0f
#define kRBIconWH   33.0f
#define kRBLineH    6.0f


#import "RBStepProgressBar.h"
#import "RBStepLineView.h"
#import "RBStepIconImageView.h"
#import "RBStepTitleLabel.h"

@interface RBStepProgressBar()
@property (nonatomic, assign)NSUInteger steps;
@end

@implementation RBStepProgressBar

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

- (instancetype)initWithFrame:(CGRect)frame andAssets:(NSArray *)assertList{
    
    self = [super initWithFrame:frame];
    if(self){
        [self buildUIWithFrame:frame andAssets:assertList];
    }
    return self;
}

- (void)buildUIWithFrame:(CGRect)frame andAssets:(NSArray *)assertList{
    
    self.steps = assertList.count;
    NSAssert(self.steps > 1, @"there must be more than noe step");
    CGFloat lineWidth = (frame.size.width - kRBIconWH*self.steps - kRBGapWidth*2)/(self.steps - 1);
    for(int i = 0; i < self.steps; i++){
        
        NSDictionary *assetDict = [assertList objectAtIndex:i];
        RBStepIconImageView *iconImageView = [[RBStepIconImageView alloc] init];
        [self addSubview:iconImageView];
        [iconImageView setFrame:CGRectMake(kRBGapWidth + (lineWidth + kRBIconWH)*i, kRBIconTopAlign, kRBIconWH, kRBIconWH)];
        [iconImageView setupIconWithNotDoneImageName:[assetDict objectForKey:@"notDoneIcon"] andDoneImageName:[assetDict objectForKey:@"doneIcon"]];
        iconImageView.tag = i+1;
        
        RBStepTitleLabel *stepTitleLabel = [[RBStepTitleLabel alloc] init];
        [self addSubview:stepTitleLabel];
        [stepTitleLabel setText:[assetDict objectForKey:@"stepTitle"]];
        [stepTitleLabel sizeToFit];
        stepTitleLabel.center = CGPointMake((iconImageView.frame.size.width/2 + iconImageView.frame.origin.x), CGRectGetMaxY(iconImageView.frame) + 12.0f);
        stepTitleLabel.tag = i + 1;
        
        if(i != self.steps - 1){
            RBStepLineView *lineView = [[RBStepLineView alloc] init];
            [self addSubview:lineView];
            [lineView setFrame:CGRectMake(kRBGapWidth + kRBIconWH + (kRBIconWH + lineWidth)*i, iconImageView.frame.origin.y + iconImageView.frame.size.height/2 - kRBLineH/2, lineWidth, kRBLineH)];
            lineView.tag = i + 2;
        }
    }
}

- (void)setLoanBarProgress:(RBProgressBarStep)progressBarStep{
    
    for(int i = 1; i <= self.steps; i++){
        [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if(obj.tag == i && [obj respondsToSelector:@selector(changeStepViewStatus:)]){
                id<RBStepViewDelegate> stepView = (id<RBStepViewDelegate>)obj;
                [stepView changeStepViewStatus:i<=progressBarStep?RBStepViewStatusDone:RBStepViewStatusNotDone];
            }
        }];
    }
}

@end
