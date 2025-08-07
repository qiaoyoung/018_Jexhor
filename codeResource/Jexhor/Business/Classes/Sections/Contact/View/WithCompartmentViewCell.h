// __DEBUG__
// __CLOSE_PRINT__
//
//  WithCompartmentViewCell.h
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFAvatarImageView;
@class ButtonControl;
//: @class NTESContactDataMember;
@class PresentItem;


//: @protocol NTESUserListCellDelegate <NSObject>
@protocol TextFactor <NSObject>

//: - (void)didTouchUserListAvatar:(NSString *)userId;
- (void)musted:(NSString *)userId;

//: @end
@end

//: @interface NTESUserListCell : UITableViewCell
@interface WithCompartmentViewCell : UITableViewCell

//: @property (nonatomic,strong) FFFAvatarImageView * avatarImageView;
@property (nonatomic,strong) ButtonControl * avatarImageView;

//: @property (nonatomic,weak) id<NTESUserListCellDelegate> delegate;
@property (nonatomic,weak) id<TextFactor> delegate;

//: - (void)refreshWithMember:(NTESContactDataMember *)member;
- (void)independent:(PresentItem *)member;

//: @end
@end