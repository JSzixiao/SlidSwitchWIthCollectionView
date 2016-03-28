//
//  JSHorizontalBottomCollectionViewCell.m
//  SlidSwitchWIthCollectionView
//
//  Created by Jason on 16/3/14.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "JSHorizontalBottomCollectionViewCell.h"

@interface JSHorizontalBottomCollectionViewCell ()

/** view */
@property (nonatomic, strong) UIView *valueView;

/** size */
@property (nonatomic, assign) CGRect valueFrame;
@end

@implementation JSHorizontalBottomCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)layoutSubviews
{
    self.valueFrame = self.bounds;
}

+ (void)registerCellWithCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] forCellWithReuseIdentifier:NSStringFromClass(self)];
}

+ (instancetype)horizontalBottomCollectionViewCellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *)indexPath
{
    return [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(self) forIndexPath:indexPath];
}

+ (instancetype)horizontalBottomCollectionViewCellWithCollectionView:(UICollectionView *)collectionView view:(UIView *)tmpView forIndexPath:(NSIndexPath *)indexPath
{
    JSHorizontalBottomCollectionViewCell *tmpCell =  [self horizontalBottomCollectionViewCellWithCollectionView:collectionView forIndexPath:indexPath];
    [tmpCell loadDataWithView:tmpView];
    return tmpCell;
}

- (void)loadDataWithView:(UIView *)tmpView
{
    [self layoutIfNeeded];
    self.valueView = tmpView;
    self.valueView.frame = self.valueFrame;
    [self addSubview:self.valueView];
}

@end
