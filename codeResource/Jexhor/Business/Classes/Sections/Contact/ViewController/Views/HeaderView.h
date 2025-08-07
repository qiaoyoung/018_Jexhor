// __DEBUG__
// __CLOSE_PRINT__
//
//  HeaderView.h
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESContactHeaderView : UIView
@interface HeaderView : UIView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: -(void)reloadCountNumber:(NSInteger)systemCount;
-(void)headerTeam:(NSInteger)systemCount;
//: @end
@end

//: @protocol NTESContactHeaderDelegate <NSObject>
@protocol EventOnly <NSObject>


//: -(void)searchClick;
-(void)snapCover;
//: -(void)addFriend;
-(void)lifeHistory;
//: -(void)newGroup;
-(void)groupImage;
//: -(void)scan;
-(void)progressMax;
//: -(void)friendNotification;
-(void)sizeOn;
//: -(void)groupNotification;
-(void)notification;
//: -(void)deviceList;
-(void)titleTap;
//: -(void)blackFriendList;
-(void)manageressMessage;
//: -(void)signIn;
-(void)inward;
//: -(void)collectList;
-(void)ting;
//: -(void)onlineServer;
-(void)doingline;

//: -(void)sliderWithIndex:(NSInteger)index;
-(void)edges:(NSInteger)index;

//: @end
@end


//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END