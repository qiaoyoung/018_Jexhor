// __DEBUG__
// __CLOSE_PRINT__
//
//  ManagerView.h
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
@interface ManagerView : UIView
//: @property (nonatomic ,weak) id delegate;
@property (nonatomic ,weak) id delegate;
//: -(void)reloadCountNumber:(NSInteger)systemCount;
-(void)create:(NSInteger)systemCount;
//: @end
@end

//: @protocol NTESContactHeaderDelegate <NSObject>
@protocol SoundName <NSObject>


//: -(void)searchClick;
-(void)examineRead;
//: -(void)addFriend;
-(void)inputFriend;
//: -(void)newGroup;
-(void)recentColor;
//: -(void)scan;
-(void)linkFit;
//: -(void)friendNotification;
-(void)instanceWith;
//: -(void)groupNotification;
-(void)groupNotification;
//: -(void)deviceList;
-(void)search;
//: -(void)blackFriendList;
-(void)infoColorTime;
//: -(void)signIn;
-(void)press;
//: -(void)collectList;
-(void)show;
//: -(void)onlineServer;
-(void)insideObject;

//: -(void)sliderWithIndex:(NSInteger)index;
-(void)withIndex:(NSInteger)index;

//: @end
@end


//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
