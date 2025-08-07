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
#import "Secret.h"
//: #import "PushCardDataSourceProtocol.h"
#import "PushCardDataSourceProtocol.h"

//: @class PushAvatarImageView;
@class ImageView;
//: @protocol PushCardHeaderCellDelegate;
@protocol TempCellEvent;



//: @interface PushCardHeaderCell : UICollectionViewCell
@interface CompartmentReusableView : UICollectionViewCell

//: @property (nonatomic,strong) PushAvatarImageView *imageView;
@property (nonatomic,strong) ImageView *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<PushCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<TempCellEvent>delegate;

//: @property (nonatomic,readonly) id<PushKitCardHeaderData> data;
@property (nonatomic,readonly) id<PushKitCardHeaderData> data;

//: - (void)refreshData:(id<PushKitCardHeaderData>)data;
- (void)notParent:(id<PushKitCardHeaderData>)data;

//: @end
@end


//: @protocol PushCardHeaderCellDelegate <NSObject>
@protocol TempCellEvent <NSObject>

//: - (void)cellDidSelected:(PushCardHeaderCell*)cell;
- (void)outsideAll:(CompartmentReusableView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(PushCardHeaderCell*)cell;
- (void)sendBottom:(CompartmentReusableView*)cell;

//: @end
@end
