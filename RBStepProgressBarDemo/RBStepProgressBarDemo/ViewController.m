//
//  ViewController.m
//  RBStepProgressBarDemo
//
//  Created by wangze on 2017/11/24.
//  Copyright © 2017年 LeftH. All rights reserved.
//

#import "ViewController.h"
#import "RBStepProgressBar.h"

@interface ViewController ()<UIPickerViewDelegate, UIPickerViewDataSource, RBStepProgressBarDelegate>
@property (nonatomic, strong)RBStepProgressBar *stepProgressBar;
@property (nonatomic, strong)UIPickerView *stepPickerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupStepProgressBar];
    [self setupPickerView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupStepProgressBar{
    
//    self.stepProgressBar =  [[RBStepProgressBar alloc] initWithFrame:CGRectMake(0.0f, 80.0f, [UIScreen mainScreen].bounds.size.width, 80.0f) andAssets:@[
//                                                                                                                                                          @{
//                                                                                                                                                              @"notDoneIcon":@"notDone_1",
//                                                                                                                                                              @"doneIcon":@"done_1",
//                                                                                                                                                              @"stepTitle":@"第一步",
//                                                                                                                                                              },
//                                                                                                                                                          @{
//                                                                                                                                                              @"notDoneIcon":@"notDone_2",
//                                                                                                                                                              @"doneIcon":@"done_2",
//                                                                                                                                                              @"stepTitle":@"第二步",
//                                                                                                                                                              },
//                                                                                                                                                          @{
//                                                                                                                                                              @"notDoneIcon":@"notDone_3",
//                                                                                                                                                              @"doneIcon":@"done_3",
//                                                                                                                                                              @"stepTitle":@"第三步",
//                                                                                                                                                              },
//                                                                                                                                                          @{
//                                                                                                                                                              @"notDoneIcon":@"notDone_4",
//                                                                                                                                                              @"doneIcon":@"done_4",
//                                                                                                                                                              @"stepTitle":@"第四步",
//                                                                                                                                                              },
//
//                                                                                                ]];
    self.stepProgressBar = [[RBStepProgressBar alloc] initWithFrame:CGRectMake(0.0f, 80.0f, [UIScreen mainScreen].bounds.size.width, 80.0f) andDelegate:self];
    [self.view addSubview:self.stepProgressBar];
    [self.stepProgressBar setLoanBarProgress:RBProgressBarFirstStep];
}

- (void)setupPickerView{
    
    self.stepPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0.0, [UIScreen mainScreen].bounds.size.height - 220.0f, [UIScreen mainScreen].bounds.size.width, 220.0f)];
    [self.view addSubview:self.stepPickerView];
    self.stepPickerView.delegate = self;
    self.stepPickerView.dataSource = self;
}

#pragma mark -
#pragma mark RBStepProgressBarDelegate
- (NSArray *)stepProgressBarResourceList:(RBStepProgressBar *)stepProgressBar{
    
    return @[
                                                                                                                                                                       @{
                                                                                                                                                                           @"notDoneIcon":@"notDone_1",
                                                                                                                                                                           @"doneIcon":@"done_1",
                                                                                                                                                                           @"stepTitle":@"第一步",
                                                                                                                                                                           },
                                                                                                                                                                       @{
                                                                                                                                                                           @"notDoneIcon":@"notDone_2",
                                                                                                                                                                           @"doneIcon":@"done_2",
                                                                                                                                                                           @"stepTitle":@"第二步",
                                                                                                                                                                           },
                                                                                                                                                                       @{
                                                                                                                                                                           @"notDoneIcon":@"notDone_3",
                                                                                                                                                                           @"doneIcon":@"done_3",
                                                                                                                                                                           @"stepTitle":@"第三步",
                                                                                                                                                                           },
                                                                                                                                                                       @{
                                                                                                                                                                           @"notDoneIcon":@"notDone_4",
                                                                                                                                                                           @"doneIcon":@"done_4",
                                                                                                                                                                           @"stepTitle":@"第四步",
                                                                                                                                                                           },
                                                                                                                                                                       ];
}

- (BOOL)stepProgressBar:(RBStepProgressBar *)stepProgressBar shouldHideStepTitleAtIndex:(NSUInteger)stepIndex{
    
    return NO;
}

#pragma mark -
#pragma mark UIPickerViewDataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    return 4;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [NSString stringWithFormat:@"第%ld步", row+1];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    [self.stepProgressBar setLoanBarProgress:row+1];
}

@end
