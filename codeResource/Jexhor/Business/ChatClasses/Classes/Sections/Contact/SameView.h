// __DEBUG__
// __CLOSE_PRINT__
//
//  ContactPickedView.h
//  NIM
//
//  Created by ios on 10/23/13.
//  Copyright (c) 2013 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class FFFKitInfo;
@class ConfirmationInfo;

//: @protocol FFFContactPickedViewDelegate <NSObject>
@protocol PickedDelegate <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)mortal:(NSString *)userId;

//: @end
@end

//: @interface FFFContactPickedView : UIView <UIScrollViewDelegate>
@interface SameView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<FFFContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<PickedDelegate> delegate;

//: - (void)removeMemberInfo:(FFFKitInfo *)info;
- (void)elite:(ConfirmationInfo *)info;

//: - (void)addMemberInfo:(FFFKitInfo *)info;
- (void)pressed:(ConfirmationInfo *)info;

//: @end
@end