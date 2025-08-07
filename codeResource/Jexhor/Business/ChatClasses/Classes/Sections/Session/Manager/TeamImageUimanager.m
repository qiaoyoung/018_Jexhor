
#import <Foundation/Foundation.h>
typedef struct {
    Byte imageConstrain;
    Byte *ironical;
    unsigned int filing;
    Byte launch;
	int doingd;
	int shipboard;
	int collarMay;
} ActiveData;

NSString *StringFromActiveData(ActiveData *data);


//: message_super_team
ActiveData user_cageFormat = (ActiveData){109, (Byte []){0, 8, 30, 30, 12, 10, 8, 50, 30, 24, 29, 8, 31, 50, 25, 8, 12, 0, 170}, 18, 244, 166, 94, 12};

//: 确认转发
ActiveData main_buttFormat = (ActiveData){148, (Byte []){115, 53, 58, 124, 58, 48, 124, 41, 56, 113, 27, 5, 54}, 12, 224, 229, 87, 186};

//: 已发送
ActiveData mainFactData = (ActiveData){227, (Byte []){6, 84, 81, 6, 108, 114, 10, 99, 98, 83}, 9, 179, 208, 206, 169};

//: 选择会话类型
ActiveData notiEconomicTheaterStr = (ActiveData){67, (Byte []){170, 195, 202, 165, 200, 234, 167, 255, 217, 171, 236, 222, 164, 242, 248, 166, 221, 200, 216}, 18, 189, 12, 203, 246};

//: contact_fragment_group
ActiveData mainRequirementValue = (ActiveData){142, (Byte []){237, 225, 224, 250, 239, 237, 250, 209, 232, 252, 239, 233, 227, 235, 224, 250, 209, 233, 252, 225, 251, 254, 65}, 22, 154, 165, 229, 242};

//: watch_multiretweet_activity_person
ActiveData mainScapeMessage = (ActiveData){36, (Byte []){83, 69, 80, 71, 76, 123, 73, 81, 72, 80, 77, 86, 65, 80, 83, 65, 65, 80, 123, 69, 71, 80, 77, 82, 77, 80, 93, 123, 84, 65, 86, 87, 75, 74, 150}, 34, 194, 64, 31, 9};

//: 转发失败
ActiveData app_biasDirectorIdent = (ActiveData){127, (Byte []){151, 194, 211, 154, 240, 238, 154, 219, 206, 151, 203, 218, 50}, 12, 214, 132, 68, 102};

//: 确认转发给
ActiveData dreamCompromiseText = (ActiveData){143, (Byte []){104, 46, 33, 103, 33, 43, 103, 50, 35, 106, 0, 30, 104, 52, 22, 8}, 15, 191, 166, 190, 125};

//: contact_tag_fragment_cancel
ActiveData showGovernShootFormat = (ActiveData){202, (Byte []){169, 165, 164, 190, 171, 169, 190, 149, 190, 171, 173, 149, 172, 184, 171, 173, 167, 175, 164, 190, 149, 169, 171, 164, 169, 175, 166, 6}, 27, 167, 64, 81, 188};

//: %@.code:%zd
ActiveData userStormMsg = (ActiveData){36, (Byte []){1, 100, 10, 71, 75, 64, 65, 30, 1, 94, 64, 248}, 11, 224, 77, 83, 183};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamImageUimanager.m
// Secret
//
//  Created by 丁文超 on 2020/3/19.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushChatUIManager.h"
#import "TeamImageUimanager.h"
//: #import "PushContactSelectConfig.h"
#import "ReadConfig.h"
//: #import "PushContactSelectViewController.h"
#import "SwitchlyViewController.h"
//: #import "PushKitInfoFetchOption.h"
#import "AttributeQuantityOption.h"
//: #import "UIView+PushToast.h"
#import "UIView+Task.h"

//: @implementation PushChatUIManager
@implementation TeamImageUimanager

//: + (instancetype)sharedManager
+ (instancetype)cell
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static PushChatUIManager *instance;
    static TeamImageUimanager *instance;
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
- (void)infoController:(NIMMessage *)message value:(UIViewController *)fromVC
{
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[PushLanguageManager getTextWithKey:@"选择会话类型"] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[BackgroundRandomAttribute content:StringFromActiveData(&notiEconomicTheaterStr)] message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"watch_multiretweet_activity_person"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:StringFromActiveData(&mainScapeMessage)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactFriendSelectConfig *config = [[NIMContactFriendSelectConfig alloc] init];
        CheckedConfig *config = [[CheckedConfig alloc] init];
        //: config.needMutiSelected = NO;
        config.needMutiSelected = NO;
        //: PushContactSelectViewController *vc = [[PushContactSelectViewController alloc] initWithConfig:config];
        SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *userId = array.firstObject;
            NSString *userId = array.firstObject;
            //: NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            NIMSession *session = [NIMSession session:userId type:NIMSessionTypeP2P];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self with:message item:session index:fromVC];
        //: };
        };
        //: [vc show];
        [vc metadata];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"contact_fragment_group"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:StringFromActiveData(&mainRequirementValue)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        MessageConfig *config = [[MessageConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeNomal;
        config.teamType = NIMKitTeamTypeNomal;
        //: PushContactSelectViewController *vc = [[PushContactSelectViewController alloc] initWithConfig:config];
        SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self with:message item:session index:fromVC];
        //: };
        };
        //: [vc show];
        [vc metadata];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"message_super_team"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
    [alertController addAction:[UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:StringFromActiveData(&user_cageFormat)] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        //: NIMContactTeamSelectConfig *config = [[NIMContactTeamSelectConfig alloc] init];
        MessageConfig *config = [[MessageConfig alloc] init];
        //: config.teamType = NIMKitTeamTypeSuper;
        config.teamType = NIMKitTeamTypeSuper;
        //: PushContactSelectViewController *vc = [[PushContactSelectViewController alloc] initWithConfig:config];
        SwitchlyViewController *vc = [[SwitchlyViewController alloc] initWithBarBottom:config];
        //: vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
        vc.finshBlock = ^(NSArray *array, NSString *name, UIImage *avater){
            //: NSString *teamId = array.firstObject;
            NSString *teamId = array.firstObject;
            //: NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            NIMSession *session = [NIMSession session:teamId type:NIMSessionTypeSuperTeam];
            //: [self forwardMessage:message toSession:session fromViewController:fromVC];
            [self with:message item:session index:fromVC];
        //: };
        };
        //: [vc show];
        [vc metadata];
    //: }]];
    }]];
    //: [alertController addAction:[UIAlertAction actionWithTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:nil]];
    [alertController addAction:[UIAlertAction actionWithTitle:[BackgroundRandomAttribute content:StringFromActiveData(&showGovernShootFormat)] style:UIAlertActionStyleCancel handler:nil]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: - (void)forwardMessage:(NIMMessage *)message toSession:(NIMSession *)session fromViewController:(UIViewController *)fromVC
- (void)with:(NIMMessage *)message item:(NIMSession *)session index:(UIViewController *)fromVC
{
    //: NSString *name;
    NSString *name;
    //: if (session.sessionType == NIMSessionTypeP2P) {
    if (session.sessionType == NIMSessionTypeP2P) {
        //: PushKitInfoFetchOption *option = [[PushKitInfoFetchOption alloc] init];
        AttributeQuantityOption *option = [[AttributeQuantityOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: name = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option].showName;
        name = [[Secret highlight] infoAndStraddleOption:session.sessionId item:option].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeTeam) {
    else if (session.sessionType == NIMSessionTypeTeam) {
        //: name = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil].showName;
        name = [[Secret highlight] show:session.sessionId corner:nil].showName;
    }
    //: else if (session.sessionType == NIMSessionTypeSuperTeam) {
    else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: name = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil].showName;
        name = [[Secret highlight] of:session.sessionId enableence_strong:nil].showName;
    }
    //: NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(@"确认转发给", nil), name];
    NSString *tip = [NSString stringWithFormat:@"%@ %@ ?", NSLocalizedString(StringFromActiveData(&dreamCompromiseText), nil), name];
    //: UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"确认转发", nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(StringFromActiveData(&main_buttFormat), nil) message:tip preferredStyle:UIAlertControllerStyleAlert];
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
            NSString *errorMessage = [NSString stringWithFormat:StringFromActiveData(&userStormMsg), NSLocalizedString(StringFromActiveData(&app_biasDirectorIdent), nil), error.code];
            //: [fromVC.view nim_showToast:errorMessage duration:2.0];
            [fromVC.view title:errorMessage colorOnFloat:2.0];
        //: } else {
        } else {
            //: [fromVC.view nim_showToast:NSLocalizedString(@"已发送", nil) duration:2.0];
            [fromVC.view title:NSLocalizedString(StringFromActiveData(&mainFactData), nil) colorOnFloat:2.0];
        }
    //: }]];
    }]];
    //: [fromVC presentViewController:alertController animated:YES completion:nil];
    [fromVC presentViewController:alertController animated:YES completion:nil];
}

//: @end
@end

Byte *ActiveDataToByte(ActiveData *data) {
    if (data->launch < 137) return data->ironical;
    for (int i = 0; i < data->filing; i++) {
        data->ironical[i] ^= data->imageConstrain;
    }
    data->ironical[data->filing] = 0;
    data->launch = 74;
	if (data->filing >= 3) {
		data->doingd = data->ironical[0];
		data->shipboard = data->ironical[1];
		data->collarMay = data->ironical[2];
	}
    return data->ironical;
}

NSString *StringFromActiveData(ActiveData *data) {
    return [NSString stringWithUTF8String:(char *)ActiveDataToByte(data)];
}
