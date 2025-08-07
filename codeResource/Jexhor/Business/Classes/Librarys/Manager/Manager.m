
#import <Foundation/Foundation.h>

@interface HemeAcknowledgeData : NSObject

+ (instancetype)sharedInstance;

//: mobile
@property (nonatomic, copy) NSString *dream_beastSessionValue;

//: UserPassWord
@property (nonatomic, copy) NSString *appColorObtainTitle;

//: msg
@property (nonatomic, copy) NSString *mainVoiceData;

//: account
@property (nonatomic, copy) NSString *m_mortalValue;

//: /user/register
@property (nonatomic, copy) NSString *dream_congressionalData;

//: gender
@property (nonatomic, copy) NSString *showElementaryValue;

//: UserAccount
@property (nonatomic, copy) NSString *show_gymContent;

//: question
@property (nonatomic, copy) NSString *kEmergencyValue;

//: register_avtivity3_register_fail
@property (nonatomic, copy) NSString *mainSuspectAloneText;

//: mobilecode
@property (nonatomic, copy) NSString *main_reasonName;

//: /user/smsregister
@property (nonatomic, copy) NSString *mColorData;

//: /user/ismustmobile
@property (nonatomic, copy) NSString *app_imageThreeTitle;

//: /validate/check_username_available
@property (nonatomic, copy) NSString *mBindText;

//: username
@property (nonatomic, copy) NSString *notiDrugText;

//: password
@property (nonatomic, copy) NSString *k_acceptableTitle;

//: client
@property (nonatomic, copy) NSString *show_boutData;

//: code
@property (nonatomic, copy) NSString *showBroContent;

//: answer
@property (nonatomic, copy) NSString *k_conditionValue;

//: head_default
@property (nonatomic, copy) NSString *main_pollutionData;

//: friend_verify_avtivity_net_error
@property (nonatomic, copy) NSString *user_pdaValue;

//: passwd
@property (nonatomic, copy) NSString *appResourceValue;

//: iOS
@property (nonatomic, copy) NSString *app_expectTitleData;

//: invitecode
@property (nonatomic, copy) NSString *mReadText;

//: RegistFinshNotification
@property (nonatomic, copy) NSString *user_silverName;

@end

@implementation HemeAcknowledgeData

+ (instancetype)sharedInstance {
    static HemeAcknowledgeData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)HemeAcknowledgeDataToCache:(Byte *)data {
    int remark = data[0];
    Byte personalOrganiser = data[1];
    int scaleValue = data[2];
    for (int i = scaleValue; i < scaleValue + remark; i++) {
        int value = data[i] + personalOrganiser;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[scaleValue + remark] = 0;
    return data + scaleValue;
}

- (NSString *)StringFromHemeAcknowledgeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HemeAcknowledgeDataToCache:data]];
}

//: invitecode
- (NSString *)mReadText {
    if (!_mReadText) {
        Byte value[] = {10, 59, 12, 113, 74, 29, 28, 200, 151, 255, 2, 35, 46, 51, 59, 46, 57, 42, 40, 52, 41, 42, 37};
        _mReadText = [self StringFromHemeAcknowledgeData:value];
    }
    return _mReadText;
}

//: /user/ismustmobile
- (NSString *)app_imageThreeTitle {
    if (!_app_imageThreeTitle) {
        Byte value[] = {18, 82, 3, 221, 35, 33, 19, 32, 221, 23, 33, 27, 35, 33, 34, 27, 29, 16, 23, 26, 19, 212};
        _app_imageThreeTitle = [self StringFromHemeAcknowledgeData:value];
    }
    return _app_imageThreeTitle;
}

//: mobile
- (NSString *)dream_beastSessionValue {
    if (!_dream_beastSessionValue) {
        Byte value[] = {6, 81, 10, 28, 214, 251, 135, 151, 120, 100, 28, 30, 17, 24, 27, 20, 117};
        _dream_beastSessionValue = [self StringFromHemeAcknowledgeData:value];
    }
    return _dream_beastSessionValue;
}

//: /user/register
- (NSString *)dream_congressionalData {
    if (!_dream_congressionalData) {
        Byte value[] = {14, 30, 12, 182, 68, 98, 5, 249, 119, 235, 134, 198, 17, 87, 85, 71, 84, 17, 84, 71, 73, 75, 85, 86, 71, 84, 82};
        _dream_congressionalData = [self StringFromHemeAcknowledgeData:value];
    }
    return _dream_congressionalData;
}

//: /user/smsregister
- (NSString *)mColorData {
    if (!_mColorData) {
        Byte value[] = {17, 31, 8, 51, 54, 218, 232, 107, 16, 86, 84, 70, 83, 16, 84, 78, 84, 83, 70, 72, 74, 84, 85, 70, 83, 71};
        _mColorData = [self StringFromHemeAcknowledgeData:value];
    }
    return _mColorData;
}

//: code
- (NSString *)showBroContent {
    if (!_showBroContent) {
        Byte value[] = {4, 49, 13, 23, 210, 172, 76, 91, 13, 255, 23, 142, 100, 50, 62, 51, 52, 129};
        _showBroContent = [self StringFromHemeAcknowledgeData:value];
    }
    return _showBroContent;
}

//: RegistFinshNotification
- (NSString *)user_silverName {
    if (!_user_silverName) {
        Byte value[] = {23, 88, 11, 187, 172, 204, 73, 122, 195, 68, 135, 250, 13, 15, 17, 27, 28, 238, 17, 22, 27, 16, 246, 23, 28, 17, 14, 17, 11, 9, 28, 17, 23, 22, 237};
        _user_silverName = [self StringFromHemeAcknowledgeData:value];
    }
    return _user_silverName;
}

//: username
- (NSString *)notiDrugText {
    if (!_notiDrugText) {
        Byte value[] = {8, 69, 9, 188, 249, 156, 146, 94, 90, 48, 46, 32, 45, 41, 28, 40, 32, 154};
        _notiDrugText = [self StringFromHemeAcknowledgeData:value];
    }
    return _notiDrugText;
}

//: gender
- (NSString *)showElementaryValue {
    if (!_showElementaryValue) {
        Byte value[] = {6, 3, 10, 71, 213, 235, 213, 69, 164, 121, 100, 98, 107, 97, 98, 111, 87};
        _showElementaryValue = [self StringFromHemeAcknowledgeData:value];
    }
    return _showElementaryValue;
}

//: msg
- (NSString *)mainVoiceData {
    if (!_mainVoiceData) {
        Byte value[] = {3, 74, 5, 185, 195, 35, 41, 29, 94};
        _mainVoiceData = [self StringFromHemeAcknowledgeData:value];
    }
    return _mainVoiceData;
}

//: /validate/check_username_available
- (NSString *)mBindText {
    if (!_mBindText) {
        Byte value[] = {34, 14, 3, 33, 104, 83, 94, 91, 86, 83, 102, 87, 33, 85, 90, 87, 85, 93, 81, 103, 101, 87, 100, 96, 83, 95, 87, 81, 83, 104, 83, 91, 94, 83, 84, 94, 87, 150};
        _mBindText = [self StringFromHemeAcknowledgeData:value];
    }
    return _mBindText;
}

//: mobilecode
- (NSString *)main_reasonName {
    if (!_main_reasonName) {
        Byte value[] = {10, 36, 9, 207, 156, 156, 81, 189, 31, 73, 75, 62, 69, 72, 65, 63, 75, 64, 65, 34};
        _main_reasonName = [self StringFromHemeAcknowledgeData:value];
    }
    return _main_reasonName;
}

//: client
- (NSString *)show_boutData {
    if (!_show_boutData) {
        Byte value[] = {6, 24, 12, 254, 113, 42, 253, 61, 57, 226, 199, 246, 75, 84, 81, 77, 86, 92, 235};
        _show_boutData = [self StringFromHemeAcknowledgeData:value];
    }
    return _show_boutData;
}

//: passwd
- (NSString *)appResourceValue {
    if (!_appResourceValue) {
        Byte value[] = {6, 93, 8, 187, 71, 173, 117, 56, 19, 4, 22, 22, 26, 7, 204};
        _appResourceValue = [self StringFromHemeAcknowledgeData:value];
    }
    return _appResourceValue;
}

//: head_default
- (NSString *)main_pollutionData {
    if (!_main_pollutionData) {
        Byte value[] = {12, 37, 6, 17, 169, 197, 67, 64, 60, 63, 58, 63, 64, 65, 60, 80, 71, 79, 177};
        _main_pollutionData = [self StringFromHemeAcknowledgeData:value];
    }
    return _main_pollutionData;
}

//: register_avtivity3_register_fail
- (NSString *)mainSuspectAloneText {
    if (!_mainSuspectAloneText) {
        Byte value[] = {32, 50, 4, 192, 64, 51, 53, 55, 65, 66, 51, 64, 45, 47, 68, 66, 55, 68, 55, 66, 71, 1, 45, 64, 51, 53, 55, 65, 66, 51, 64, 45, 52, 47, 55, 58, 24};
        _mainSuspectAloneText = [self StringFromHemeAcknowledgeData:value];
    }
    return _mainSuspectAloneText;
}

//: password
- (NSString *)k_acceptableTitle {
    if (!_k_acceptableTitle) {
        Byte value[] = {8, 73, 6, 133, 152, 78, 39, 24, 42, 42, 46, 38, 41, 27, 12};
        _k_acceptableTitle = [self StringFromHemeAcknowledgeData:value];
    }
    return _k_acceptableTitle;
}

//: question
- (NSString *)kEmergencyValue {
    if (!_kEmergencyValue) {
        Byte value[] = {8, 61, 6, 234, 186, 244, 52, 56, 40, 54, 55, 44, 50, 49, 122};
        _kEmergencyValue = [self StringFromHemeAcknowledgeData:value];
    }
    return _kEmergencyValue;
}

//: answer
- (NSString *)k_conditionValue {
    if (!_k_conditionValue) {
        Byte value[] = {6, 9, 8, 32, 186, 255, 107, 248, 88, 101, 106, 110, 92, 105, 110};
        _k_conditionValue = [self StringFromHemeAcknowledgeData:value];
    }
    return _k_conditionValue;
}

//: UserAccount
- (NSString *)show_gymContent {
    if (!_show_gymContent) {
        Byte value[] = {11, 55, 12, 98, 170, 109, 15, 195, 154, 167, 45, 102, 30, 60, 46, 59, 10, 44, 44, 56, 62, 55, 61, 144};
        _show_gymContent = [self StringFromHemeAcknowledgeData:value];
    }
    return _show_gymContent;
}

//: UserPassWord
- (NSString *)appColorObtainTitle {
    if (!_appColorObtainTitle) {
        Byte value[] = {12, 39, 3, 46, 76, 62, 75, 41, 58, 76, 76, 48, 72, 75, 61, 18};
        _appColorObtainTitle = [self StringFromHemeAcknowledgeData:value];
    }
    return _appColorObtainTitle;
}

//: friend_verify_avtivity_net_error
- (NSString *)user_pdaValue {
    if (!_user_pdaValue) {
        Byte value[] = {32, 1, 9, 151, 154, 139, 94, 106, 111, 101, 113, 104, 100, 109, 99, 94, 117, 100, 113, 104, 101, 120, 94, 96, 117, 115, 104, 117, 104, 115, 120, 94, 109, 100, 115, 94, 100, 113, 113, 110, 113, 231};
        _user_pdaValue = [self StringFromHemeAcknowledgeData:value];
    }
    return _user_pdaValue;
}

//: account
- (NSString *)m_mortalValue {
    if (!_m_mortalValue) {
        Byte value[] = {7, 61, 5, 159, 148, 36, 38, 38, 50, 56, 49, 55, 84};
        _m_mortalValue = [self StringFromHemeAcknowledgeData:value];
    }
    return _m_mortalValue;
}

//: iOS
- (NSString *)app_expectTitleData {
    if (!_app_expectTitleData) {
        Byte value[] = {3, 36, 7, 79, 241, 61, 159, 69, 43, 47, 253};
        _app_expectTitleData = [self StringFromHemeAcknowledgeData:value];
    }
    return _app_expectTitleData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  Manager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistConfigManager.h"
#import "Manager.h"

//: @interface NTESRegistConfigManager ()
@interface Manager ()
//: @property (nonatomic ,strong) UINavigationController *nav;
@property (nonatomic ,strong) UINavigationController *nav;
//: @end
@end

//: @implementation NTESRegistConfigManager
@implementation Manager

//: static NTESRegistConfigManager *shareConfigManager = nil;
static Manager *noti_kitName = nil;

//: + (NTESRegistConfigManager *)shareConfigManager {
+ (Manager *)managingDirector {
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (noti_kitName == nil) {
            //: shareConfigManager = [[NTESRegistConfigManager alloc] init];
            noti_kitName = [[Manager alloc] init];

            //: [shareConfigManager registDictDefault];
            [noti_kitName activityDefault];
        }
        //: return shareConfigManager;
        return noti_kitName;
    }
}

//: - (NSMutableDictionary *)registDictDefault{
- (NSMutableDictionary *)activityDefault{
    //: [NTESRegistConfigManager shareConfigManager].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    [Manager managingDirector].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: NSMutableDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSMutableDictionary *dict = [Manager managingDirector].registDict;
    //: [dict setObject:@"iOS" forKey:@"client"];
    [dict setObject:[HemeAcknowledgeData sharedInstance].app_expectTitleData forKey:[HemeAcknowledgeData sharedInstance].show_boutData];
    //: [dict setObject:@"" forKey:@"invitecode"];
    [dict setObject:@"" forKey:[HemeAcknowledgeData sharedInstance].mReadText];
    //: [dict setObject:@"" forKey:@"mobilecode"];
    [dict setObject:@"" forKey:[HemeAcknowledgeData sharedInstance].main_reasonName];
    //: [dict setObject:@"" forKey:@"question"];
    [dict setObject:@"" forKey:[HemeAcknowledgeData sharedInstance].kEmergencyValue];
    //: [dict setObject:@"" forKey:@"answer"];
    [dict setObject:@"" forKey:[HemeAcknowledgeData sharedInstance].k_conditionValue];
    //: [dict setObject:@"1" forKey:@"gender"];
    [dict setObject:@"1" forKey:[HemeAcknowledgeData sharedInstance].showElementaryValue];

    //: return [NTESRegistConfigManager shareConfigManager].registDict;
    return [Manager managingDirector].registDict;
}

//: + (void)refreshRegistConfig{
+ (void)configDate{

    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [TitleManager bringHome:[NSString stringWithFormat:[HemeAcknowledgeData sharedInstance].app_imageThreeTitle] militaryQuarters:nil comment:NO shareFailed:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } time:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL sucess, NSString * msg))complete {
+ (void)by:(NSString *)name account:(NSString *)pd unneededImage:(void(^)(BOOL sucess, NSString * msg))complete {

    //#define Server_first_regist_config    [NSString stringWithFormat:@"%@/api/validate/check_username_available",[AccountWith sharedConfig].domainURL]
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/validate/check_username_available"] params:@{@"username":name , @"passwd":pd } isShow:NO success:^(id responseObject) {
    [TitleManager bringHome:[NSString stringWithFormat:[HemeAcknowledgeData sharedInstance].mBindText] militaryQuarters:@{[HemeAcknowledgeData sharedInstance].notiDrugText:name , [HemeAcknowledgeData sharedInstance].appResourceValue:pd } comment:NO shareFailed:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict route:[HemeAcknowledgeData sharedInstance].showBroContent];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict route:[HemeAcknowledgeData sharedInstance].mainVoiceData];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: !complete ? : complete(YES,msg);
            !complete ? : complete(YES,msg);
        //: } else {
        } else {
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD text:msg];
            //: !complete ? : complete(NO,msg);
            !complete ? : complete(NO,msg);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } time:^(id responseObject, NSError *error) {
        //: !complete ? : complete(NO,[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]);
        !complete ? : complete(NO,[InputRed preserve:[HemeAcknowledgeData sharedInstance].user_pdaValue]);
    //: }];
    }];
}


//: + (void)sendRegistRequest:(UINavigationController *)nav{
+ (void)regist:(UINavigationController *)nav{

    //: [NTESRegistConfigManager shareConfigManager].nav = nav;
    [Manager managingDirector].nav = nav;
    //: NSString *ismustmobile = [NIMUserDefaults standardUserDefaults].ismustmobile;
    NSString *ismustmobile = [SessionRecord afterUser].ismustmobile;//是否手机

    //: if ([NTESRegistConfigManager shareConfigManager].headerImage == nil) {
    if ([Manager managingDirector].headerImage == nil) {//默认头像
        //: [NTESRegistConfigManager shareConfigManager].headerImage = [UIImage imageNamed:@"head_default"];
        [Manager managingDirector].headerImage = [UIImage imageNamed:[HemeAcknowledgeData sharedInstance].main_pollutionData];
    }

    //: if (ismustmobile.integerValue > 0) {
    if (ismustmobile.integerValue > 0) {
        //: [[NTESRegistConfigManager shareConfigManager] mobileRegist];
        [[Manager managingDirector] draft];
    //: }else{
    }else{
        //: [[NTESRegistConfigManager shareConfigManager] accountRegist];
        [[Manager managingDirector] enable];

    }

}

//: -(void)mobileRegist{
-(void)draft{

    //: NSString *account = [[NTESRegistConfigManager shareConfigManager].registDict newStringValueForKey:@"account"];
    NSString *account = [[Manager managingDirector].registDict route:[HemeAcknowledgeData sharedInstance].m_mortalValue];
    //: [[NTESRegistConfigManager shareConfigManager].registDict setObject:account forKey:@"mobile"];
    [[Manager managingDirector].registDict setObject:account forKey:[HemeAcknowledgeData sharedInstance].dream_beastSessionValue];

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [Manager managingDirector].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [Manager managingDirector].headerImage;

    //: if (!image) {
    if (!image) {

        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/smsregister"] parameters:dict images:@[UIImageJPEGRepresentation(image, 0.3)] progress:^(NSProgress *progress) {
        [TitleManager along:[NSString stringWithFormat:[HemeAcknowledgeData sharedInstance].mColorData] name:dict scale:@[UIImageJPEGRepresentation(image, 0.3)] barHttpProgress:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } sessionMyInfo:^(id responseObject) {
            //: NSLog(@"%@",responseObject);
            //: [self.nav popToRootViewControllerAnimated:YES];
            [self.nav popToRootViewControllerAnimated:YES];


        //: } failed:^(id responseObject, NSError *error) {
        } forwardingUploadStreetwiseLastShowParametersSuccessBubble:^(id responseObject, NSError *error) {
            //: NSLog(@"%@",error);

        //: }];
        }];
    //: }else{
    }else{
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/smsregister"] params:dict isShow:YES success:^(id responseObject) {
        [TitleManager exhibitBackground:[NSString stringWithFormat:[HemeAcknowledgeData sharedInstance].mColorData] queryedBlockOf:dict managerToObject:YES presentResponseSuccess:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict route:[HemeAcknowledgeData sharedInstance].showBroContent];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict route:[HemeAcknowledgeData sharedInstance].mainVoiceData];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD text:msg];
            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];

                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: [notiDict setObject:[dict newStringValueForKey:@"account"] ? :@"" forKey:@"UserAccount"];
                [notiDict setObject:[dict route:[HemeAcknowledgeData sharedInstance].m_mortalValue] ? :@"" forKey:[HemeAcknowledgeData sharedInstance].show_gymContent];
                //: [notiDict setObject:[dict newStringValueForKey:@"password"] ? :@"" forKey:@"UserPassWord"];
                [notiDict setObject:[dict route:[HemeAcknowledgeData sharedInstance].k_acceptableTitle] ? :@"" forKey:[HemeAcknowledgeData sharedInstance].appColorObtainTitle];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[HemeAcknowledgeData sharedInstance].user_silverName object:notiDict];


            }
        //: } failed:^(id responseObject, NSError *error) {
        } jump:^(id responseObject, NSError *error) {

        //: }];
        }];
    }


}

//: -(void)accountRegist{
-(void)enable{

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [Manager managingDirector].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [Manager managingDirector].headerImage;
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image byName:CGSizeMake(150, 150)];

    //: if (image) {
    if (image) {
        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/register"] parameters:dict images:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] progress:^(NSProgress *progress) {
        [TitleManager along:[NSString stringWithFormat:[HemeAcknowledgeData sharedInstance].dream_congressionalData] name:dict scale:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] barHttpProgress:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } sessionMyInfo:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict route:[HemeAcknowledgeData sharedInstance].showBroContent];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict route:[HemeAcknowledgeData sharedInstance].mainVoiceData];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD text:msg];

            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];
                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: NSString *mobile = [dict newStringValueForKey:@"mobile"] ? :@"";
                NSString *mobile = [dict route:[HemeAcknowledgeData sharedInstance].dream_beastSessionValue] ? :@"";
                //: NSString *account = [dict newStringValueForKey:@"account"] ? :@"";
                NSString *account = [dict route:[HemeAcknowledgeData sharedInstance].m_mortalValue] ? :@"";
                //: NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                //: NSString *UserPassWord = [dict newStringValueForKey:@"password"] ? :@"";
                NSString *UserPassWord = [dict route:[HemeAcknowledgeData sharedInstance].k_acceptableTitle] ? :@"";
                //: [notiDict setObject:UserAccount forKey:@"UserAccount"];
                [notiDict setObject:UserAccount forKey:[HemeAcknowledgeData sharedInstance].show_gymContent];
                //: [notiDict setObject:UserPassWord forKey:@"UserPassWord"];
                [notiDict setObject:UserPassWord forKey:[HemeAcknowledgeData sharedInstance].appColorObtainTitle];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[HemeAcknowledgeData sharedInstance].user_silverName object:notiDict];
            }

        //: } failed:^(id responseObject, NSError *error) {
        } forwardingUploadStreetwiseLastShowParametersSuccessBubble:^(id responseObject, NSError *error) {
            //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"register_avtivity3_register_fail"]];
            [SVProgressHUD text:[InputRed preserve:[HemeAcknowledgeData sharedInstance].mainSuspectAloneText]];

        //: }];
        }];
    }
}

//: @end
@end