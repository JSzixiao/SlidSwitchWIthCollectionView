//
//  ViewController.m
//  SlidSwitchWIthCollectionView
//
//  Created by Jason on 16/3/11.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UIButton *leftButton;

@property (weak, nonatomic) IBOutlet UIButton *rightButton;

@end

@implementation ViewController

#define TmpWidth [[UIScreen mainScreen] bounds].size.width

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickLeftButtonFunction:(UIButton *)button {
    button.selected = YES;
    self.rightButton.selected = NO;
    self.scrollView.contentOffset = CGPointZero;
}


- (IBAction)clickRightButtonFunction:(UIButton *)button {
    self.leftButton.selected = NO;
    button.selected = YES;
    self.scrollView.contentOffset = CGPointMake(TmpWidth, 0);
}


- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat tmpContentOffsetX = scrollView.contentOffset.x;
    
    if (tmpContentOffsetX < TmpWidth/2.0) {
        self.leftButton.selected = YES;
        self.rightButton.selected = NO;
    } else {
        self.leftButton.selected = NO;
        self.rightButton.selected = YES;
    }
    
}

@end
