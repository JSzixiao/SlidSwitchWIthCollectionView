//
//  JSHorizontalCollectionView.h
//  SlidSwitchWIthCollectionView
//
//  Created by Jason on 16/3/11.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSHorizontalCollectionView : UIView

+ (instancetype)horizontalCollectionView;
+ (instancetype)horizontalCollectionViewWithTitleArray:(NSArray *)titleArray ViewArray:(NSArray *)viewArray;

- (void)setTitleArray:(NSArray *)titleArray viewArray:(NSArray *)viewArray;
@end
