//
//  CategoryViewController.m
//  GameLive
//
//  Created by tarena012 on 16/4/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryViewModel.h"
#import "CategoryCell.h"

@interface CategoryViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic) CategoryViewModel *categoryVM;
@end

@implementation CategoryViewController

#pragma mark - 懒加载

- (CategoryViewModel *)categoryVM
{
    if (!_categoryVM) {
        _categoryVM = [CategoryViewModel new];
    }
    return _categoryVM;
}


#pragma mark - 声明周期
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView registerNib:[UINib nibWithNibName:@"CategoryCell" bundle:nil] forCellWithReuseIdentifier:@"CategoryCell"];
    
    [self.view showBusyHUD];
    /** 触发请求数据 */
    [self.categoryVM getDataCompletionHandler:^(NSError *error) {
        [self.view hideBusyHUD];
        [self.collectionView reloadData];
    }];
}

#pragma mark - 方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.categoryVM.rowNumber;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CategoryCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CategoryCell" forIndexPath:indexPath];
    cell.titleLb.text = [self.categoryVM titleForIndex:indexPath.row];
    [cell.iconIV setImageURL:[self.categoryVM iconURLForIndex:indexPath.row]];
    
    return cell;
}

/** 设置cell的宽高 */
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    /** 每个cell的宽度 */
    CGFloat width = (kScreenW - 4 * 10)/3;
    /** 已知宽高比，得出高度 */
    CGFloat height = width/ 115 * 190;
    
    return CGSizeMake(width, height);
}

@end
