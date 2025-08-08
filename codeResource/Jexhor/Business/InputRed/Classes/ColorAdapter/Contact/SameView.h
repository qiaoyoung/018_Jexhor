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

//: @class WorkKitInfo;
@class ConfirmationInfo;

//: @protocol WorkContactPickedViewDelegate <NSObject>
@protocol PickedDelegate <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)mortal:(NSString *)userId;

//: @end
@end

//: @interface WorkContactPickedView : UIView <UIScrollViewDelegate>
@interface SameView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<WorkContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<PickedDelegate> delegate;

//: - (void)removeMemberInfo:(WorkKitInfo *)info;
- (void)elite:(ConfirmationInfo *)info;

//: - (void)addMemberInfo:(WorkKitInfo *)info;
- (void)pressed:(ConfirmationInfo *)info;

//: @end
@end
