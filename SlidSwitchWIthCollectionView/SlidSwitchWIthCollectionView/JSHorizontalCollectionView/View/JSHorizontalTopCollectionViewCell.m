//
//  JSHorizontalTopCollectionViewCell.m
//  SlidSwitchWIthCollectionView
//
//  Created by Jason on 16/3/14.
//  Copyright © 2016年 Jason. All rights reserved.
//

#import "JSHorizontalTopCollectionViewCell.h"

@interface JSHorizontalTopCollectionViewCell ()

/** title */
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
/** line */
@property (weak, nonatomic) IBOutlet UIView *lineView;

@end

@implementation JSHorizontalTopCollectionViewCell

@dynamic selected;

- (void)awakeFromNib {
    // Initialization code
    self.lineView.hidden = YES;
}

#pragma mark - public method

+ (void)registerCellWithCollectionView:(UICollectionView *)collectionView
{
    [collectionView registerNib:[UINib nibWithNibName:NSStringFromClass(self) bundle:nil] forCellWithReuseIdentifier:NSStringFromClass(self)];
}

+ (instancetype)horizontalTopCollectionViewCellWithCollectionView:(UICollectionView *)collectionView forIndexPath:(NSIndexPath *)indexPath
{
    return [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass(self) forIndexPath:indexPath];
}

+ (instancetype)horizontalTopCollectionViewCellWithCollectionView:(UICollectionView *)collectionView title:(NSString *)title forIndexPath:(NSIndexPath *)indexPath
{
    JSHorizontalTopCollectionViewCell *tmpCell =  [self horizontalTopCollectionViewCellWithCollectionView:collectionView forIndexPath:indexPath];
    [tmpCell loadDataWithTitle:title];
    return tmpCell;
}

- (void)loadDataWithTitle:(NSString *)title
{
    self.titleLabel.text = title;
}

#pragma mark - getter/setter
- (void)setSelected:(BOOL)selected
{
    self.lineView.hidden = !selected;
}

@end
