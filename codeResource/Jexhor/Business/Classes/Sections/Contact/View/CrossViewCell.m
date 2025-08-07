// __DEBUG__
// __CLOSE_PRINT__
//
//  CrossViewCell.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataCell.h"
#import "CrossViewCell.h"
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"

//: @implementation NTESContactDataCell
@implementation CrossViewCell

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)message:(id<ToolTextEnablely>)member
{
    //: [super refreshUser:member];
    [super message:member];
    //: NSString *state = [NTESSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [ReadUtil openlineBlueTrifle:self.memberId can:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.fullKey];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end