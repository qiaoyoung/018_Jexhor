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

//: @class PushKitInfo;
@class DataTeam;

//: @protocol PushContactPickedViewDelegate <NSObject>
@protocol DeviceDelegate <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)baleOut:(NSString *)userId;

//: @end
@end

//: @interface PushContactPickedView : UIView <UIScrollViewDelegate>
@interface MissiveView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<PushContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<DeviceDelegate> delegate;

//: - (void)removeMemberInfo:(PushKitInfo *)info;
- (void)allowByInfo:(DataTeam *)info;

//: - (void)addMemberInfo:(PushKitInfo *)info;
- (void)fast:(DataTeam *)info;

//: @end
@end
