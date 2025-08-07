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
@protocol SnapCollection <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)barnburner;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)name;

//重用id
//: - (NSString*)reuseId;
- (NSString*)child;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)inside;

//: @end
@end

//: @protocol NTESContactItem<NSObject>
@protocol TouchItem<NSObject>
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
- (CGFloat)max;

//重用id
//: - (NSString*)reuseId;
- (NSString*)data;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)compartment;

//badge
//: - (NSString *)badge;
- (NSString *)sign;

//显示名
//: - (NSString *)nick;
- (NSString *)can;

//占位图
//: - (UIImage *)icon;
- (UIImage *)content;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)size;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)material;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)findOut;


//: @end
@end

//: @protocol NTESContactCell <NSObject>
@protocol InputCell <NSObject>

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)disable:(id<TouchItem>)item;

//: - (void)addDelegate:(id)delegate;
- (void)excerpt:(id)delegate;

//: @end
@end







//: static const CGFloat NTESContactUtilRowHeight = 57;
static const CGFloat appTouchModeKey = 57;//util类Cell行高
//: static const CGFloat NTESContactDataRowHeight = 50;
static const CGFloat app_formatName = 50;//data类Cell行高
//: static const NSInteger NTESContactAvatarLeft = 10;
static const NSInteger dreamSessionName = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NTESContactAvatarAndAccessorySpacing = 10;
static const NSInteger kValueMessage = 10;//头像和选择框之间的距离
