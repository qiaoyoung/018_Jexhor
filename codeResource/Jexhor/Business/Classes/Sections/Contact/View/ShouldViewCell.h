// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldViewCell.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class PushAvatarImageView;
@class ImageView;
//: @class NTESContactDataMember;
@class InformationMember;


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol VideoTemp <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)flips:(NSString *)userId;

//: @end
@end

//: @interface NTESUserListCell : UITableViewCell
@interface ShouldViewCell : UITableViewCell

//: @property (nonatomic,strong) PushAvatarImageView * avatarImageView;
@property (nonatomic,strong) ImageView * avatarImageView;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<VideoTemp> delegate;

//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)fundamentalMeasure:(InformationMember *)member;

//: @end
@end
