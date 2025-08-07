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
@class DataTeam;

//: @protocol FFFContactPickedViewDelegate <NSObject>
@protocol DeviceDelegate <NSObject>

//: - (void)removeUser:(NSString *)userId;
- (void)baleOut:(NSString *)userId;

//: @end
@end

//: @interface FFFContactPickedView : UIView <UIScrollViewDelegate>
@interface MissiveView : UIView <UIScrollViewDelegate>

//: @property (nonatomic, weak) id<FFFContactPickedViewDelegate> delegate;
@property (nonatomic, weak) id<DeviceDelegate> delegate;

//: - (void)removeMemberInfo:(FFFKitInfo *)info;
- (void)allowByInfo:(DataTeam *)info;

//: - (void)addMemberInfo:(FFFKitInfo *)info;
- (void)fast:(DataTeam *)info;

//: @end
@end