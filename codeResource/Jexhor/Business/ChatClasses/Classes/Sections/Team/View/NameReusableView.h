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
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: @class FFFAvatarImageView;
@class ButtonControl;
//: @protocol FFFCardHeaderCellDelegate;
@protocol BottomSearchName;



//: @interface FFFCardHeaderCell : UICollectionViewCell
@interface NameReusableView : UICollectionViewCell

//: @property (nonatomic,strong) FFFAvatarImageView *imageView;
@property (nonatomic,strong) ButtonControl *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<FFFCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<BottomSearchName>delegate;

//: @property (nonatomic,readonly) id<FFFKitCardHeaderData> data;
@property (nonatomic,readonly) id<FFFKitCardHeaderData> data;

//: - (void)refreshData:(id<FFFKitCardHeaderData>)data;
- (void)collageData:(id<FFFKitCardHeaderData>)data;

//: @end
@end


//: @protocol FFFCardHeaderCellDelegate <NSObject>
@protocol BottomSearchName <NSObject>

//: - (void)cellDidSelected:(FFFCardHeaderCell*)cell;
- (void)userDown:(NameReusableView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(FFFCardHeaderCell*)cell;
- (void)untilImage:(NameReusableView*)cell;

//: @end
@end