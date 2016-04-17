//
//  RoomCell.h
//  GameLive
//
//  Created by tarena012 on 16/4/17.
//  Copyright © 2016年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RoomCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLb;

@property (weak, nonatomic) IBOutlet UIImageView *iconIV;

@property (weak, nonatomic) IBOutlet UIImageView *nickLb;

@property (weak, nonatomic) IBOutlet UILabel *viewLb;
@end
