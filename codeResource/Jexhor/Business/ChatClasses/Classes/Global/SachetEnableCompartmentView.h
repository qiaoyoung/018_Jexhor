// __DEBUG__
// __CLOSE_PRINT__
//
//  SachetEnableCompartmentView.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, PushKitColorButtonCellStyle){
typedef NS_ENUM(NSInteger, PushKitColorButtonCellStyle){
    //: PushKitColorButtonCellStyleRed,
    PushKitColorButtonCellStyleRed,
    //: PushKitColorButtonCellStyleBlue,
    PushKitColorButtonCellStyleBlue,
//: };
};

//: @class NIMKitColorButton;
@class SumTingView;

//: @interface PushKitColorButtonCell : UITableViewCell
@interface SachetEnableCompartmentView : UITableViewCell

//: @property (nonatomic,strong) NIMKitColorButton *button;
@property (nonatomic,strong) SumTingView *button;

//: @end
@end



//: @interface NIMKitColorButton : UIButton
@interface SumTingView : UIButton

//: @property (nonatomic,assign) PushKitColorButtonCellStyle style;
@property (nonatomic,assign) PushKitColorButtonCellStyle style;

//: @end
@end
