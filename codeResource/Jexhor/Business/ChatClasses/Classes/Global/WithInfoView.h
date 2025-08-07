// __DEBUG__
// __CLOSE_PRINT__
//
//  WithInfoView.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef NS_ENUM(NSInteger, FFFKitColorButtonCellStyle){
typedef NS_ENUM(NSInteger, FFFKitColorButtonCellStyle){
    //: FFFKitColorButtonCellStyleRed,
    FFFKitColorButtonCellStyleRed,
    //: FFFKitColorButtonCellStyleBlue,
    FFFKitColorButtonCellStyleBlue,
//: };
};

//: @class NIMKitColorButton;
@class KitDisplayFastenerButton;

//: @interface FFFKitColorButtonCell : UITableViewCell
@interface WithInfoView : UITableViewCell

//: @property (nonatomic,strong) NIMKitColorButton *button;
@property (nonatomic,strong) KitDisplayFastenerButton *button;

//: @end
@end



//: @interface NIMKitColorButton : UIButton
@interface KitDisplayFastenerButton : UIButton

//: @property (nonatomic,assign) FFFKitColorButtonCellStyle style;
@property (nonatomic,assign) FFFKitColorButtonCellStyle style;

//: @end
@end