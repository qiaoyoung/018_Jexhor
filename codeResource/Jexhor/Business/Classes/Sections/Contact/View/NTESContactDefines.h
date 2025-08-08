// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @protocol NTESContactItemCollection <NSObject>
@protocol InputCollection <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)bombardment;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)thread;

//重用id
//: - (NSString*)reuseId;
- (NSString*)date;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)column;

//: @end
@end

//: @protocol NTESContactItem<NSObject>
@protocol ItemTing<NSObject>
//: @required
@required
//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)vcName;
- (NSString*)vcName;

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)userId;
- (NSString*)userId;

//返回行高
//: - (CGFloat)uiHeight;
- (CGFloat)shared;

//重用id
//: - (NSString*)reuseId;
- (NSString*)show;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)cell;

//badge
//: - (NSString *)badge;
- (NSString *)informationComplete;

//显示名
//: - (NSString *)nick;
- (NSString *)nameBackground;

//占位图
//: - (UIImage *)icon;
- (UIImage *)top;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)replacement;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)image;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)addIndependent;


//: @end
@end

//: @protocol NTESContactCell <NSObject>
@protocol ModeCell <NSObject>

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)upwardly:(id<ItemTing>)item;

//: - (void)addDelegate:(id)delegate;
- (void)delegate:(id)delegate;

//: @end
@end







//: static const CGFloat NTESContactUtilRowHeight = 57;
static const CGFloat kBorderTingTitle = 57;//util类Cell行高
//: static const CGFloat NTESContactDataRowHeight = 50;
static const CGFloat k_objectErrorText = 50;//data类Cell行高
//: static const NSInteger NTESContactAvatarLeft = 10;
static const NSInteger showStateMinTapTitle = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NTESContactAvatarAndAccessorySpacing = 10;
static const NSInteger main_frameKitData = 10;//头像和选择框之间的距离
