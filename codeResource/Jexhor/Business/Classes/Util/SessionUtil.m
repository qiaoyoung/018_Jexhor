
#import <Foundation/Foundation.h>

@interface LengthCousinData : NSObject

@end

@implementation LengthCousinData

+ (Byte *)LengthCousinDataToCache:(Byte *)data {
    int tossPet = data[0];
    Byte complain = data[1];
    int alone = data[2];
    for (int i = alone; i < alone + tossPet; i++) {
        int value = data[i] - complain;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[alone + tossPet] = 0;
    return data + alone;
}

+ (NSString *)StringFromLengthCousinData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self LengthCousinDataToCache:data]];
}

//: online_state_event_manager_off_line
+ (NSString *)userWishValue {
    /* static */ NSString *userWishValue = nil;
    if (!userWishValue) {
        Byte value[] = {35, 3, 6, 113, 150, 158, 114, 113, 111, 108, 113, 104, 98, 118, 119, 100, 119, 104, 98, 104, 121, 104, 113, 119, 98, 112, 100, 113, 100, 106, 104, 117, 98, 114, 105, 105, 98, 111, 108, 113, 104, 112};
        userWishValue = [self StringFromLengthCousinData:value];
    }
    return userWishValue;
}

//: Android
+ (NSString *)app_rowNameData {
    /* static */ NSString *app_rowNameData = nil;
    if (!app_rowNameData) {
        Byte value[] = {7, 65, 8, 203, 37, 215, 234, 6, 130, 175, 165, 179, 176, 170, 165, 66};
        app_rowNameData = [self StringFromLengthCousinData:value];
    }
    return app_rowNameData;
}

//: online_state_event_manager_on_line_busy
+ (NSString *)dreamSizeHideData {
    /* static */ NSString *dreamSizeHideData = nil;
    if (!dreamSizeHideData) {
        Byte value[] = {39, 49, 9, 72, 196, 150, 226, 198, 225, 160, 159, 157, 154, 159, 150, 144, 164, 165, 146, 165, 150, 144, 150, 167, 150, 159, 165, 144, 158, 146, 159, 146, 152, 150, 163, 144, 160, 159, 144, 157, 154, 159, 150, 144, 147, 166, 164, 170, 24};
        dreamSizeHideData = [self StringFromLengthCousinData:value];
    }
    return dreamSizeHideData;
}

//: please_try_again
+ (NSString *)showTagName {
    /* static */ NSString *showTagName = nil;
    if (!showTagName) {
        Byte value[] = {16, 10, 10, 94, 147, 17, 205, 234, 63, 238, 122, 118, 111, 107, 125, 111, 105, 126, 124, 131, 105, 107, 113, 107, 115, 120, 157};
        showTagName = [self StringFromLengthCousinData:value];
    }
    return showTagName;
}

//: message_helper_you
+ (NSString *)appMakeChipValue {
    /* static */ NSString *appMakeChipValue = nil;
    if (!appMakeChipValue) {
        Byte value[] = {18, 39, 3, 148, 140, 154, 154, 136, 142, 140, 134, 143, 140, 147, 151, 140, 153, 134, 160, 150, 156, 212};
        appMakeChipValue = [self StringFromLengthCousinData:value];
    }
    return appMakeChipValue;
}

//: Friday
+ (NSString *)mViewValue {
    /* static */ NSString *mViewValue = nil;
    if (!mViewValue) {
        Byte value[] = {6, 99, 4, 212, 169, 213, 204, 199, 196, 220, 251};
        mViewValue = [self StringFromLengthCousinData:value];
    }
    return mViewValue;
}

//: Tuesday
+ (NSString *)showRecallValue {
    /* static */ NSString *showRecallValue = nil;
    if (!showRecallValue) {
        Byte value[] = {7, 24, 8, 40, 62, 64, 196, 39, 108, 141, 125, 139, 124, 121, 145, 25};
        showRecallValue = [self StringFromLengthCousinData:value];
    }
    return showRecallValue;
}

//: Monday
+ (NSString *)user_findingName {
    /* static */ NSString *user_findingName = nil;
    if (!user_findingName) {
        Byte value[] = {6, 70, 12, 212, 141, 105, 211, 228, 29, 99, 154, 74, 147, 181, 180, 170, 167, 191, 12};
        user_findingName = [self StringFromLengthCousinData:value];
    }
    return user_findingName;
}

//: day_pm
+ (NSString *)kWithData {
    /* static */ NSString *kWithData = nil;
    if (!kWithData) {
        Byte value[] = {6, 20, 6, 69, 144, 46, 120, 117, 141, 115, 132, 129, 190};
        kWithData = [self StringFromLengthCousinData:value];
    }
    return kWithData;
}

//: Mac
+ (NSString *)user_journalistValue {
    /* static */ NSString *user_journalistValue = nil;
    if (!user_journalistValue) {
        Byte value[] = {3, 14, 4, 250, 91, 111, 113, 130};
        user_journalistValue = [self StringFromLengthCousinData:value];
    }
    return user_journalistValue;
}

//: postscript
+ (NSString *)dream_colorData {
    /* static */ NSString *dream_colorData = nil;
    if (!dream_colorData) {
        Byte value[] = {10, 1, 4, 20, 113, 112, 116, 117, 116, 100, 115, 106, 113, 117, 142};
        dream_colorData = [self StringFromLengthCousinData:value];
    }
    return dream_colorData;
}

//: Web
+ (NSString *)app_acceptableContent {
    /* static */ NSString *app_acceptableContent = nil;
    if (!app_acceptableContent) {
        Byte value[] = {3, 7, 9, 7, 63, 206, 75, 43, 192, 94, 108, 105, 2};
        app_acceptableContent = [self StringFromLengthCousinData:value];
    }
    return app_acceptableContent;
}

//: Sunday
+ (NSString *)user_presentData {
    /* static */ NSString *user_presentData = nil;
    if (!user_presentData) {
        Byte value[] = {6, 22, 9, 130, 1, 39, 100, 104, 108, 105, 139, 132, 122, 119, 143, 154};
        user_presentData = [self StringFromLengthCousinData:value];
    }
    return user_presentData;
}

//: wrong_password
+ (NSString *)main_hideValue {
    /* static */ NSString *main_hideValue = nil;
    if (!main_hideValue) {
        Byte value[] = {14, 30, 12, 129, 155, 198, 6, 123, 115, 24, 138, 17, 149, 144, 141, 140, 133, 125, 142, 127, 145, 145, 149, 141, 144, 130, 142};
        main_hideValue = [self StringFromLengthCousinData:value];
    }
    return main_hideValue;
}

//: group_member_info_activity_team_admin
+ (NSString *)dreamNeedFindingTitle {
    /* static */ NSString *dreamNeedFindingTitle = nil;
    if (!dreamNeedFindingTitle) {
        Byte value[] = {37, 99, 13, 92, 8, 41, 75, 181, 28, 138, 41, 6, 28, 202, 213, 210, 216, 211, 194, 208, 200, 208, 197, 200, 213, 194, 204, 209, 201, 210, 194, 196, 198, 215, 204, 217, 204, 215, 220, 194, 215, 200, 196, 208, 194, 196, 199, 208, 204, 209, 32};
        dreamNeedFindingTitle = [self StringFromLengthCousinData:value];
    }
    return dreamNeedFindingTitle;
}

//: retracted_message
+ (NSString *)mEarlValue {
    /* static */ NSString *mEarlValue = nil;
    if (!mEarlValue) {
        Byte value[] = {17, 19, 6, 219, 187, 160, 133, 120, 135, 133, 116, 118, 135, 120, 119, 114, 128, 120, 134, 134, 116, 122, 120, 19};
        mEarlValue = [self StringFromLengthCousinData:value];
    }
    return mEarlValue;
}

//: message_opposite
+ (NSString *)show_handleContent {
    /* static */ NSString *show_handleContent = nil;
    if (!show_handleContent) {
        Byte value[] = {16, 75, 13, 77, 58, 44, 172, 160, 82, 135, 225, 110, 239, 184, 176, 190, 190, 172, 178, 176, 170, 186, 187, 187, 186, 190, 180, 191, 176, 194};
        show_handleContent = [self StringFromLengthCousinData:value];
    }
    return show_handleContent;
}

//: message_online
+ (NSString *)dreamInfoBotData {
    /* static */ NSString *dreamInfoBotData = nil;
    if (!dreamInfoBotData) {
        Byte value[] = {14, 83, 7, 132, 224, 126, 253, 192, 184, 198, 198, 180, 186, 184, 178, 194, 193, 191, 188, 193, 184, 170};
        dreamInfoBotData = [self StringFromLengthCousinData:value];
    }
    return dreamInfoBotData;
}

//: Thursday
+ (NSString *)app_acheLendValue {
    /* static */ NSString *app_acheLendValue = nil;
    if (!app_acheLendValue) {
        Byte value[] = {8, 61, 8, 25, 1, 15, 84, 94, 145, 165, 178, 175, 176, 161, 158, 182, 92};
        app_acheLendValue = [self StringFromLengthCousinData:value];
    }
    return app_acheLendValue;
}

//: iOS
+ (NSString *)notiSliceEndText {
    /* static */ NSString *notiSliceEndText = nil;
    if (!notiSliceEndText) {
        Byte value[] = {3, 80, 7, 85, 82, 199, 171, 185, 159, 163, 198};
        notiSliceEndText = [self StringFromLengthCousinData:value];
    }
    return notiSliceEndText;
}

//: group_member_info_activity_team_creator
+ (NSString *)main_viseAccelerateData {
    /* static */ NSString *main_viseAccelerateData = nil;
    if (!main_viseAccelerateData) {
        Byte value[] = {39, 33, 13, 110, 178, 222, 209, 86, 225, 131, 114, 23, 179, 136, 147, 144, 150, 145, 128, 142, 134, 142, 131, 134, 147, 128, 138, 143, 135, 144, 128, 130, 132, 149, 138, 151, 138, 149, 154, 128, 149, 134, 130, 142, 128, 132, 147, 134, 130, 149, 144, 147, 221};
        main_viseAccelerateData = [self StringFromLengthCousinData:value];
    }
    return main_viseAccelerateData;
}

//: yesterday
+ (NSString *)k_deployNameValue {
    /* static */ NSString *k_deployNameValue = nil;
    if (!k_deployNameValue) {
        Byte value[] = {9, 51, 8, 136, 93, 134, 234, 165, 172, 152, 166, 167, 152, 165, 151, 148, 172, 128};
        k_deployNameValue = [self StringFromLengthCousinData:value];
    }
    return k_deployNameValue;
}

//: logged_another_device
+ (NSString *)mThanName {
    /* static */ NSString *mThanName = nil;
    if (!mThanName) {
        Byte value[] = {21, 16, 12, 115, 16, 216, 25, 121, 183, 59, 194, 135, 124, 127, 119, 119, 117, 116, 111, 113, 126, 127, 132, 120, 117, 130, 111, 116, 117, 134, 121, 115, 117, 191};
        mThanName = [self StringFromLengthCousinData:value];
    }
    return mThanName;
}

//: Wednesday
+ (NSString *)userInfoOlaTableName {
    /* static */ NSString *userInfoOlaTableName = nil;
    if (!userInfoOlaTableName) {
        Byte value[] = {9, 31, 12, 246, 134, 89, 176, 123, 9, 157, 80, 72, 118, 132, 131, 141, 132, 146, 131, 128, 152, 30};
        userInfoOlaTableName = [self StringFromLengthCousinData:value];
    }
    return userInfoOlaTableName;
}

//: Saturday
+ (NSString *)dreamCountEndName {
    /* static */ NSString *dreamCountEndName = nil;
    if (!dreamCountEndName) {
        Byte value[] = {8, 94, 13, 22, 139, 67, 108, 150, 123, 187, 186, 57, 212, 177, 191, 210, 211, 208, 194, 191, 215, 121};
        dreamCountEndName = [self StringFromLengthCousinData:value];
    }
    return dreamCountEndName;
}

//: %zd-%zd-%zd
+ (NSString *)show_canName {
    /* static */ NSString *show_canName = nil;
    if (!show_canName) {
        Byte value[] = {11, 67, 10, 132, 151, 2, 87, 253, 113, 94, 104, 189, 167, 112, 104, 189, 167, 112, 104, 189, 167, 86};
        show_canName = [self StringFromLengthCousinData:value];
    }
    return show_canName;
}

//: login_failure
+ (NSString *)mPlaceName {
    /* static */ NSString *mPlaceName = nil;
    if (!mPlaceName) {
        Byte value[] = {13, 95, 5, 51, 226, 203, 206, 198, 200, 205, 190, 197, 192, 200, 203, 212, 209, 196, 177};
        mPlaceName = [self StringFromLengthCousinData:value];
    }
    return mPlaceName;
}

//: wee_hours
+ (NSString *)notiPressName {
    /* static */ NSString *notiPressName = nil;
    if (!notiPressName) {
        Byte value[] = {9, 32, 4, 143, 151, 133, 133, 127, 136, 143, 149, 146, 147, 206};
        notiPressName = [self StringFromLengthCousinData:value];
    }
    return notiPressName;
}

//: day_night
+ (NSString *)main_appearViewTowerName {
    /* static */ NSString *main_appearViewTowerName = nil;
    if (!main_appearViewTowerName) {
        Byte value[] = {9, 76, 6, 56, 142, 239, 176, 173, 197, 171, 186, 181, 179, 180, 192, 219};
        main_appearViewTowerName = [self StringFromLengthCousinData:value];
    }
    return main_appearViewTowerName;
}

//: day_am
+ (NSString *)show_botName {
    /* static */ NSString *show_botName = nil;
    if (!show_botName) {
        Byte value[] = {6, 6, 7, 28, 153, 229, 125, 106, 103, 127, 101, 103, 115, 206};
        show_botName = [self StringFromLengthCousinData:value];
    }
    return show_botName;
}

//: before_yesterday
+ (NSString *)m_balanceText {
    /* static */ NSString *m_balanceText = nil;
    if (!m_balanceText) {
        Byte value[] = {16, 70, 5, 239, 124, 168, 171, 172, 181, 184, 171, 165, 191, 171, 185, 186, 171, 184, 170, 167, 191, 187};
        m_balanceText = [self StringFromLengthCousinData:value];
    }
    return m_balanceText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionUtil.m
//  NIMDemo
//
//  Created by ght on 15-1-27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionUtil.h"
#import "SessionUtil.h"
//: #import "CCCLoginManager.h"
#import "NameForwardMessage.h"
//: #import "NTESSnapchatAttachment.h"
#import "PassePartoutAccount.h"
//: #import "NTESJanKenPonAttachment.h"
#import "ImageCount.h"
//: #import "UIImage+NTES.h"
#import "UIImage+Recent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "NTESSnapchatAttachment.h"
#import "PassePartoutAccount.h"
//: #import "NTESWhiteboardAttachment.h"
#import "ClickText.h"
//: #import "WorkKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "NTESSubscribeManager.h"
#import "ColorTingManager.h"
//: #import "WorkExtensionHelper.h"
#import "WorkExtensionHelper.h"
//: #import "NTESSubscribeDefine.h"
#import "NTESSubscribeDefine.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+SubjectMatterJson.h"
//: #import "NTESDevice.h"
#import "FrameForwardSend.h"

//: double OnedayTimeIntervalValue = 24*60*60; 
double dreamValueTitle = 24*60*60; //一天的秒数

//: static NSString *const NTESRecentSessionAtMark = @"NTESRecentSessionAtMark";
static NSString *const appTeamName = @"NTESRecentSessionAtMark";
//: static NSString *const NTESRecentSessionTopMark = @"NTESRecentSessionTopMark";
static NSString *const mainMakeData = @"NTESRecentSessionTopMark";


//: @implementation NTESSessionUtil
@implementation SessionUtil

//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)image:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  remote:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSiz
                                  viewQuick:(CGSize)imageMaxSiz
{
    //: CGSize size;
    CGSize size;
    //: NSInteger imageWidth = originSize.width ,imageHeight = originSize.height;
    NSInteger imageWidth = originSize.width ,imageHeight = originSize.height;
    //: NSInteger imageMinWidth = imageMinSize.width, imageMinHeight = imageMinSize.height;
    NSInteger imageMinWidth = imageMinSize.width, imageMinHeight = imageMinSize.height;
    //: NSInteger imageMaxWidth = imageMaxSiz.width, imageMaxHeight = imageMaxSiz.height;
    NSInteger imageMaxWidth = imageMaxSiz.width, imageMaxHeight = imageMaxSiz.height;
    //: if (imageWidth > imageHeight) 
    if (imageWidth > imageHeight) //宽图
    {
        //: size.height = imageMinHeight; 
        size.height = imageMinHeight; //高度取最小高度
        //: size.width = imageWidth * imageMinHeight / imageHeight;
        size.width = imageWidth * imageMinHeight / imageHeight;
        //: if (size.width > imageMaxWidth)
        if (size.width > imageMaxWidth)
        {
            //: size.width = imageMaxWidth;
            size.width = imageMaxWidth;
        }
    }
    //: else if(imageWidth < imageHeight)
    else if(imageWidth < imageHeight)//高图
    {
        //: size.width = imageMinWidth;
        size.width = imageMinWidth;
        //: size.height = imageHeight *imageMinWidth / imageWidth;
        size.height = imageHeight *imageMinWidth / imageWidth;
        //: if (size.height > imageMaxHeight)
        if (size.height > imageMaxHeight)
        {
            //: size.height = imageMaxHeight;
            size.height = imageMaxHeight;
        }
    }
    //: else
    else//方图
    {
        //: if (imageWidth > imageMaxWidth)
        if (imageWidth > imageMaxWidth)
        {
            //: size.width = imageMaxWidth;
            size.width = imageMaxWidth;
            //: size.height = imageMaxHeight;
            size.height = imageMaxHeight;
        }
        //: else if(imageWidth > imageMinWidth)
        else if(imageWidth > imageMinWidth)
        {
            //: size.width = imageWidth;
            size.width = imageWidth;
            //: size.height = imageHeight;
            size.height = imageHeight;
        }
        //: else
        else
        {
            //: size.width = imageMinWidth;
            size.width = imageMinWidth;
            //: size.height = imageMinHeight;
            size.height = imageMinHeight;
        }
    }
    //: return size;
    return size;
}


//: +(BOOL)isTheSameDay:(NSTimeInterval)currentTime compareTime:(NSDateComponents*)older
+(BOOL)item:(NSTimeInterval)currentTime atWill:(NSDateComponents*)older
{
    //: NSCalendarUnit currentComponents = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour | NSCalendarUnitMinute);
    NSCalendarUnit currentComponents = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour | NSCalendarUnitMinute);
    //: NSDateComponents *current = [[NSCalendar currentCalendar] components:currentComponents fromDate:[NSDate dateWithTimeIntervalSinceNow:currentTime]];
    NSDateComponents *current = [[NSCalendar currentCalendar] components:currentComponents fromDate:[NSDate dateWithTimeIntervalSinceNow:currentTime]];

    //: return current.year == older.year && current.month == older.month && current.day == older.day;
    return current.year == older.year && current.month == older.month && current.day == older.day;
}

//: +(NSString*)weekdayStr:(NSInteger)dayOfWeek
+(NSString*)find:(NSInteger)dayOfWeek
{
    //: static NSDictionary *daysOfWeekDict = nil;
    static NSDictionary *daysOfWeekDict = nil;
    //: daysOfWeekDict = @{@(1):[WorkLanguageManager getTextWithKey:@"Sunday"],//@"星期日",
    daysOfWeekDict = @{@(1):[InputRed preserve:[LengthCousinData user_presentData]],//@"星期日",
                       //: @(2):[WorkLanguageManager getTextWithKey:@"Monday"],//@"星期一",
                       @(2):[InputRed preserve:[LengthCousinData user_findingName]],//@"星期一",
                       //: @(3):[WorkLanguageManager getTextWithKey:@"Tuesday"],//@"星期二",
                       @(3):[InputRed preserve:[LengthCousinData showRecallValue]],//@"星期二",
                       //: @(4):[WorkLanguageManager getTextWithKey:@"Wednesday"],//@"星期三",
                       @(4):[InputRed preserve:[LengthCousinData userInfoOlaTableName]],//@"星期三",
                       //: @(5):[WorkLanguageManager getTextWithKey:@"Thursday"],//@"星期四",
                       @(5):[InputRed preserve:[LengthCousinData app_acheLendValue]],//@"星期四",
                       //: @(6):[WorkLanguageManager getTextWithKey:@"Friday"],//@"星期五",
                       @(6):[InputRed preserve:[LengthCousinData mViewValue]],//@"星期五",
                       //: @(7):[WorkLanguageManager getTextWithKey:@"Saturday"]};
                       @(7):[InputRed preserve:[LengthCousinData dreamCountEndName]]};//@"星期六",};
    //: return [daysOfWeekDict objectForKey:@(dayOfWeek)];
    return [daysOfWeekDict objectForKey:@(dayOfWeek)];
}


//: +(NSDateComponents*)stringFromTimeInterval:(NSTimeInterval)messageTime components:(NSCalendarUnit)components
+(NSDateComponents*)forthright:(NSTimeInterval)messageTime beComponents:(NSCalendarUnit)components
{
    //: NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:components fromDate:[NSDate dateWithTimeIntervalSince1970:messageTime]];
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:components fromDate:[NSDate dateWithTimeIntervalSince1970:messageTime]];
    //: return dateComponents;
    return dateComponents;
}


//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session{
+ (NSString *)name:(NSString*)uid progressSession:(NIMSession*)session{

    //: NSString *nickname = nil;
    NSString *nickname = nil;
    //: if (session.sessionType == NIMSessionTypeTeam)
    if (session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:uid inTeam:session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:uid inTeam:session.sessionId];
        //: nickname = member.nickname;
        nickname = member.nickname;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam)
    else if (session.sessionType == NIMSessionTypeSuperTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:uid inTeam:session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:uid inTeam:session.sessionId];
        //: nickname = member.nickname;
        nickname = member.nickname;
    }
    //: if (!nickname.length) {
    if (!nickname.length) {
        //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        ConfirmationInfo *info = [[MessageContent secretResolution] recent:uid blue:nil];
        //: nickname = info.showName;
        nickname = info.showName;
    }
    //: return nickname;
    return nickname;
}


//: +(NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail
+(NSString*)path:(NSTimeInterval) msglastTime pollex:(BOOL)showDetail
{
    //今天的时间
    //: NSDate * nowDate = [NSDate date];
    NSDate * nowDate = [NSDate date];
    //: NSDate * msgDate = [NSDate dateWithTimeIntervalSince1970:msglastTime];
    NSDate * msgDate = [NSDate dateWithTimeIntervalSince1970:msglastTime];
    //: NSString *result = nil;
    NSString *result = nil;
    //: NSCalendarUnit components = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday|NSCalendarUnitHour | NSCalendarUnitMinute);
    NSCalendarUnit components = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitWeekday|NSCalendarUnitHour | NSCalendarUnitMinute);
    //: NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:components fromDate:nowDate];
    NSDateComponents *nowDateComponents = [[NSCalendar currentCalendar] components:components fromDate:nowDate];
    //: NSDateComponents *msgDateComponents = [[NSCalendar currentCalendar] components:components fromDate:msgDate];
    NSDateComponents *msgDateComponents = [[NSCalendar currentCalendar] components:components fromDate:msgDate];

    //: NSInteger hour = msgDateComponents.hour;
    NSInteger hour = msgDateComponents.hour;

    //: result = [NTESSessionUtil getPeriodOfTime:hour withMinute:msgDateComponents.minute];
    result = [SessionUtil signaling:hour ofS:msgDateComponents.minute];
    //: if (hour > 12)
    if (hour > 12)
    {
        //: hour = hour - 12;
        hour = hour - 12;
    }
    //: if(nowDateComponents.day == msgDateComponents.day) 
    if(nowDateComponents.day == msgDateComponents.day) //同一天,显示时间
    {
        //: result = [[NSString alloc] initWithFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute];
        result = [[NSString alloc] initWithFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute];
    }
    //: else if(nowDateComponents.day == (msgDateComponents.day+1))
    else if(nowDateComponents.day == (msgDateComponents.day+1))//昨天
    {
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[WorkLanguageManager getTextWithKey:@"yesterday"], result,hour,(int)msgDateComponents.minute] : [WorkLanguageManager getTextWithKey:@"yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[InputRed preserve:[LengthCousinData k_deployNameValue]], result,hour,(int)msgDateComponents.minute] : [InputRed preserve:[LengthCousinData k_deployNameValue]];//昨天
    }
    //: else if(nowDateComponents.day == (msgDateComponents.day+2)) 
    else if(nowDateComponents.day == (msgDateComponents.day+2)) //前天
    {
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[WorkLanguageManager getTextWithKey:@"before_yesterday"], result,hour,(int)msgDateComponents.minute] : [WorkLanguageManager getTextWithKey:@"before_yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[InputRed preserve:[LengthCousinData m_balanceText]], result,hour,(int)msgDateComponents.minute] : [InputRed preserve:[LengthCousinData m_balanceText]];//@"前天";
    }
    //: else if([nowDate timeIntervalSinceDate:msgDate] < 7 * OnedayTimeIntervalValue)
    else if([nowDate timeIntervalSinceDate:msgDate] < 7 * dreamValueTitle)//一周内
    {
        //: NSString *weekDay = [NTESSessionUtil weekdayStr:msgDateComponents.weekday];
        NSString *weekDay = [SessionUtil find:msgDateComponents.weekday];
        //: result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
        result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
    }
    //: else
    else//显示日期
    {
        //: NSString *day = [NSString stringWithFormat:@"%zd-%zd-%zd", msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        NSString *day = [NSString stringWithFormat:[LengthCousinData show_canName], msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        //: result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
        result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
    }
    //: return result;
    return result;
}

//: + (NSString *)getPeriodOfTime:(NSInteger)time withMinute:(NSInteger)minute
+ (NSString *)signaling:(NSInteger)time ofS:(NSInteger)minute
{
    //: NSInteger totalMin = time *60 + minute;
    NSInteger totalMin = time *60 + minute;
    //: NSString *showPeriodOfTime = @"";
    NSString *showPeriodOfTime = @"";
    //: if (totalMin > 0 && totalMin <= 5 * 60)
    if (totalMin > 0 && totalMin <= 5 * 60)
    {
        //: showPeriodOfTime = [WorkLanguageManager getTextWithKey:@"wee_hours"];
        showPeriodOfTime = [InputRed preserve:[LengthCousinData notiPressName]];//@"凌晨".ntes_localized;
    }
    //: else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    {
        //: showPeriodOfTime = [WorkLanguageManager getTextWithKey:@"day_am"];
        showPeriodOfTime = [InputRed preserve:[LengthCousinData show_botName]];//@"上午".ntes_localized;
    }
    //: else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    {
        //: showPeriodOfTime = [WorkLanguageManager getTextWithKey:@"day_pm"];
        showPeriodOfTime = [InputRed preserve:[LengthCousinData kWithData]];//@"下午".ntes_localized;
    }
    //: else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    {
        //: showPeriodOfTime = [WorkLanguageManager getTextWithKey:@"day_night"];
        showPeriodOfTime = [InputRed preserve:[LengthCousinData main_appearViewTowerName]];//@"晚上".ntes_localized;
    }
    //: return showPeriodOfTime;
    return showPeriodOfTime;
}


//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)quickHandler:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  signal:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler
               info:(void (^)(AVAssetExportSession*))handler
{
    //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
    AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
    //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
    AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
                                                                     //: presetName:AVAssetExportPresetMediumQuality];
                                                                     presetName:AVAssetExportPresetMediumQuality];
    //: session.outputURL = outputURL;
    session.outputURL = outputURL;
    //: session.outputFileType = AVFileTypeMPEG4; 
    session.outputFileType = AVFileTypeMPEG4; // 支持安卓某些机器的视频播放
    //: session.shouldOptimizeForNetworkUse = YES;
    session.shouldOptimizeForNetworkUse = YES;
    //: [session exportAsynchronouslyWithCompletionHandler:^(void)
    [session exportAsynchronouslyWithCompletionHandler:^(void)
     {
         //: handler(session);
         handler(session);
     //: }];
     }];
}


//: + (NSDictionary *)dictByJsonData:(NSData *)data
+ (NSDictionary *)should:(NSData *)data
{
    //: NSDictionary *dict = nil;
    NSDictionary *dict = nil;
    //: if ([data isKindOfClass:[NSData class]])
    if ([data isKindOfClass:[NSData class]])
    {
        //: NSError *error = nil;
        NSError *error = nil;
        //: dict = [NSJSONSerialization JSONObjectWithData:data
        dict = [NSJSONSerialization JSONObjectWithData:data
                                               //: options:0
                                               options:0
                                                 //: error:&error];
                                                 error:&error];
        //: if (error) {
        if (error) {
        }
    }
    //: return [dict isKindOfClass:[NSDictionary class]] ? dict : nil;
    return [dict isKindOfClass:[NSDictionary class]] ? dict : nil;
}


//: + (NSDictionary *)dictByJsonString:(NSString *)jsonString
+ (NSDictionary *)with:(NSString *)jsonString
{
    //: if (!jsonString.length) {
    if (!jsonString.length) {
        //: return nil;
        return nil;
    }
    //: NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    //: return [NTESSessionUtil dictByJsonData:data];
    return [SessionUtil should:data];
}

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript {
+ (NSString *)extra:(NSString *)postscript {
    //: NSString *tip = [WorkLanguageManager getTextWithKey:@"message_helper_you"];
    NSString *tip = [InputRed preserve:[LengthCousinData appMakeChipValue]];//@"你".ntes_localized;
    //: NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[WorkLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[InputRed preserve:[LengthCousinData mEarlValue]]];
    //: if (postscript.length != 0) {
    if (postscript.length != 0) {
        //: msg = [NSString stringWithFormat:@"%@%@.%@:%@", tip,[WorkLanguageManager getTextWithKey:@"retracted_message"],[WorkLanguageManager getTextWithKey:@"postscript"], postscript];
        msg = [NSString stringWithFormat:@"%@%@.%@:%@", tip,[InputRed preserve:[LengthCousinData mEarlValue]],[InputRed preserve:[LengthCousinData dream_colorData]], postscript];
    }
    //: return msg;
    return msg;
}

//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notification
+ (NSString *)groundBubble:(NIMRevokeMessageNotification *)notification
{
    //: NSString *tip = @"";
    NSString *tip = @"";
    //: do {
    do {
        //: if (!notification || ![notification isKindOfClass:[NIMRevokeMessageNotification class]]) {
        if (!notification || ![notification isKindOfClass:[NIMRevokeMessageNotification class]]) {
            //: tip = [WorkLanguageManager getTextWithKey:@"message_helper_you"];
            tip = [InputRed preserve:[LengthCousinData appMakeChipValue]];//@"你".ntes_localized;
            //: break;
            break;
        }
        //: NIMSession *session = notification.session;
        NIMSession *session = notification.session;
        //: if (session.sessionType == NIMSessionTypeTeam || session.sessionType == NIMSessionTypeSuperTeam) {
        if (session.sessionType == NIMSessionTypeTeam || session.sessionType == NIMSessionTypeSuperTeam) {
            //: tip = [self tipTitleFromMessageRevokeNotificationTeam:notification];
            tip = [self scaleOf:notification];
            //: break;
            break;
        }
        //: tip = [self tipTitleFromMessageRevokeNotificationP2P:notification];
        tip = [self distance:notification];
    //: } while (false);
    } while (false);

    //: NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[WorkLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[InputRed preserve:[LengthCousinData mEarlValue]]];
    //: if (notification.postscript.length != 0) {
    if (notification.postscript.length != 0) {
        //: msg = [NSString stringWithFormat:@"%@ %@.%@:%@", tip,[WorkLanguageManager getTextWithKey:@"retracted_message"],[WorkLanguageManager getTextWithKey:@"postscript"], notification.postscript];
        msg = [NSString stringWithFormat:@"%@ %@.%@:%@", tip,[InputRed preserve:[LengthCousinData mEarlValue]],[InputRed preserve:[LengthCousinData dream_colorData]], notification.postscript];
    }
    //: return msg;
    return msg;
}

//: + (NSString *)tipTitleFromMessageRevokeNotificationP2P:(NIMRevokeMessageNotification *)notification {
+ (NSString *)distance:(NIMRevokeMessageNotification *)notification {
    //: NSString *fromUid = notification.messageFromUserId;
    NSString *fromUid = notification.messageFromUserId;
    //: BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: return fromMe ? [WorkLanguageManager getTextWithKey:@"message_helper_you"]: [WorkLanguageManager getTextWithKey:@"message_opposite"];
    return fromMe ? [InputRed preserve:[LengthCousinData appMakeChipValue]]: [InputRed preserve:[LengthCousinData show_handleContent]];//@"对方".ntes_localized;
}

//: + (NSString *)tipTitleFromMessageRevokeNotificationTeam:(NIMRevokeMessageNotification *)notification {
+ (NSString *)scaleOf:(NIMRevokeMessageNotification *)notification {
    //: NSString *tipTitle = @"";
    NSString *tipTitle = @"";

    //: do {
    do {
        //: NSString *fromUid = notification.messageFromUserId;
        NSString *fromUid = notification.messageFromUserId;
        //: NSString *operatorUid = notification.fromUserId;
        NSString *operatorUid = notification.fromUserId;
        //: BOOL revokeBySender = !operatorUid || [operatorUid isEqualToString:fromUid];
        BOOL revokeBySender = !operatorUid || [operatorUid isEqualToString:fromUid];
        //: BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
        BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];

        // 自己撤回自己的
        //: if (revokeBySender && fromMe) {
        if (revokeBySender && fromMe) {
            //: tipTitle = [WorkLanguageManager getTextWithKey:@"message_helper_you"];
            tipTitle = [InputRed preserve:[LengthCousinData appMakeChipValue]];//@"你".ntes_localized;
            //: break;
            break;
        }

        //: NIMSession *session = notification.session;
        NIMSession *session = notification.session;
        //: WorkKitInfoFetchOption *option = [[WorkKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:(revokeBySender ? fromUid : operatorUid) option:option];
        ConfirmationInfo *info = [[MessageContent secretResolution] recent:(revokeBySender ? fromUid : operatorUid) blue:option];

        // 别人撤回自己的
        //: if (revokeBySender) {
        if (revokeBySender) {
            //: tipTitle = info.showName;
            tipTitle = info.showName;
            //: break;
            break;
        }

        //: NIMTeamMember *member = nil;
        NIMTeamMember *member = nil;
        //: if (notification.session.sessionType == NIMSessionTypeTeam) {
        if (notification.session.sessionType == NIMSessionTypeTeam) {
            //: member = [[NIMSDK sharedSDK].teamManager teamMember:operatorUid inTeam:session.sessionId];
            member = [[NIMSDK sharedSDK].teamManager teamMember:operatorUid inTeam:session.sessionId];
        //: } else if (notification.session.sessionType == NIMSessionTypeSuperTeam) {
        } else if (notification.session.sessionType == NIMSessionTypeSuperTeam) {
            //: member = [[NIMSDK sharedSDK].superTeamManager teamMember:operatorUid inTeam:session.sessionId];
            member = [[NIMSDK sharedSDK].superTeamManager teamMember:operatorUid inTeam:session.sessionId];
        }
        // 被群主/管理员撤回的
        //: if (member.type == NIMTeamMemberTypeOwner) {
        if (member.type == NIMTeamMemberTypeOwner) {
            //: tipTitle = [[WorkLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"] stringByAppendingString:info.showName];
            tipTitle = [[InputRed preserve:[LengthCousinData main_viseAccelerateData]] stringByAppendingString:info.showName];//@"群主".ntes_localized
        }
        //: else if (member.type == NIMTeamMemberTypeManager) {
        else if (member.type == NIMTeamMemberTypeManager) {
            //: tipTitle = [[WorkLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"] stringByAppendingString:info.showName];
            tipTitle = [[InputRed preserve:[LengthCousinData dreamNeedFindingTitle]] stringByAppendingString:info.showName];//@"管理员".ntes_localized
        }
    //: } while (false);
    } while (false);

    //: return tipTitle;
    return tipTitle;
}


//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message
+ (BOOL)dataConverter:(NIMMessage *)message
{
    //: if (!message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed) {
    if (!message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed) {
        //: return NO;
        return NO;
    }
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;
    //: if ([messageObject isKindOfClass:[NIMCustomObject class]])
    if ([messageObject isKindOfClass:[NIMCustomObject class]])
    {
        //: id<NTESCustomAttachmentInfo> attach = (id<NTESCustomAttachmentInfo>)[(NIMCustomObject *)message.messageObject attachment];
        id<GermanismInfo> attach = (id<GermanismInfo>)[(NIMCustomObject *)message.messageObject attachment];
        //: return [attach canBeForwarded];
        return [attach session];
    }
    //: if ([messageObject isKindOfClass:[NIMNotificationObject class]]) {
    if ([messageObject isKindOfClass:[NIMNotificationObject class]]) {
        //: return NO;
        return NO;
    }
    //: if ([messageObject isKindOfClass:[NIMTipObject class]]) {
    if ([messageObject isKindOfClass:[NIMTipObject class]]) {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: + (BOOL)canMessageBeRevoked:(NIMMessage *)message
+ (BOOL)row:(NIMMessage *)message
{
    //: BOOL canRevokeMessageByRole = [self canRevokeMessageByRole:message];
    BOOL canRevokeMessageByRole = [self revokeLieuPastCanCipherData:message];
    //: BOOL isDeliverFailed = !message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed;
    BOOL isDeliverFailed = !message.isReceivedMsg && message.deliveryState == NIMMessageDeliveryStateFailed;
    //: if (!canRevokeMessageByRole || isDeliverFailed) {
    if (!canRevokeMessageByRole || isDeliverFailed) {
        //: return NO;
        return NO;
    }
    //: id<NIMMessageObject> messageObject = message.messageObject;
    id<NIMMessageObject> messageObject = message.messageObject;
    //: if ([messageObject isKindOfClass:[NIMTipObject class]]
    if ([messageObject isKindOfClass:[NIMTipObject class]]
        //: || [messageObject isKindOfClass:[NIMNotificationObject class]]) {
        || [messageObject isKindOfClass:[NIMNotificationObject class]]) {
        //: return NO;
        return NO;
    }
    //: if ([messageObject isKindOfClass:[NIMCustomObject class]])
    if ([messageObject isKindOfClass:[NIMCustomObject class]])
    {
        //: id<NTESCustomAttachmentInfo> attach = (id<NTESCustomAttachmentInfo>)[(NIMCustomObject *)message.messageObject attachment];
        id<GermanismInfo> attach = (id<GermanismInfo>)[(NIMCustomObject *)message.messageObject attachment];
        //: return [attach canBeRevoked];
        return [attach bearOn];
    }
    //: return YES;
    return YES;
}

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message
+ (BOOL)by:(NIMMessage *)message
{
    //: return [self canMessageBeRevoked:message] &&
    return [self row:message] &&
    //: message.deliveryState == NIMMessageDeliveryStateDelivering;
    message.deliveryState == NIMMessageDeliveryStateDelivering;
}


//: + (BOOL)canRevokeMessageByRole:(NIMMessage *)message
+ (BOOL)revokeLieuPastCanCipherData:(NIMMessage *)message
{
    //: BOOL isFromMe = [message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL isFromMe = [message.from isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: BOOL isToMe = [message.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL isToMe = [message.session.sessionId isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: BOOL isTeamManager = NO;
    BOOL isTeamManager = NO;
    //: if (message.session.sessionType == NIMSessionTypeTeam)
    if (message.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:[NIMSDK sharedSDK].loginManager.currentAccount inTeam:message.session.sessionId];
        NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:[NIMSDK sharedSDK].loginManager.currentAccount inTeam:message.session.sessionId];
        //: isTeamManager = member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
        isTeamManager = member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager;
    //: } else if (message.session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (message.session.sessionType == NIMSessionTypeSuperTeam) {
        //: NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:[[NIMSDK sharedSDK].loginManager currentAccount]
        NIMTeamMember *member = [[NIMSDK sharedSDK].superTeamManager teamMember:[[NIMSDK sharedSDK].loginManager currentAccount]
                                                                         //: inTeam:message.session.sessionId];
                                                                         inTeam:message.session.sessionId];
        //: isTeamManager = (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
        isTeamManager = (member.type == NIMTeamMemberTypeOwner || member.type == NIMTeamMemberTypeManager);
    }

    //我发出去的消息并且不是发给我的电脑的消息，可以撤回
    //群消息里如果我是管理员可以撤回以上所有消息
    //: return (isFromMe && !isToMe) || isTeamManager;
    return (isFromMe && !isToMe) || isTeamManager;
}


//: + (void)addRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type
+ (void)save:(NIMSession *)session viewType:(NTESRecentSessionMarkType)type
{
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: if (recent)
    if (recent)
    {
        //: NSDictionary *localExt = recent.localExt?:@{};
        NSDictionary *localExt = recent.localExt?:@{};
        //: NSMutableDictionary *dict = [localExt mutableCopy];
        NSMutableDictionary *dict = [localExt mutableCopy];
        //: NSString *key = [NTESSessionUtil keyForMarkType:type];
        NSString *key = [SessionUtil sub:type];
        //: [dict setObject:@(YES) forKey:key];
        [dict setObject:@(YES) forKey:key];
        //: [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:dict recentSession:recent];
        [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:dict recentSession:recent];
    }


}

//: + (void)removeRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type
+ (void)past:(NIMSession *)session characteristicRootOfASquareMatrix:(NTESRecentSessionMarkType)type
{
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: if (recent) {
    if (recent) {
        //: NSMutableDictionary *localExt = [recent.localExt mutableCopy];
        NSMutableDictionary *localExt = [recent.localExt mutableCopy];
        //: NSString *key = [NTESSessionUtil keyForMarkType:type];
        NSString *key = [SessionUtil sub:type];
        //: [localExt removeObjectForKey:key];
        [localExt removeObjectForKey:key];
        //: [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:localExt recentSession:recent];
        [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:localExt recentSession:recent];
    }
}

//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(NTESRecentSessionMarkType)type
+ (BOOL)itemBackground:(NIMRecentSession *)recent cell:(NTESRecentSessionMarkType)type
{
    //: NSDictionary *localExt = recent.localExt;
    NSDictionary *localExt = recent.localExt;
    //: NSString *key = [NTESSessionUtil keyForMarkType:type];
    NSString *key = [SessionUtil sub:type];
    //: if ([localExt[key] isKindOfClass:[NSNumber class]] || [localExt[key] isKindOfClass:[NSString class]]) {
    if ([localExt[key] isKindOfClass:[NSNumber class]] || [localExt[key] isKindOfClass:[NSString class]]) {
        //: return [localExt[key] boolValue] == YES;
        return [localExt[key] boolValue] == YES;
    }
    //: return NO;
    return NO;
}

//: + (NSString *)keyForMarkType:(NTESRecentSessionMarkType)type
+ (NSString *)sub:(NTESRecentSessionMarkType)type
{
    //: static NSDictionary *keys;
    static NSDictionary *keys;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: keys = @{
        keys = @{
                 //: @(NTESRecentSessionMarkTypeAt) : NTESRecentSessionAtMark,
                 @(NTESRecentSessionMarkTypeAt) : appTeamName,
                 //: @(NTESRecentSessionMarkTypeTop) : NTESRecentSessionTopMark
                 @(NTESRecentSessionMarkTypeTop) : mainMakeData
                 //: };
                 };
    //: });
    });
    //: return [keys objectForKey:@(type)];
    return [keys objectForKey:@(type)];
}

//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail
+ (NSString *)info:(NSString *)userId layer:(BOOL)detail
{
    //: NSString *state = @"";
    NSString *state = @"";
    //: if (![NTESSubscribeManager sharedManager] || [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId])
    if (![ColorTingManager message] || [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId])
    {
        //没有开启订阅服务或是自己  不显示在线状态
        //: return state;
        return state;
    }

    //: NSDictionary *dict = [[NTESSubscribeManager sharedManager] eventsForType:NIMSubscribeSystemEventTypeOnline];
    NSDictionary *dict = [[ColorTingManager message] model:NIMSubscribeSystemEventTypeOnline];
    //: NIMSubscribeEvent *event = [dict objectForKey:userId];
    NIMSubscribeEvent *event = [dict objectForKey:userId];
    //: NIMSubscribeOnlineInfo *info = event.subscribeInfo;
    NIMSubscribeOnlineInfo *info = event.subscribeInfo;
    //: if ([info isKindOfClass:[NIMSubscribeOnlineInfo class]] && info.senderClientTypes.count)
    if ([info isKindOfClass:[NIMSubscribeOnlineInfo class]] && info.senderClientTypes.count)
    {
        //: NIMLoginClientType client = [self resolveShowClientType:info.senderClientTypes];
        NIMLoginClientType client = [self viewType:info.senderClientTypes];

        //: switch (event.value) {
        switch (event.value) {
            //: case NTESCustomStateValueOnlineExt:
            case NTESCustomStateValueOnlineExt:
            //: case NIMSubscribeEventOnlineValueLogin:
            case NIMSubscribeEventOnlineValueLogin:
            //: case NIMSubscribeEventOnlineValueLogout:
            case NIMSubscribeEventOnlineValueLogout:
            //: case NIMSubscribeEventOnlineValueDisconnected:
            case NIMSubscribeEventOnlineValueDisconnected:
            {
                //: NSString *ext = [event ext:client];
                NSString *ext = [event ext:client];
                //: state = [self resolveOnlineState:ext client:client detail:detail];
                state = [self writerSTitleLimit:ext modify:client activity:detail];
            }
                //: break;
                break;

            //: default:
            default:
            {
                //: NSString *clientName = [self resolveOnlineClientName:client];
                NSString *clientName = [self day:client];
                //: state = [NSString stringWithFormat:@"%@ %@", clientName, [WorkLanguageManager getTextWithKey:@"message_online"]];
                state = [NSString stringWithFormat:@"%@ %@", clientName, [InputRed preserve:[LengthCousinData dreamInfoBotData]]];
                //: break;
                break;
            }
        }
    }
    //: else
    else
    {
        //: state = @"离线".ntes_localized;
        state = @"离线".shouldLocalized;
    }
    //: return state;
    return state;
}


//: + (NIMLoginClientType)resolveShowClientType:(NSArray *)senderClientTypes
+ (NIMLoginClientType)viewType:(NSArray *)senderClientTypes
{
    //: NSArray *clients = @[@(NIMLoginClientTypePC),@(NIMLoginClientTypemacOS),@(NIMLoginClientTypeiOS),@(NIMLoginClientTypeAOS),@(NIMLoginClientTypeWeb),@(NIMLoginClientTypeWP)]; 
    NSArray *clients = @[@(NIMLoginClientTypePC),@(NIMLoginClientTypemacOS),@(NIMLoginClientTypeiOS),@(NIMLoginClientTypeAOS),@(NIMLoginClientTypeWeb),@(NIMLoginClientTypeWP)]; //显示优先级
    //: for (NSNumber *type in clients) {
    for (NSNumber *type in clients) {
        //: NIMLoginClientType client = type.integerValue;
        NIMLoginClientType client = type.integerValue;
        //: if ([senderClientTypes containsObject:@(client)]) {
        if ([senderClientTypes containsObject:@(client)]) {
            //: return client;
            return client;
        }
    }
    //: return NIMLoginClientTypeUnknown;
    return NIMLoginClientTypeUnknown;
}

//: + (NSString *)resolveOnlineClientName:(NIMLoginClientType )client
+ (NSString *)day:(NIMLoginClientType )client
{
    //: NSDictionary *formats = @{
    NSDictionary *formats = @{
                              //: @(NIMLoginClientTypePC) : @"PC",
                              @(NIMLoginClientTypePC) : @"PC",
                              //: @(NIMLoginClientTypemacOS) : @"Mac",
                              @(NIMLoginClientTypemacOS) : [LengthCousinData user_journalistValue],
                              //: @(NIMLoginClientTypeiOS): @"iOS",
                              @(NIMLoginClientTypeiOS): [LengthCousinData notiSliceEndText],
                              //: @(NIMLoginClientTypeAOS): @"Android",
                              @(NIMLoginClientTypeAOS): [LengthCousinData app_rowNameData],
                              //: @(NIMLoginClientTypeWeb): @"Web",
                              @(NIMLoginClientTypeWeb): [LengthCousinData app_acceptableContent],
                              //: @(NIMLoginClientTypeWP) : @"WP"
                              @(NIMLoginClientTypeWP) : @"WP"
                             //: };
                             };

    //: NSString *format = [formats objectForKey:@(client)];
    NSString *format = [formats objectForKey:@(client)];
    //: return format? format : @"";
    return format? format : @"";
}

//: + (NSString *)resolveOnlineState:(NSString *)ext client:(NIMLoginClientType)client detail:(BOOL)detail
+ (NSString *)writerSTitleLimit:(NSString *)ext modify:(NIMLoginClientType)client activity:(BOOL)detail
{
    //: NSString *clientName = [self resolveOnlineClientName:client];
    NSString *clientName = [self day:client];
    //: NSString *state = [NSString stringWithFormat:@"%@ %@",clientName,[WorkLanguageManager getTextWithKey:@"message_online"]];
    NSString *state = [NSString stringWithFormat:@"%@ %@",clientName,[InputRed preserve:[LengthCousinData dreamInfoBotData]]];//@"在线".ntes_localized
    //: NSDictionary *dict = [ext nimkit_jsonDict];
    NSDictionary *dict = [ext nimkit];
    //: if (dict) {
    if (dict) {

        //: NSString *netState = [[NTESDevice currentDevice] networkStatus:[dict jsonInteger:NTESSubscribeNetState]];
        NSString *netState = [[FrameForwardSend user] systemStatus:[dict cell:showTitleToValue]];
        //: NTESOnlineState onlineState = [dict jsonInteger:NTESSubscribeOnlineState];
        NTESOnlineState onlineState = [dict cell:user_indexName];
        //: switch (onlineState) {
        switch (onlineState) {
            //: case NTESOnlineStateNormal:
            case NTESOnlineStateNormal:
            {
                //: if (client == NIMLoginClientTypePC ||
                if (client == NIMLoginClientTypePC ||
                    //: client == NIMLoginClientTypeWeb ||
                    client == NIMLoginClientTypeWeb ||
                    //: client == NIMLoginClientTypemacOS)
                    client == NIMLoginClientTypemacOS)
                {
                    //桌面端不显示网络状态，只显示端
                    //: return [NSString stringWithFormat:@"%@ %@",clientName,[WorkLanguageManager getTextWithKey:@"message_online"]];
                    return [NSString stringWithFormat:@"%@ %@",clientName,[InputRed preserve:[LengthCousinData dreamInfoBotData]]];//@"在线".ntes_localized
                }
                //: else
                else
                {
                    //移动端在会话列表显示网络状态，在会话内（detail）优先显示端+网络状态
                    //: if (detail)
                    if (detail)
                    {
                        //: return [NSString stringWithFormat:@"%@ - %@ %@",clientName,netState,[WorkLanguageManager getTextWithKey:@"message_online"]];
                        return [NSString stringWithFormat:@"%@ - %@ %@",clientName,netState,[InputRed preserve:[LengthCousinData dreamInfoBotData]]];//@"在线".ntes_localized
                    }
                    //: else
                    else
                    {
                        //: return [NSString stringWithFormat:@"%@ %@",netState,[WorkLanguageManager getTextWithKey:@"message_online"]];
                        return [NSString stringWithFormat:@"%@ %@",netState,[InputRed preserve:[LengthCousinData dreamInfoBotData]]];//@"在线".ntes_localized
                    }
                }
            }
            //: case NTESOnlineStateBusy:
            case NTESOnlineStateBusy:
                //: return [WorkLanguageManager getTextWithKey:@"online_state_event_manager_on_line_busy"];
                return [InputRed preserve:[LengthCousinData dreamSizeHideData]];//@"忙碌".ntes_localized;
            //: case NTESOnlineStateLeave:
            case NTESOnlineStateLeave:
                //: return [WorkLanguageManager getTextWithKey:@"online_state_event_manager_off_line"];
                return [InputRed preserve:[LengthCousinData userWishValue]];//@"离开".ntes_localized;
            //: default:
            default:
                //: break;
                break;
        }
    }
    //: return state;
    return state;
}

//: + (NSString *)formatAutoLoginMessage:(NSError *)error
+ (NSString *)completeByShared:(NSError *)error
{
    //: NSString *message = [NSString stringWithFormat:@"%@ %@",[WorkLanguageManager getTextWithKey:@"login_failure"], error];
    NSString *message = [NSString stringWithFormat:@"%@ %@",[InputRed preserve:[LengthCousinData mPlaceName]], error];//,@"自动登录失败".ntes_localized
    //: NSString *domain = error.domain;
    NSString *domain = error.domain;
    //: NSInteger code = error.code;
    NSInteger code = error.code;
    //: if ([domain isEqualToString:NIMLocalErrorDomain])
    if ([domain isEqualToString:NIMLocalErrorDomain])
    {
        //: if (code == NIMLocalErrorCodeAutoLoginRetryLimit)
        if (code == NIMLocalErrorCodeAutoLoginRetryLimit)
        {
            //: message = [WorkLanguageManager getTextWithKey:@"please_try_again"];
            message = [InputRed preserve:[LengthCousinData showTagName]];//@"自动登录错误次数超限，请检查网络后重试".ntes_localized;
        }
    }
    //: else if([domain isEqualToString:NIMRemoteErrorDomain])
    else if([domain isEqualToString:NIMRemoteErrorDomain])
    {
        //: if (code == NIMRemoteErrorCodeInvalidPass)
        if (code == NIMRemoteErrorCodeInvalidPass)
        {
            //: message = [WorkLanguageManager getTextWithKey:@"wrong_password"];
            message = [InputRed preserve:[LengthCousinData main_hideValue]];//@"密码错误".ntes_localized;
        }
        //: else if(code == NIMRemoteErrorCodeExist)
        else if(code == NIMRemoteErrorCodeExist)
        {
            //: message = [WorkLanguageManager getTextWithKey:@"logged_another_device"];
            message = [InputRed preserve:[LengthCousinData mThanName]];//@"当前已经其他设备登录，请使用手动模式登录".ntes_localized;
        }
    }
    //: return message;
    return message;
}

//: @end
@end
