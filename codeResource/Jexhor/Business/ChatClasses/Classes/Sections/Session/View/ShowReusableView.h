// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMListCollectionCell.h
// MessageContent
//
//  Created by He on 2020/4/13.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class NIMQuickComment;
@class NIMQuickComment;
//: @class FFFMessageModel;
@class ShowModel;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFQuickCommentCell : UICollectionViewCell
@interface ShowReusableView : UICollectionViewCell

//: - (void)refreshWithData:(NSArray *)comment model:(FFFMessageModel *)data;
- (void)to:(NSArray *)comment tool:(ShowModel *)data;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END