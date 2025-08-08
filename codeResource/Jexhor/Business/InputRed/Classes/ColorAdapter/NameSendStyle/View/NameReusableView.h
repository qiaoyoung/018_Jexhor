// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamCardHeaderCell.h
//  NIM
//
//  Created by chris on 15/3/7.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "WorkCardDataSourceProtocol.h"
#import "WorkCardDataSourceProtocol.h"

//: @class WorkAvatarImageView;
@class ButtonControl;
//: @protocol WorkCardHeaderCellDelegate;
@protocol BottomSearchName;



//: @interface WorkCardHeaderCell : UICollectionViewCell
@interface NameReusableView : UICollectionViewCell

//: @property (nonatomic,strong) WorkAvatarImageView *imageView;
@property (nonatomic,strong) ButtonControl *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<WorkCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<BottomSearchName>delegate;

//: @property (nonatomic,readonly) id<WorkKitCardHeaderData> data;
@property (nonatomic,readonly) id<WorkKitCardHeaderData> data;

//: - (void)refreshData:(id<WorkKitCardHeaderData>)data;
- (void)collageData:(id<WorkKitCardHeaderData>)data;

//: @end
@end


//: @protocol WorkCardHeaderCellDelegate <NSObject>
@protocol BottomSearchName <NSObject>

//: - (void)cellDidSelected:(WorkCardHeaderCell*)cell;
- (void)userDown:(NameReusableView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(WorkCardHeaderCell*)cell;
- (void)untilImage:(NameReusableView*)cell;

//: @end
@end
