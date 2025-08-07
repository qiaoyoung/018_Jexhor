// __DEBUG__
// __CLOSE_PRINT__
//
//  HeadViewCell.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "NTESContactDefines.h"
#import "NTESContactDefines.h"

//: @protocol NTESContactUtilCellDelegate <NSObject>
@protocol WithCount <NSObject>

//: - (void)onPressUtilImage:(NSString *)content;
- (void)incentiveOption:(NSString *)content;

//: @end
@end

//: @interface NTESContactUtilCell : UITableViewCell
@interface HeadViewCell : UITableViewCell

//: @property (nonatomic,weak) id<NTESContactUtilCellDelegate> delegate;
@property (nonatomic,weak) id<WithCount> delegate;

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)doing:(id<ItemTing>)item;

//: @end
@end