// __DEBUG__
// __CLOSE_PRINT__
//
//  OrientationView.h
//  NIM
//
//  Created by 彭爽 on 2021/10/13.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESSystemSignNotificationSheet : UIView
@interface OrientationView : UIView

//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary;
-(instancetype)initWithImage:(CGRect)frame exceptValue:(NSDictionary *)dictionary;

//: - (void)show;
- (void)container;

//: - (void)dismissPicker;
- (void)doingQuick;
//: @end
@end

//: @protocol NTESSystemSignNotificationDelegate <NSObject>
@protocol NameDelegate <NSObject>

//: -(void)signButtonClickDelegate;
-(void)openTo;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END