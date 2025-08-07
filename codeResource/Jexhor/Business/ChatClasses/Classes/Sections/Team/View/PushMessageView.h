// __DEBUG__
// __CLOSE_PRINT__
//
//  PushMessageView.h
// Secret
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

//: @protocol PushTeamCardHeaderViewDelegate <NSObject>
@protocol TitleDelegate <NSObject>

//: - (void)onTouchAvatar:(id)sender;
- (void)mobiled:(id)sender;

//: @end
@end

//: @interface PushTeamCardHeaderView : UIView
@interface PushMessageView : UIView

//: @property (nonatomic, weak) id<PushTeamCardHeaderViewDelegate> delegate;
@property (nonatomic, weak) id<TitleDelegate> delegate;

//: @property (nonatomic, strong) NIMTeam *team;
@property (nonatomic, strong) NIMTeam *team;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
