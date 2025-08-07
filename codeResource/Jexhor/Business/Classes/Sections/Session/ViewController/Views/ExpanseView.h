// __DEBUG__
// __CLOSE_PRINT__
//
//  ExpanseView.h
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
@interface ExpanseView : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithAdd:(CGRect)frame label:(NSDictionary *)dictionary;

//: - (void)show;
- (void)option;

//: - (void)dismissPicker;
- (void)marginBubble;

//: @end
@end

//: @protocol NTESOpenRedPackageSheetDelegate <NSObject>
@protocol CrossCounterval <NSObject>

//: -(void)myWalletDelegate;
-(void)myBlue;

//: -(void)redpackageDetailWith:(NSString *)redpackageID;
-(void)cameras:(NSString *)redpackageID;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END