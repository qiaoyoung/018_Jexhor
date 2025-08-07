
#import <Foundation/Foundation.h>

typedef struct {
    Byte speculative;
    Byte *development;
    unsigned int humor;
	int antipathetical;
} StructAdviserViewData;

@interface AdviserViewData : NSObject

@end

@implementation AdviserViewData

+ (Byte *)AdviserViewDataToByte:(StructAdviserViewData *)data {
    for (int i = 0; i < data->humor; i++) {
        data->development[i] ^= data->speculative;
    }
    data->development[data->humor] = 0;
	if (data->humor >= 1) {
		data->antipathetical = data->development[0];
	}
    return data->development;
}

+ (NSString *)StringFromAdviserViewData:(StructAdviserViewData *)data {
    return [NSString stringWithUTF8String:(char *)[self AdviserViewDataToByte:data]];
}

//: Tuesday
+ (NSString *)app_participateStr {
    /* static */ NSString *app_participateStr = nil;
    if (!app_participateStr) {
        StructAdviserViewData value = (StructAdviserViewData){116, (Byte []){32, 1, 17, 7, 16, 21, 13, 238}, 7, 168};
        app_participateStr = [self StringFromAdviserViewData:&value];
    }
    return app_participateStr;
}

//: please_try_again
+ (NSString *)notiMayTextKey {
    /* static */ NSString *notiMayTextKey = nil;
    if (!notiMayTextKey) {
        StructAdviserViewData value = (StructAdviserViewData){182, (Byte []){198, 218, 211, 215, 197, 211, 233, 194, 196, 207, 233, 215, 209, 215, 223, 216, 2}, 16, 206};
        notiMayTextKey = [self StringFromAdviserViewData:&value];
    }
    return notiMayTextKey;
}

//: Monday
+ (NSString *)appDeadIdent {
    /* static */ NSString *appDeadIdent = nil;
    if (!appDeadIdent) {
        StructAdviserViewData value = (StructAdviserViewData){155, (Byte []){214, 244, 245, 255, 250, 226, 100}, 6, 49};
        appDeadIdent = [self StringFromAdviserViewData:&value];
    }
    return appDeadIdent;
}

//: day_am
+ (NSString *)appButtonImageBlackStr {
    /* static */ NSString *appButtonImageBlackStr = nil;
    if (!appButtonImageBlackStr) {
        StructAdviserViewData value = (StructAdviserViewData){6, (Byte []){98, 103, 127, 89, 103, 107, 215}, 6, 31};
        appButtonImageBlackStr = [self StringFromAdviserViewData:&value];
    }
    return appButtonImageBlackStr;
}

//: group_member_info_activity_team_creator
+ (NSString *)user_infoMsg {
    /* static */ NSString *user_infoMsg = nil;
    if (!user_infoMsg) {
        StructAdviserViewData value = (StructAdviserViewData){38, (Byte []){65, 84, 73, 83, 86, 121, 75, 67, 75, 68, 67, 84, 121, 79, 72, 64, 73, 121, 71, 69, 82, 79, 80, 79, 82, 95, 121, 82, 67, 71, 75, 121, 69, 84, 67, 71, 82, 73, 84, 4}, 39, 60};
        user_infoMsg = [self StringFromAdviserViewData:&value];
    }
    return user_infoMsg;
}

//: login_failure
+ (NSString *)dream_textStr {
    /* static */ NSString *dream_textStr = nil;
    if (!dream_textStr) {
        StructAdviserViewData value = (StructAdviserViewData){76, (Byte []){32, 35, 43, 37, 34, 19, 42, 45, 37, 32, 57, 62, 41, 154}, 13, 86};
        dream_textStr = [self StringFromAdviserViewData:&value];
    }
    return dream_textStr;
}

//: wee_hours
+ (NSString *)dreamItTitle {
    /* static */ NSString *dreamItTitle = nil;
    if (!dreamItTitle) {
        StructAdviserViewData value = (StructAdviserViewData){214, (Byte []){161, 179, 179, 137, 190, 185, 163, 164, 165, 142}, 9, 173};
        dreamItTitle = [self StringFromAdviserViewData:&value];
    }
    return dreamItTitle;
}

//: wrong_password
+ (NSString *)appBiasValue {
    /* static */ NSString *appBiasValue = nil;
    if (!appBiasValue) {
        StructAdviserViewData value = (StructAdviserViewData){129, (Byte []){246, 243, 238, 239, 230, 222, 241, 224, 242, 242, 246, 238, 243, 229, 133}, 14, 217};
        appBiasValue = [self StringFromAdviserViewData:&value];
    }
    return appBiasValue;
}

//: logged_another_device
+ (NSString *)app_ragePath {
    /* static */ NSString *app_ragePath = nil;
    if (!app_ragePath) {
        StructAdviserViewData value = (StructAdviserViewData){60, (Byte []){80, 83, 91, 91, 89, 88, 99, 93, 82, 83, 72, 84, 89, 78, 99, 88, 89, 74, 85, 95, 89, 143}, 21, 158};
        app_ragePath = [self StringFromAdviserViewData:&value];
    }
    return app_ragePath;
}

//: yesterday
+ (NSString *)dream_maxData {
    /* static */ NSString *dream_maxData = nil;
    if (!dream_maxData) {
        StructAdviserViewData value = (StructAdviserViewData){112, (Byte []){9, 21, 3, 4, 21, 2, 20, 17, 9, 171}, 9, 176};
        dream_maxData = [self StringFromAdviserViewData:&value];
    }
    return dream_maxData;
}

//: online_state_event_manager_off_line
+ (NSString *)dream_outletSaleUrl {
    /* static */ NSString *dream_outletSaleUrl = nil;
    if (!dream_outletSaleUrl) {
        StructAdviserViewData value = (StructAdviserViewData){247, (Byte []){152, 153, 155, 158, 153, 146, 168, 132, 131, 150, 131, 146, 168, 146, 129, 146, 153, 131, 168, 154, 150, 153, 150, 144, 146, 133, 168, 152, 145, 145, 168, 155, 158, 153, 146, 225}, 35, 202};
        dream_outletSaleUrl = [self StringFromAdviserViewData:&value];
    }
    return dream_outletSaleUrl;
}

//: message_opposite
+ (NSString *)userNanIdent {
    /* static */ NSString *userNanIdent = nil;
    if (!userNanIdent) {
        StructAdviserViewData value = (StructAdviserViewData){225, (Byte []){140, 132, 146, 146, 128, 134, 132, 190, 142, 145, 145, 142, 146, 136, 149, 132, 140}, 16, 30};
        userNanIdent = [self StringFromAdviserViewData:&value];
    }
    return userNanIdent;
}

//: Web
+ (NSString *)mainSufferingPath {
    /* static */ NSString *mainSufferingPath = nil;
    if (!mainSufferingPath) {
        StructAdviserViewData value = (StructAdviserViewData){58, (Byte []){109, 95, 88, 117}, 3, 187};
        mainSufferingPath = [self StringFromAdviserViewData:&value];
    }
    return mainSufferingPath;
}

//: Android
+ (NSString *)appVersionSessionKey {
    /* static */ NSString *appVersionSessionKey = nil;
    if (!appVersionSessionKey) {
        StructAdviserViewData value = (StructAdviserViewData){131, (Byte []){194, 237, 231, 241, 236, 234, 231, 120}, 7, 35};
        appVersionSessionKey = [self StringFromAdviserViewData:&value];
    }
    return appVersionSessionKey;
}

//: day_pm
+ (NSString *)userPickKey {
    /* static */ NSString *userPickKey = nil;
    if (!userPickKey) {
        StructAdviserViewData value = (StructAdviserViewData){150, (Byte []){242, 247, 239, 201, 230, 251, 59}, 6, 203};
        userPickKey = [self StringFromAdviserViewData:&value];
    }
    return userPickKey;
}

//: Friday
+ (NSString *)mMessageMsg {
    /* static */ NSString *mMessageMsg = nil;
    if (!mMessageMsg) {
        StructAdviserViewData value = (StructAdviserViewData){102, (Byte []){32, 20, 15, 2, 7, 31, 227}, 6, 151};
        mMessageMsg = [self StringFromAdviserViewData:&value];
    }
    return mMessageMsg;
}

//: postscript
+ (NSString *)noti_spaceWipeData {
    /* static */ NSString *noti_spaceWipeData = nil;
    if (!noti_spaceWipeData) {
        StructAdviserViewData value = (StructAdviserViewData){132, (Byte []){244, 235, 247, 240, 247, 231, 246, 237, 244, 240, 247}, 10, 19};
        noti_spaceWipeData = [self StringFromAdviserViewData:&value];
    }
    return noti_spaceWipeData;
}

//: iOS
+ (NSString *)show_couchMsg {
    /* static */ NSString *show_couchMsg = nil;
    if (!show_couchMsg) {
        StructAdviserViewData value = (StructAdviserViewData){51, (Byte []){90, 124, 96, 16}, 3, 55};
        show_couchMsg = [self StringFromAdviserViewData:&value];
    }
    return show_couchMsg;
}

//: Saturday
+ (NSString *)showMainPath {
    /* static */ NSString *showMainPath = nil;
    if (!showMainPath) {
        StructAdviserViewData value = (StructAdviserViewData){108, (Byte []){63, 13, 24, 25, 30, 8, 13, 21, 79}, 8, 116};
        showMainPath = [self StringFromAdviserViewData:&value];
    }
    return showMainPath;
}

//: online_state_event_manager_on_line_busy
+ (NSString *)showPromotionStr {
    /* static */ NSString *showPromotionStr = nil;
    if (!showPromotionStr) {
        StructAdviserViewData value = (StructAdviserViewData){100, (Byte []){11, 10, 8, 13, 10, 1, 59, 23, 16, 5, 16, 1, 59, 1, 18, 1, 10, 16, 59, 9, 5, 10, 5, 3, 1, 22, 59, 11, 10, 59, 8, 13, 10, 1, 59, 6, 17, 23, 29, 94}, 39, 248};
        showPromotionStr = [self StringFromAdviserViewData:&value];
    }
    return showPromotionStr;
}

//: before_yesterday
+ (NSString *)k_affectPromotionIdent {
    /* static */ NSString *k_affectPromotionIdent = nil;
    if (!k_affectPromotionIdent) {
        StructAdviserViewData value = (StructAdviserViewData){164, (Byte []){198, 193, 194, 203, 214, 193, 251, 221, 193, 215, 208, 193, 214, 192, 197, 221, 54}, 16, 200};
        k_affectPromotionIdent = [self StringFromAdviserViewData:&value];
    }
    return k_affectPromotionIdent;
}

//: Wednesday
+ (NSString *)m_wonderfulValue {
    /* static */ NSString *m_wonderfulValue = nil;
    if (!m_wonderfulValue) {
        StructAdviserViewData value = (StructAdviserViewData){41, (Byte []){126, 76, 77, 71, 76, 90, 77, 72, 80, 206}, 9, 164};
        m_wonderfulValue = [self StringFromAdviserViewData:&value];
    }
    return m_wonderfulValue;
}

//: %zd-%zd-%zd
+ (NSString *)dreamNuclearKey {
    /* static */ NSString *dreamNuclearKey = nil;
    if (!dreamNuclearKey) {
        StructAdviserViewData value = (StructAdviserViewData){150, (Byte []){179, 236, 242, 187, 179, 236, 242, 187, 179, 236, 242, 252}, 11, 219};
        dreamNuclearKey = [self StringFromAdviserViewData:&value];
    }
    return dreamNuclearKey;
}

//: message_online
+ (NSString *)userTeamFormat {
    /* static */ NSString *userTeamFormat = nil;
    if (!userTeamFormat) {
        StructAdviserViewData value = (StructAdviserViewData){98, (Byte []){15, 7, 17, 17, 3, 5, 7, 61, 13, 12, 14, 11, 12, 7, 229}, 14, 63};
        userTeamFormat = [self StringFromAdviserViewData:&value];
    }
    return userTeamFormat;
}

//: group_member_info_activity_team_admin
+ (NSString *)showCouchId {
    /* static */ NSString *showCouchId = nil;
    if (!showCouchId) {
        StructAdviserViewData value = (StructAdviserViewData){158, (Byte []){249, 236, 241, 235, 238, 193, 243, 251, 243, 252, 251, 236, 193, 247, 240, 248, 241, 193, 255, 253, 234, 247, 232, 247, 234, 231, 193, 234, 251, 255, 243, 193, 255, 250, 243, 247, 240, 62}, 37, 225};
        showCouchId = [self StringFromAdviserViewData:&value];
    }
    return showCouchId;
}

//: retracted_message
+ (NSString *)mainButtonKey {
    /* static */ NSString *mainButtonKey = nil;
    if (!mainButtonKey) {
        StructAdviserViewData value = (StructAdviserViewData){40, (Byte []){90, 77, 92, 90, 73, 75, 92, 77, 76, 119, 69, 77, 91, 91, 73, 79, 77, 236}, 17, 131};
        mainButtonKey = [self StringFromAdviserViewData:&value];
    }
    return mainButtonKey;
}

//: Thursday
+ (NSString *)kBiasNuclearValue {
    /* static */ NSString *kBiasNuclearValue = nil;
    if (!kBiasNuclearValue) {
        StructAdviserViewData value = (StructAdviserViewData){32, (Byte []){116, 72, 85, 82, 83, 68, 65, 89, 23}, 8, 170};
        kBiasNuclearValue = [self StringFromAdviserViewData:&value];
    }
    return kBiasNuclearValue;
}

//: Sunday
+ (NSString *)mainWhiteName {
    /* static */ NSString *mainWhiteName = nil;
    if (!mainWhiteName) {
        StructAdviserViewData value = (StructAdviserViewData){168, (Byte []){251, 221, 198, 204, 201, 209, 30}, 6, 173};
        mainWhiteName = [self StringFromAdviserViewData:&value];
    }
    return mainWhiteName;
}

//: day_night
+ (NSString *)mStatId {
    /* static */ NSString *mStatId = nil;
    if (!mStatId) {
        StructAdviserViewData value = (StructAdviserViewData){173, (Byte []){201, 204, 212, 242, 195, 196, 202, 197, 217, 154}, 9, 30};
        mStatId = [self StringFromAdviserViewData:&value];
    }
    return mStatId;
}

//: message_helper_you
+ (NSString *)dream_snapName {
    /* static */ NSString *dream_snapName = nil;
    if (!dream_snapName) {
        StructAdviserViewData value = (StructAdviserViewData){112, (Byte []){29, 21, 3, 3, 17, 23, 21, 47, 24, 21, 28, 0, 21, 2, 47, 9, 31, 5, 168}, 18, 226};
        dream_snapName = [self StringFromAdviserViewData:&value];
    }
    return dream_snapName;
}

//: Mac
+ (NSString *)mIconUserName {
    /* static */ NSString *mIconUserName = nil;
    if (!mIconUserName) {
        StructAdviserViewData value = (StructAdviserViewData){213, (Byte []){152, 180, 182, 176}, 3, 193};
        mIconUserName = [self StringFromAdviserViewData:&value];
    }
    return mIconUserName;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReadUtil.m
//  NIMDemo
//
//  Created by ght on 15-1-27.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionUtil.h"
#import "ReadUtil.h"
//: #import "CCCLoginManager.h"
#import "MessageImage.h"
//: #import "NTESSnapchatAttachment.h"
#import "NameAttachment.h"
//: #import "NTESJanKenPonAttachment.h"
#import "SizeAttachment.h"
//: #import "UIImage+NTES.h"
#import "UIImage+SearchedTeam.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "NTESSnapchatAttachment.h"
#import "NameAttachment.h"
//: #import "NTESWhiteboardAttachment.h"
#import "DoingAttachment.h"
//: #import "FFFKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "NTESSubscribeManager.h"
#import "VideoManager.h"
//: #import "FFFExtensionHelper.h"
#import "FFFExtensionHelper.h"
//: #import "NTESSubscribeDefine.h"
#import "NTESSubscribeDefine.h"
//: #import "NSDictionary+NTESJson.h"
#import "NSDictionary+Bar.h"
//: #import "NTESDevice.h"
#import "MemoryDevice.h"

//: double OnedayTimeIntervalValue = 24*60*60; 
double mainTapIdent = 24*60*60; //一天的秒数

//: static NSString *const NTESRecentSessionAtMark = @"NTESRecentSessionAtMark";
static NSString *const user_fireFormat = @"NTESRecentSessionAtMark";
//: static NSString *const NTESRecentSessionTopMark = @"NTESRecentSessionTopMark";
static NSString *const dream_instanceIdent = @"NTESRecentSessionTopMark";


//: @implementation NTESSessionUtil
@implementation ReadUtil

//: + (CGSize)getImageSizeWithImageOriginSize:(CGSize)originSize
+ (CGSize)alongSize:(CGSize)originSize
                                  //: minSize:(CGSize)imageMinSize
                                  add:(CGSize)imageMinSize
                                  //: maxSize:(CGSize)imageMaxSiz
                                  with:(CGSize)imageMaxSiz
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
+(BOOL)the:(NSTimeInterval)currentTime medicinalDrugMessage:(NSDateComponents*)older
{
    //: NSCalendarUnit currentComponents = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour | NSCalendarUnitMinute);
    NSCalendarUnit currentComponents = (NSCalendarUnit)(NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour | NSCalendarUnitMinute);
    //: NSDateComponents *current = [[NSCalendar currentCalendar] components:currentComponents fromDate:[NSDate dateWithTimeIntervalSinceNow:currentTime]];
    NSDateComponents *current = [[NSCalendar currentCalendar] components:currentComponents fromDate:[NSDate dateWithTimeIntervalSinceNow:currentTime]];

    //: return current.year == older.year && current.month == older.month && current.day == older.day;
    return current.year == older.year && current.month == older.month && current.day == older.day;
}

//: +(NSString*)weekdayStr:(NSInteger)dayOfWeek
+(NSString*)touch:(NSInteger)dayOfWeek
{
    //: static NSDictionary *daysOfWeekDict = nil;
    static NSDictionary *daysOfWeekDict = nil;
    //: daysOfWeekDict = @{@(1):[FFFLanguageManager getTextWithKey:@"Sunday"],//@"星期日",
    daysOfWeekDict = @{@(1):[BackgroundRandomAttribute content:[AdviserViewData mainWhiteName]],//@"星期日",
                       //: @(2):[FFFLanguageManager getTextWithKey:@"Monday"],//@"星期一",
                       @(2):[BackgroundRandomAttribute content:[AdviserViewData appDeadIdent]],//@"星期一",
                       //: @(3):[FFFLanguageManager getTextWithKey:@"Tuesday"],//@"星期二",
                       @(3):[BackgroundRandomAttribute content:[AdviserViewData app_participateStr]],//@"星期二",
                       //: @(4):[FFFLanguageManager getTextWithKey:@"Wednesday"],//@"星期三",
                       @(4):[BackgroundRandomAttribute content:[AdviserViewData m_wonderfulValue]],//@"星期三",
                       //: @(5):[FFFLanguageManager getTextWithKey:@"Thursday"],//@"星期四",
                       @(5):[BackgroundRandomAttribute content:[AdviserViewData kBiasNuclearValue]],//@"星期四",
                       //: @(6):[FFFLanguageManager getTextWithKey:@"Friday"],//@"星期五",
                       @(6):[BackgroundRandomAttribute content:[AdviserViewData mMessageMsg]],//@"星期五",
                       //: @(7):[FFFLanguageManager getTextWithKey:@"Saturday"]};
                       @(7):[BackgroundRandomAttribute content:[AdviserViewData showMainPath]]};//@"星期六",};
    //: return [daysOfWeekDict objectForKey:@(dayOfWeek)];
    return [daysOfWeekDict objectForKey:@(dayOfWeek)];
}


//: +(NSDateComponents*)stringFromTimeInterval:(NSTimeInterval)messageTime components:(NSCalendarUnit)components
+(NSDateComponents*)versionOfTitle:(NSTimeInterval)messageTime scale:(NSCalendarUnit)components
{
    //: NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:components fromDate:[NSDate dateWithTimeIntervalSince1970:messageTime]];
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:components fromDate:[NSDate dateWithTimeIntervalSince1970:messageTime]];
    //: return dateComponents;
    return dateComponents;
}


//: + (NSString *)showNick:(NSString*)uid inSession:(NIMSession*)session{
+ (NSString *)can:(NSString*)uid count:(NIMSession*)session{

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
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        DataTeam *info = [[Secret highlight] infoAndStraddleOption:uid item:nil];
        //: nickname = info.showName;
        nickname = info.showName;
    }
    //: return nickname;
    return nickname;
}


//: +(NSString*)showTime:(NSTimeInterval) msglastTime showDetail:(BOOL)showDetail
+(NSString*)betweenNet:(NSTimeInterval) msglastTime content:(BOOL)showDetail
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
    result = [ReadUtil with:hour snapMinute:msgDateComponents.minute];
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
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[FFFLanguageManager getTextWithKey:@"yesterday"], result,hour,(int)msgDateComponents.minute] : [FFFLanguageManager getTextWithKey:@"yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[BackgroundRandomAttribute content:[AdviserViewData dream_maxData]], result,hour,(int)msgDateComponents.minute] : [BackgroundRandomAttribute content:[AdviserViewData dream_maxData]];//昨天
    }
    //: else if(nowDateComponents.day == (msgDateComponents.day+2)) 
    else if(nowDateComponents.day == (msgDateComponents.day+2)) //前天
    {
        //: result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[FFFLanguageManager getTextWithKey:@"before_yesterday"], result,hour,(int)msgDateComponents.minute] : [FFFLanguageManager getTextWithKey:@"before_yesterday"];
        result = showDetail? [[NSString alloc] initWithFormat:@"%@%@ %zd:%02d",[BackgroundRandomAttribute content:[AdviserViewData k_affectPromotionIdent]], result,hour,(int)msgDateComponents.minute] : [BackgroundRandomAttribute content:[AdviserViewData k_affectPromotionIdent]];//@"前天";
    }
    //: else if([nowDate timeIntervalSinceDate:msgDate] < 7 * OnedayTimeIntervalValue)
    else if([nowDate timeIntervalSinceDate:msgDate] < 7 * mainTapIdent)//一周内
    {
        //: NSString *weekDay = [NTESSessionUtil weekdayStr:msgDateComponents.weekday];
        NSString *weekDay = [ReadUtil touch:msgDateComponents.weekday];
        //: result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
        result = showDetail? [weekDay stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute] : weekDay;
    }
    //: else
    else//显示日期
    {
        //: NSString *day = [NSString stringWithFormat:@"%zd-%zd-%zd", msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        NSString *day = [NSString stringWithFormat:[AdviserViewData dreamNuclearKey], msgDateComponents.year, msgDateComponents.month, msgDateComponents.day];
        //: result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
        result = showDetail? [day stringByAppendingFormat:@"%@ %zd:%02d",result,hour,(int)msgDateComponents.minute]:day;
    }
    //: return result;
    return result;
}

//: + (NSString *)getPeriodOfTime:(NSInteger)time withMinute:(NSInteger)minute
+ (NSString *)with:(NSInteger)time snapMinute:(NSInteger)minute
{
    //: NSInteger totalMin = time *60 + minute;
    NSInteger totalMin = time *60 + minute;
    //: NSString *showPeriodOfTime = @"";
    NSString *showPeriodOfTime = @"";
    //: if (totalMin > 0 && totalMin <= 5 * 60)
    if (totalMin > 0 && totalMin <= 5 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"wee_hours"];
        showPeriodOfTime = [BackgroundRandomAttribute content:[AdviserViewData dreamItTitle]];//@"凌晨".ntes_localized;
    }
    //: else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    else if (totalMin > 5 * 60 && totalMin < 12 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_am"];
        showPeriodOfTime = [BackgroundRandomAttribute content:[AdviserViewData appButtonImageBlackStr]];//@"上午".ntes_localized;
    }
    //: else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    else if (totalMin >= 12 * 60 && totalMin <= 18 * 60)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_pm"];
        showPeriodOfTime = [BackgroundRandomAttribute content:[AdviserViewData userPickKey]];//@"下午".ntes_localized;
    }
    //: else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    else if ((totalMin > 18 * 60 && totalMin <= (23 * 60 + 59)) || totalMin == 0)
    {
        //: showPeriodOfTime = [FFFLanguageManager getTextWithKey:@"day_night"];
        showPeriodOfTime = [BackgroundRandomAttribute content:[AdviserViewData mStatId]];//@"晚上".ntes_localized;
    }
    //: return showPeriodOfTime;
    return showPeriodOfTime;
}


//: + (void)sessionWithInputURL:(NSURL*)inputURL
+ (void)demonstrateAnnouncement:(NSURL*)inputURL
                  //: outputURL:(NSURL*)outputURL
                  notice:(NSURL*)outputURL
               //: blockHandler:(void (^)(AVAssetExportSession*))handler
               barToHandler:(void (^)(AVAssetExportSession*))handler
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
+ (NSDictionary *)light:(NSData *)data
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
+ (NSDictionary *)clear:(NSString *)jsonString
{
    //: if (!jsonString.length) {
    if (!jsonString.length) {
        //: return nil;
        return nil;
    }
    //: NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    //: return [NTESSessionUtil dictByJsonData:data];
    return [ReadUtil light:data];
}

//: + (NSString *)tipOnMessageRevokedLocal:(NSString *)postscript {
+ (NSString *)session:(NSString *)postscript {
    //: NSString *tip = [FFFLanguageManager getTextWithKey:@"message_helper_you"];
    NSString *tip = [BackgroundRandomAttribute content:[AdviserViewData dream_snapName]];//@"你".ntes_localized;
    //: NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[FFFLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[BackgroundRandomAttribute content:[AdviserViewData mainButtonKey]]];
    //: if (postscript.length != 0) {
    if (postscript.length != 0) {
        //: msg = [NSString stringWithFormat:@"%@%@.%@:%@", tip,[FFFLanguageManager getTextWithKey:@"retracted_message"],[FFFLanguageManager getTextWithKey:@"postscript"], postscript];
        msg = [NSString stringWithFormat:@"%@%@.%@:%@", tip,[BackgroundRandomAttribute content:[AdviserViewData mainButtonKey]],[BackgroundRandomAttribute content:[AdviserViewData noti_spaceWipeData]], postscript];
    }
    //: return msg;
    return msg;
}

//: + (NSString *)tipOnMessageRevoked:(NIMRevokeMessageNotification *)notification
+ (NSString *)header:(NIMRevokeMessageNotification *)notification
{
    //: NSString *tip = @"";
    NSString *tip = @"";
    //: do {
    do {
        //: if (!notification || ![notification isKindOfClass:[NIMRevokeMessageNotification class]]) {
        if (!notification || ![notification isKindOfClass:[NIMRevokeMessageNotification class]]) {
            //: tip = [FFFLanguageManager getTextWithKey:@"message_helper_you"];
            tip = [BackgroundRandomAttribute content:[AdviserViewData dream_snapName]];//@"你".ntes_localized;
            //: break;
            break;
        }
        //: NIMSession *session = notification.session;
        NIMSession *session = notification.session;
        //: if (session.sessionType == NIMSessionTypeTeam || session.sessionType == NIMSessionTypeSuperTeam) {
        if (session.sessionType == NIMSessionTypeTeam || session.sessionType == NIMSessionTypeSuperTeam) {
            //: tip = [self tipTitleFromMessageRevokeNotificationTeam:notification];
            tip = [self to:notification];
            //: break;
            break;
        }
        //: tip = [self tipTitleFromMessageRevokeNotificationP2P:notification];
        tip = [self current:notification];
    //: } while (false);
    } while (false);

    //: NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[FFFLanguageManager getTextWithKey:@"retracted_message"]];
    NSString *msg = [NSString stringWithFormat:@"%@%@", tip,[BackgroundRandomAttribute content:[AdviserViewData mainButtonKey]]];
    //: if (notification.postscript.length != 0) {
    if (notification.postscript.length != 0) {
        //: msg = [NSString stringWithFormat:@"%@ %@.%@:%@", tip,[FFFLanguageManager getTextWithKey:@"retracted_message"],[FFFLanguageManager getTextWithKey:@"postscript"], notification.postscript];
        msg = [NSString stringWithFormat:@"%@ %@.%@:%@", tip,[BackgroundRandomAttribute content:[AdviserViewData mainButtonKey]],[BackgroundRandomAttribute content:[AdviserViewData noti_spaceWipeData]], notification.postscript];
    }
    //: return msg;
    return msg;
}

//: + (NSString *)tipTitleFromMessageRevokeNotificationP2P:(NIMRevokeMessageNotification *)notification {
+ (NSString *)current:(NIMRevokeMessageNotification *)notification {
    //: NSString *fromUid = notification.messageFromUserId;
    NSString *fromUid = notification.messageFromUserId;
    //: BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    BOOL fromMe = [fromUid isEqualToString:[[NIMSDK sharedSDK].loginManager currentAccount]];
    //: return fromMe ? [FFFLanguageManager getTextWithKey:@"message_helper_you"]: [FFFLanguageManager getTextWithKey:@"message_opposite"];
    return fromMe ? [BackgroundRandomAttribute content:[AdviserViewData dream_snapName]]: [BackgroundRandomAttribute content:[AdviserViewData userNanIdent]];//@"对方".ntes_localized;
}

//: + (NSString *)tipTitleFromMessageRevokeNotificationTeam:(NIMRevokeMessageNotification *)notification {
+ (NSString *)to:(NIMRevokeMessageNotification *)notification {
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
            //: tipTitle = [FFFLanguageManager getTextWithKey:@"message_helper_you"];
            tipTitle = [BackgroundRandomAttribute content:[AdviserViewData dream_snapName]];//@"你".ntes_localized;
            //: break;
            break;
        }

        //: NIMSession *session = notification.session;
        NIMSession *session = notification.session;
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:(revokeBySender ? fromUid : operatorUid) option:option];
        DataTeam *info = [[Secret highlight] infoAndStraddleOption:(revokeBySender ? fromUid : operatorUid) item:option];

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
            //: tipTitle = [[FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_creator"] stringByAppendingString:info.showName];
            tipTitle = [[BackgroundRandomAttribute content:[AdviserViewData user_infoMsg]] stringByAppendingString:info.showName];//@"群主".ntes_localized
        }
        //: else if (member.type == NIMTeamMemberTypeManager) {
        else if (member.type == NIMTeamMemberTypeManager) {
            //: tipTitle = [[FFFLanguageManager getTextWithKey:@"group_member_info_activity_team_admin"] stringByAppendingString:info.showName];
            tipTitle = [[BackgroundRandomAttribute content:[AdviserViewData showCouchId]] stringByAppendingString:info.showName];//@"管理员".ntes_localized
        }
    //: } while (false);
    } while (false);

    //: return tipTitle;
    return tipTitle;
}


//: + (BOOL)canMessageBeForwarded:(NIMMessage *)message
+ (BOOL)date:(NIMMessage *)message
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
        id<CreateInfo> attach = (id<CreateInfo>)[(NIMCustomObject *)message.messageObject attachment];
        //: return [attach canBeForwarded];
        return [attach pageContent];
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
+ (BOOL)marginSub:(NIMMessage *)message
{
    //: BOOL canRevokeMessageByRole = [self canRevokeMessageByRole:message];
    BOOL canRevokeMessageByRole = [self enableMargin:message];
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
        id<CreateInfo> attach = (id<CreateInfo>)[(NIMCustomObject *)message.messageObject attachment];
        //: return [attach canBeRevoked];
        return [attach section];
    }
    //: return YES;
    return YES;
}

//: + (BOOL)canMessageBeCanceled:(NIMMessage *)message
+ (BOOL)press:(NIMMessage *)message
{
    //: return [self canMessageBeRevoked:message] &&
    return [self marginSub:message] &&
    //: message.deliveryState == NIMMessageDeliveryStateDelivering;
    message.deliveryState == NIMMessageDeliveryStateDelivering;
}


//: + (BOOL)canRevokeMessageByRole:(NIMMessage *)message
+ (BOOL)enableMargin:(NIMMessage *)message
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
+ (void)name:(NIMSession *)session app:(NTESRecentSessionMarkType)type
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
        NSString *key = [ReadUtil key:type];
        //: [dict setObject:@(YES) forKey:key];
        [dict setObject:@(YES) forKey:key];
        //: [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:dict recentSession:recent];
        [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:dict recentSession:recent];
    }


}

//: + (void)removeRecentSessionMark:(NIMSession *)session type:(NTESRecentSessionMarkType)type
+ (void)color:(NIMSession *)session nipper:(NTESRecentSessionMarkType)type
{
    //: NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    NIMRecentSession *recent = [[NIMSDK sharedSDK].conversationManager recentSessionBySession:session];
    //: if (recent) {
    if (recent) {
        //: NSMutableDictionary *localExt = [recent.localExt mutableCopy];
        NSMutableDictionary *localExt = [recent.localExt mutableCopy];
        //: NSString *key = [NTESSessionUtil keyForMarkType:type];
        NSString *key = [ReadUtil key:type];
        //: [localExt removeObjectForKey:key];
        [localExt removeObjectForKey:key];
        //: [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:localExt recentSession:recent];
        [[NIMSDK sharedSDK].conversationManager updateRecentLocalExt:localExt recentSession:recent];
    }
}

//: + (BOOL)recentSessionIsMark:(NIMRecentSession *)recent type:(NTESRecentSessionMarkType)type
+ (BOOL)isImage:(NIMRecentSession *)recent twentyFourHourPeriod:(NTESRecentSessionMarkType)type
{
    //: NSDictionary *localExt = recent.localExt;
    NSDictionary *localExt = recent.localExt;
    //: NSString *key = [NTESSessionUtil keyForMarkType:type];
    NSString *key = [ReadUtil key:type];
    //: if ([localExt[key] isKindOfClass:[NSNumber class]] || [localExt[key] isKindOfClass:[NSString class]]) {
    if ([localExt[key] isKindOfClass:[NSNumber class]] || [localExt[key] isKindOfClass:[NSString class]]) {
        //: return [localExt[key] boolValue] == YES;
        return [localExt[key] boolValue] == YES;
    }
    //: return NO;
    return NO;
}

//: + (NSString *)keyForMarkType:(NTESRecentSessionMarkType)type
+ (NSString *)key:(NTESRecentSessionMarkType)type
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
                 @(NTESRecentSessionMarkTypeAt) : user_fireFormat,
                 //: @(NTESRecentSessionMarkTypeTop) : NTESRecentSessionTopMark
                 @(NTESRecentSessionMarkTypeTop) : dream_instanceIdent
                 //: };
                 };
    //: });
    });
    //: return [keys objectForKey:@(type)];
    return [keys objectForKey:@(type)];
}

//: + (NSString *)onlineState:(NSString *)userId detail:(BOOL)detail
+ (NSString *)openlineBlueTrifle:(NSString *)userId can:(BOOL)detail
{
    //: NSString *state = @"";
    NSString *state = @"";
    //: if (![NTESSubscribeManager sharedManager] || [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId])
    if (![VideoManager date] || [[NIMSDK sharedSDK].loginManager.currentAccount isEqualToString:userId])
    {
        //没有开启订阅服务或是自己  不显示在线状态
        //: return state;
        return state;
    }

    //: NSDictionary *dict = [[NTESSubscribeManager sharedManager] eventsForType:NIMSubscribeSystemEventTypeOnline];
    NSDictionary *dict = [[VideoManager date] unwelcome:NIMSubscribeSystemEventTypeOnline];
    //: NIMSubscribeEvent *event = [dict objectForKey:userId];
    NIMSubscribeEvent *event = [dict objectForKey:userId];
    //: NIMSubscribeOnlineInfo *info = event.subscribeInfo;
    NIMSubscribeOnlineInfo *info = event.subscribeInfo;
    //: if ([info isKindOfClass:[NIMSubscribeOnlineInfo class]] && info.senderClientTypes.count)
    if ([info isKindOfClass:[NIMSubscribeOnlineInfo class]] && info.senderClientTypes.count)
    {
        //: NIMLoginClientType client = [self resolveShowClientType:info.senderClientTypes];
        NIMLoginClientType client = [self resolveStateNature:info.senderClientTypes];

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
                state = [self date:ext brink:client option:detail];
            }
                //: break;
                break;

            //: default:
            default:
            {
                //: NSString *clientName = [self resolveOnlineClientName:client];
                NSString *clientName = [self temp:client];
                //: state = [NSString stringWithFormat:@"%@ %@", clientName, [FFFLanguageManager getTextWithKey:@"message_online"]];
                state = [NSString stringWithFormat:@"%@ %@", clientName, [BackgroundRandomAttribute content:[AdviserViewData userTeamFormat]]];
                //: break;
                break;
            }
        }
    }
    //: else
    else
    {
        //: state = @"离线".ntes_localized;
        state = @"离线".ting;
    }
    //: return state;
    return state;
}


//: + (NIMLoginClientType)resolveShowClientType:(NSArray *)senderClientTypes
+ (NIMLoginClientType)resolveStateNature:(NSArray *)senderClientTypes
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
+ (NSString *)temp:(NIMLoginClientType )client
{
    //: NSDictionary *formats = @{
    NSDictionary *formats = @{
                              //: @(NIMLoginClientTypePC) : @"PC",
                              @(NIMLoginClientTypePC) : @"PC",
                              //: @(NIMLoginClientTypemacOS) : @"Mac",
                              @(NIMLoginClientTypemacOS) : [AdviserViewData mIconUserName],
                              //: @(NIMLoginClientTypeiOS): @"iOS",
                              @(NIMLoginClientTypeiOS): [AdviserViewData show_couchMsg],
                              //: @(NIMLoginClientTypeAOS): @"Android",
                              @(NIMLoginClientTypeAOS): [AdviserViewData appVersionSessionKey],
                              //: @(NIMLoginClientTypeWeb): @"Web",
                              @(NIMLoginClientTypeWeb): [AdviserViewData mainSufferingPath],
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
+ (NSString *)date:(NSString *)ext brink:(NIMLoginClientType)client option:(BOOL)detail
{
    //: NSString *clientName = [self resolveOnlineClientName:client];
    NSString *clientName = [self temp:client];
    //: NSString *state = [NSString stringWithFormat:@"%@ %@",clientName,[FFFLanguageManager getTextWithKey:@"message_online"]];
    NSString *state = [NSString stringWithFormat:@"%@ %@",clientName,[BackgroundRandomAttribute content:[AdviserViewData userTeamFormat]]];//@"在线".ntes_localized
    //: NSDictionary *dict = [ext nimkit_jsonDict];
    NSDictionary *dict = [ext picture];
    //: if (dict) {
    if (dict) {

        //: NSString *netState = [[NTESDevice currentDevice] networkStatus:[dict jsonInteger:NTESSubscribeNetState]];
        NSString *netState = [[MemoryDevice color] yank:[dict successSelect:noti_videoUnitMsg]];
        //: NTESOnlineState onlineState = [dict jsonInteger:NTESSubscribeOnlineState];
        NTESOnlineState onlineState = [dict successSelect:kNamePath];
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
                    //: return [NSString stringWithFormat:@"%@ %@",clientName,[FFFLanguageManager getTextWithKey:@"message_online"]];
                    return [NSString stringWithFormat:@"%@ %@",clientName,[BackgroundRandomAttribute content:[AdviserViewData userTeamFormat]]];//@"在线".ntes_localized
                }
                //: else
                else
                {
                    //移动端在会话列表显示网络状态，在会话内（detail）优先显示端+网络状态
                    //: if (detail)
                    if (detail)
                    {
                        //: return [NSString stringWithFormat:@"%@ - %@ %@",clientName,netState,[FFFLanguageManager getTextWithKey:@"message_online"]];
                        return [NSString stringWithFormat:@"%@ - %@ %@",clientName,netState,[BackgroundRandomAttribute content:[AdviserViewData userTeamFormat]]];//@"在线".ntes_localized
                    }
                    //: else
                    else
                    {
                        //: return [NSString stringWithFormat:@"%@ %@",netState,[FFFLanguageManager getTextWithKey:@"message_online"]];
                        return [NSString stringWithFormat:@"%@ %@",netState,[BackgroundRandomAttribute content:[AdviserViewData userTeamFormat]]];//@"在线".ntes_localized
                    }
                }
            }
            //: case NTESOnlineStateBusy:
            case NTESOnlineStateBusy:
                //: return [FFFLanguageManager getTextWithKey:@"online_state_event_manager_on_line_busy"];
                return [BackgroundRandomAttribute content:[AdviserViewData showPromotionStr]];//@"忙碌".ntes_localized;
            //: case NTESOnlineStateLeave:
            case NTESOnlineStateLeave:
                //: return [FFFLanguageManager getTextWithKey:@"online_state_event_manager_off_line"];
                return [BackgroundRandomAttribute content:[AdviserViewData dream_outletSaleUrl]];//@"离开".ntes_localized;
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
+ (NSString *)successTeam:(NSError *)error
{
    //: NSString *message = [NSString stringWithFormat:@"%@ %@",[FFFLanguageManager getTextWithKey:@"login_failure"], error];
    NSString *message = [NSString stringWithFormat:@"%@ %@",[BackgroundRandomAttribute content:[AdviserViewData dream_textStr]], error];//,@"自动登录失败".ntes_localized
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
            //: message = [FFFLanguageManager getTextWithKey:@"please_try_again"];
            message = [BackgroundRandomAttribute content:[AdviserViewData notiMayTextKey]];//@"自动登录错误次数超限，请检查网络后重试".ntes_localized;
        }
    }
    //: else if([domain isEqualToString:NIMRemoteErrorDomain])
    else if([domain isEqualToString:NIMRemoteErrorDomain])
    {
        //: if (code == NIMRemoteErrorCodeInvalidPass)
        if (code == NIMRemoteErrorCodeInvalidPass)
        {
            //: message = [FFFLanguageManager getTextWithKey:@"wrong_password"];
            message = [BackgroundRandomAttribute content:[AdviserViewData appBiasValue]];//@"密码错误".ntes_localized;
        }
        //: else if(code == NIMRemoteErrorCodeExist)
        else if(code == NIMRemoteErrorCodeExist)
        {
            //: message = [FFFLanguageManager getTextWithKey:@"logged_another_device"];
            message = [BackgroundRandomAttribute content:[AdviserViewData app_ragePath]];//@"当前已经其他设备登录，请使用手动模式登录".ntes_localized;
        }
    }
    //: return message;
    return message;
}

//: @end
@end