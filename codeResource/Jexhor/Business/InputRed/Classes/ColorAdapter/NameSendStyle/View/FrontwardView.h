// __DEBUG__
// __CLOSE_PRINT__
//
//  FrontwardView.h
// MessageContent
//
//  Created by Netease on 2019/6/10.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @protocol WorkTeamCardHeaderViewDelegate <NSObject>
@protocol OrbitDelegate <NSObject>

//: - (void)onTouchAvatar:(id)sender;
- (void)buttonned:(id)sender;

//: @end
@end

//: @interface WorkTeamCardHeaderView : UIView
@interface FrontwardView : UIView

//: @property (nonatomic, weak) id<WorkTeamCardHeaderViewDelegate> delegate;
@property (nonatomic, weak) id<OrbitDelegate> delegate;

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
