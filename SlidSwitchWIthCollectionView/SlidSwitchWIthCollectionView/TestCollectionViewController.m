//
//  TestCollectionViewController.m
//  SlidSwitchWIthCollectionView
//
//  Created by Jason on 16/3/14.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "TestCollectionViewController.h"
#import "JSHorizontalCollectionView.h"

@interface TestCollectionViewController ()

@end

@implementation TestCollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *tmpArray = @[@"GRE计划", @"个让我感觉", @"GRE计划", @"个让我感觉", @"GRE计划", @"个让我感觉", @"GRE计划", @"个让我感觉"];
    
    NSMutableArray *tmpViewArray = [NSMutableArray arrayWithCapacity:0];
    for (int i = 0; i < tmpArray.count; ++i) {
        //贴scrollview
        UIScrollView *tmpScrollView = [[UIScrollView alloc] init];
        tmpScrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), 10000);
        tmpScrollView.backgroundColor = [UIColor colorWithRed:0.4 green:0.5 blue:0.6 alpha:0.5];
        tmpScrollView.layer.borderWidth = 1;
        tmpScrollView.layer.borderColor = [UIColor blackColor].CGColor;
        [tmpViewArray addObject:tmpScrollView];
        
        //贴几个东西
        UILabel *tmpLabel = [[UILabel alloc] init];
        tmpLabel.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 900);
        tmpLabel.backgroundColor = [UIColor greenColor];
        [tmpScrollView addSubview:tmpLabel];
        
        //再贴
        UIImageView *tmpImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 900, CGRectGetWidth(self.view.bounds), 200)];
        tmpImageView.backgroundColor = [UIColor purpleColor];
        [tmpScrollView addSubview:tmpImageView];
        
        tmpScrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), CGRectGetMaxY(tmpImageView.frame));
    }
    
    JSHorizontalCollectionView *tmpView = [JSHorizontalCollectionView horizontalCollectionViewWithTitleArray:tmpArray ViewArray:tmpViewArray];
    tmpView.frame = self.view.bounds;
    [self.view addSubview:tmpView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
