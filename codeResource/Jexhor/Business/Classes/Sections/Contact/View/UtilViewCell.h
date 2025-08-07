// __DEBUG__
// __CLOSE_PRINT__
//
//  UtilViewCell.h
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
@protocol RandomText <NSObject>

//: - (void)onPressUtilImage:(NSString *)content;
- (void)added:(NSString *)content;

//: @end
@end

//: @interface NTESContactUtilCell : UITableViewCell
@interface UtilViewCell : UITableViewCell

//: @property (nonatomic,weak) id<NTESContactUtilCellDelegate> delegate;
@property (nonatomic,weak) id<RandomText> delegate;

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)heritage:(id<TouchItem>)item;

//: @end
@end