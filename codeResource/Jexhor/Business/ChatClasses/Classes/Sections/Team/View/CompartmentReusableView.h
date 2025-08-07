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
//: #import "FFFCardDataSourceProtocol.h"
#import "FFFCardDataSourceProtocol.h"

//: @class FFFAvatarImageView;
@class ImageView;
//: @protocol FFFCardHeaderCellDelegate;
@protocol TempCellEvent;



//: @interface FFFCardHeaderCell : UICollectionViewCell
@interface CompartmentReusableView : UICollectionViewCell

//: @property (nonatomic,strong) FFFAvatarImageView *imageView;
@property (nonatomic,strong) ImageView *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) UIButton *removeBtn;
@property (nonatomic,strong) UIButton *removeBtn;

//: @property (nonatomic,weak) id<FFFCardHeaderCellDelegate>delegate;
@property (nonatomic,weak) id<TempCellEvent>delegate;

//: @property (nonatomic,readonly) id<FFFKitCardHeaderData> data;
@property (nonatomic,readonly) id<FFFKitCardHeaderData> data;

//: - (void)refreshData:(id<FFFKitCardHeaderData>)data;
- (void)notParent:(id<FFFKitCardHeaderData>)data;

//: @end
@end


//: @protocol FFFCardHeaderCellDelegate <NSObject>
@protocol TempCellEvent <NSObject>

//: - (void)cellDidSelected:(FFFCardHeaderCell*)cell;
- (void)outsideAll:(CompartmentReusableView*)cell;


//: @optional
@optional
//: - (void)cellShouldBeRemoved:(FFFCardHeaderCell*)cell;
- (void)sendBottom:(CompartmentReusableView*)cell;

//: @end
@end