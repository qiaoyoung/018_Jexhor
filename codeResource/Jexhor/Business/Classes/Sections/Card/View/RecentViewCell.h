// __DEBUG__
// __CLOSE_PRINT__
//
//  RecentViewCell.h
//  NIM
//
//  Created by chris on 15/3/11.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "FFFCommonTableViewCell.h"
#import "TeamTitle.h"

//: typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
typedef NS_ENUM(NSInteger, ColorButtonCellStyle){
    //: ColorButtonCellStyleRed,
    ColorButtonCellStyleRed,
    //: ColorButtonCellStyleBlue,
    ColorButtonCellStyleBlue,
//: };
};

//: @class NTESColorButton;
@class TotalTitleButton;

//: @interface NTESColorButtonCell : UITableViewCell<FFFCommonTableViewCell>
@interface RecentViewCell : UITableViewCell<TeamTitle>

//: @property (nonatomic,strong) NTESColorButton *button;
@property (nonatomic,strong) TotalTitleButton *button;

//: @end
@end



//: @interface NTESColorButton : UIButton
@interface TotalTitleButton : UIButton

//: @property (nonatomic,assign) ColorButtonCellStyle style;
@property (nonatomic,assign) ColorButtonCellStyle style;

//: @end
@end