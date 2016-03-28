//
//  JSHorizontalTopCollectionViewCell.h
//  SlidSwitchWIthCollectionView
//
//  Created by Jason on 16/3/14.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSHorizontalTopCollectionViewCell : UICollectionViewCell

+ (void)registerCellWithCollectionView:(UICollectionView *)collectionView;
+ (instancetype)horizontalTopCollectionViewCellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *)indexPath;
+ (instancetype)horizontalTopCollectionViewCellWithCollectionView:(UICollectionView *)collectionView title:(NSString *)title forIndexPath:(NSIndexPath *)indexPath;

- (void)loadDataWithTitle:(NSString *)title;
@end
