
#import <Foundation/Foundation.h>

@interface HarkData : NSObject

@end

@implementation HarkData

+ (Byte *)HarkDataToCache:(Byte *)data {
    int administrativeDistrictMessage = data[0];
    int twinStructural = data[1];
    for (int i = 0; i < administrativeDistrictMessage / 2; i++) {
        int begin = twinStructural + i;
        int end = twinStructural + administrativeDistrictMessage - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[twinStructural + administrativeDistrictMessage] = 0;
    return data + twinStructural;
}

+ (NSString *)StringFromHarkData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HarkDataToCache:data]];
}  

//: 选择会话类型
+ (NSString *)appSchoolData {
    /* static */ NSString *appSchoolData = nil;
    if (!appSchoolData) {
        Byte value[] = {18, 11, 25, 170, 207, 216, 31, 230, 79, 154, 200, 139, 158, 229, 187, 177, 231, 157, 175, 232, 154, 188, 228, 169, 139, 230, 137, 128, 233, 194};
        appSchoolData = [self StringFromHarkData:value];
    }
    return appSchoolData;
}

//: message_super_team
+ (NSString *)noti_existingData {
    /* static */ NSString *noti_existingData = nil;
    if (!noti_existingData) {
        Byte value[] = {18, 11, 115, 154, 93, 95, 89, 232, 255, 54, 48, 109, 97, 101, 116, 95, 114, 101, 112, 117, 115, 95, 101, 103, 97, 115, 115, 101, 109, 141};
        noti_existingData = [self StringFromHarkData:value];
    }
    return noti_existingData;
}

//: watch_multiretweet_activity_person
+ (NSString *)appCareName {
    /* static */ NSString *appCareName = nil;
    if (!appCareName) {
        Byte value[] = {34, 12, 155, 230, 93, 35, 91, 85, 68, 153, 5, 164, 110, 111, 115, 114, 101, 112, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 116, 101, 101, 119, 116, 101, 114, 105, 116, 108, 117, 109, 95, 104, 99, 116, 97, 119, 181};
        appCareName = [self StringFromHarkData:value];
    }
    return appCareName;
}

//: 确认转发
+ (NSString *)mIncidentName {
    /* static */ NSString *mIncidentName = nil;
    if (!mIncidentName) {
        Byte value[] = {12, 2, 145, 143, 229, 172, 189, 232, 164, 174, 232, 174, 161, 231, 50};
        mIncidentName = [self StringFromHarkData:value];
    }
    return mIncidentName;
}

//: %@.code:%zd
+ (NSString *)kEnrollText {
    /* static */ NSString *kEnrollText = nil;
    if (!kEnrollText) {
        Byte value[] = {11, 6, 40, 152, 75, 112, 100, 122, 37, 58, 101, 100, 111, 99, 46, 64, 37, 77};
        kEnrollText = [self StringFromHarkData:value];
    }
    return kEnrollText;
}

//: contact_fragment_group
+ (NSString *)dream_remarkSteadCountText {
    /* static */ NSString *dream_remarkSteadCountText = nil;
    if (!dream_remarkSteadCountText) {
        Byte value[] = {22, 8, 75, 148, 225, 23, 131, 182, 112, 117, 111, 114, 103, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 116, 99, 97, 116, 110, 111, 99, 238};
        dream_remarkSteadCountText = [self StringFromHarkData:value];
    }
    return dream_remarkSteadCountText;
}

//: 确认转发给
+ (NSString *)noti_progressiveData {
    /* static */ NSString *noti_progressiveData = nil;
    if (!noti_progressiveData) {
        Byte value[] = {15, 7, 235, 97, 35, 37, 27, 153, 187, 231, 145, 143, 229, 172, 189, 232, 164, 174, 232, 174, 161, 231, 34};
        noti_progressiveData = [self StringFromHarkData:value];
    }
    return noti_progressiveData;
}

//: 转发失败
+ (NSString *)m_acceptanceData {
    /* static */ NSString *m_acceptanceData = nil;
    if (!m_acceptanceData) {
        Byte value[] = {12, 7, 18, 246, 97, 46, 222, 165, 180, 232, 177, 164, 229, 145, 143, 229, 172, 189, 232, 154};
        m_acceptanceData = [self StringFromHarkData:value];
    }
    return m_acceptanceData;
}

//: contact_tag_fragment_cancel
+ (NSString *)dreamFashionedName {
    /* static */ NSString *dreamFashionedName = nil;
    if (!dreamFashionedName) {
        Byte value[] = {27, 5, 109, 173, 104, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 251};
        dreamFashionedName = [self StringFromHarkData:value];
    }
    return dreamFashionedName;
}

//: 已发送
+ (NSString *)kPossessionTitle {
    /* static */ NSString *kPossessionTitle = nil;
    if (!kPossessionTitle) {
        Byte value[] = {9, 10, 134, 70, 136, 179, 229, 183, 68, 37, 129, 128, 233, 145, 143, 229, 178, 183, 229, 188};
        kPossessionTitle = [self StringFromHarkData:value];
    }
    return kPossessionTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  WithUimanager.m
// MessageContent
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFChatUIManager.h"
#import "WithUimanager.h"
//: #import "FFFContactSelectConfig.h"
#import "TitleConfig.h"
//: #import "FFFContactSelectViewController.h"
#import "CompartmentViewController.h"
//: #import "FFFKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "UIView+FFFToast.h"
#import "UIView+Factor.h"

//: @implementation FFFChatUIManager
@implementation WithUimanager

//: + (instancetype)sharedManager
+ (instancetype)ting
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static FFFChatUIManager *instance;
    static WithUimanager *instance;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [self.alloc init];
        instance = [self.alloc init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (void)forwardMessage:(NIMMessage *)message fromViewController:(UIViewController *)fromVC
- (void)cell:(NIMMessage *)message media:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[FFFLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[InputRed preserve:[HarkData appSchoolData]] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[InputRed preserve:[HarkData appCareName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        RecentMessage *config = [[RecentMessage alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self hatred:message session:session imageWith:fromVC];
        //: };
        };
        //: [vc show];
        [vc high];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[InputRed preserve:[HarkData dream_remarkSteadCountText]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        MagnitudeRecord *config = [[MagnitudeRecord alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self hatred:message session:session imageWith:fromVC];
        //: };
        };
        //: [vc show];
        [vc high];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[InputRed preserve:[HarkData noti_existingData]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        MagnitudeRecord *config = [[MagnitudeRecord alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: FFFContactSelectViewController *vc = [[FFFContactSelectViewController alloc] initWithConfig:config];
        CompartmentViewController *vc = [[CompartmentViewController alloc] initWithStateAtPull:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self hatred:message session:session imageWith:fromVC];
        //: };
        };
        //: [vc show];
        [vc high];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[InputRed preserve:[HarkData dreamFashionedName]] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)hatred:(NIMMessage *)message session:(NIMSession *)session imageWith:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[MessageContent secretResolution] recent:session.sessionId blue:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[MessageContent secretResolution] info:session.sessionId comment:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[MessageContent secretResolution] item:session.sessionId pit:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString([HarkData noti_progressiveData], nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString([HarkData mIncidentName], nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确认", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NSError *error = nil;
        NSError *error = nil;
        //: if (message.session) {
        if (message.session) {
            //: [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager forwardMessage:message toSession:session error:&error];
        //: } else {
        } else {
            //: [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
            [[NIMSDK sharedSDK].chatManager sendMessage:message toSession:session error:&error];
        }
        //: if (error) {
        if (error) {
            //: NSString *errorMessage = [NSString stringWithFormat:@"%@.code:%zd", NSLocalizedString(@"转发失败", nil), error.code];
            NSString *errorMessage = [NSString stringWithFormat:[HarkData kEnrollText], NSLocalizedString([HarkData m_acceptanceData], nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view collection:errorMessage text:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view collection:NSLocalizedString([HarkData kPossessionTitle], nil) text:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end