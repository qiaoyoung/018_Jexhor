// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESCustomSysNotiSender.h
//  NIM
//
//  Created by chris on 15/5/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface NTESCustomSysNotificationSender : NSObject
@interface NameBarView : NSObject

//: - (void)sendCustomContent:(NSString *)content toSession:(NIMSession *)session;
- (void)target:(NSString *)content blowThroughSession:(NIMSession *)session;

//: - (void)sendTypingState:(NIMSession *)session;
- (void)project:(NIMSession *)session;

//: - (void)sendCallNotification:(NIMTeam *)team
- (void)airFilled:(NIMTeam *)team
                    //: roomName:(NSString *)roomName
                    thoroughfareAppellation:(NSString *)roomName
                     //: members:(NSArray *)members;
                     clean:(NSArray *)members;

//: @end
@end