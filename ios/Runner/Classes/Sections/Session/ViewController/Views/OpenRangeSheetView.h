// __DEBUG__
// __CLOSE_PRINT__
//
//  OpenRangeSheetView.h
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESOpenRedPackageSheet : UIView
@interface OpenRangeSheetView : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithButton:(CGRect)frame withBlack:(NSDictionary *)dictionary;

//: - (void)show;
- (void)press;

//: - (void)dismissPicker;
- (void)doingQuick;

//: @end
@end

//: @protocol NTESOpenRedPackageSheetDelegate <NSObject>
@protocol RedTitle <NSObject>

//: -(void)myWalletDelegate;
-(void)titleWith;

//: -(void)redpackageDetailWith:(NSString *)redpackageID;
-(void)itemHolder:(NSString *)redpackageID;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END