// __DEBUG__
// __CLOSE_PRINT__
//
//  BeView.m
//  NIM
//
//  Created by chris on 2017/4/7.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactDataCell.h"
#import "BeView.h"
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"

//: @implementation NTESContactDataCell
@implementation BeView

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member
- (void)celluloidUser:(id<MemberProtocol>)member
{
    //: [super refreshUser:member];
    [super celluloidUser:member];
    //: NSString *state = [NTESSessionUtil onlineState:self.memberId detail:NO];
    NSString *state = [SessionUtil info:self.memberId layer:NO];
    //: NSString *title = @"";
    NSString *title = @"";
//    if (state.length)
//    {
//        title = [NSString stringWithFormat:@"[%@] %@",state,member.showName];
//    }
//    else
//    {
        //: title = [NSString stringWithFormat:@"%@",member.showName];
        title = [NSString stringWithFormat:@"%@",member.showName];
//    }

    //: self.textLabel.text = title;
    self.textLabel.text = title;
}


//: @end
@end
