//
//  JSHorizontalBottomCollectionViewCell.h
//  SlidSwitchWIthCollectionView
//
//  Created by Jason on 16/3/14.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSHorizontalBottomCollectionViewCell : UICollectionViewCell

+ (void)registerCellWithCollectionView:(UICollectionView *)collectionView;
+ (instancetype)horizontalBottomCollectionViewCellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *)indexPath;
+ (instancetype)horizontalBottomCollectionViewCellWithCollectionView:(UICollectionView *)collectionView view:(UIView *)tmpView forIndexPath:(NSIndexPath *)indexPath;

- (void)loadDataWithView:(UIView *)tmpView;
@end
