
#import <Foundation/Foundation.h>

@interface CourtData : NSObject

+ (instancetype)sharedInstance;

//: invitecode
@property (nonatomic, copy) NSString *notiPractitionerData;

//: UserAccount
@property (nonatomic, copy) NSString *k_distinctionId;

//: iOS
@property (nonatomic, copy) NSString *kBlueUrl;

//: answer
@property (nonatomic, copy) NSString *notiTheoreticFormat;

//: friend_verify_avtivity_net_error
@property (nonatomic, copy) NSString *noti_chartText;

//: UserPassWord
@property (nonatomic, copy) NSString *notiShootMessage;

//: msg
@property (nonatomic, copy) NSString *noti_viewConductNameKey;

//: head_default
@property (nonatomic, copy) NSString *k_modestUrl;

//: account
@property (nonatomic, copy) NSString *app_iconOutletData;

//: username
@property (nonatomic, copy) NSString *appRockContent;

//: /user/ismustmobile
@property (nonatomic, copy) NSString *user_goingTitle;

//: question
@property (nonatomic, copy) NSString *show_affairKey;

//: passwd
@property (nonatomic, copy) NSString *k_importanceUrl;

//: gender
@property (nonatomic, copy) NSString *k_holderPath;

//: code
@property (nonatomic, copy) NSString *mainSizeUrl;

//: /user/register
@property (nonatomic, copy) NSString *appStemWipeFormat;

//: client
@property (nonatomic, copy) NSString *notiStorageId;

//: /validate/check_username_available
@property (nonatomic, copy) NSString *userResentTitle;

//: register_avtivity3_register_fail
@property (nonatomic, copy) NSString *noti_generallyName;

//: mobilecode
@property (nonatomic, copy) NSString *kDisappointedPath;

//: RegistFinshNotification
@property (nonatomic, copy) NSString *m_equateName;

//: mobile
@property (nonatomic, copy) NSString *m_littleName;

//: /user/smsregister
@property (nonatomic, copy) NSString *dream_sodValue;

//: password
@property (nonatomic, copy) NSString *m_generallyBandName;

@end

@implementation CourtData

+ (instancetype)sharedInstance {
    static CourtData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CourtDataToCache:(Byte *)data {
    int seize = data[0];
    Byte his = data[1];
    int circumference = data[2];
    for (int i = circumference; i < circumference + seize; i++) {
        int value = data[i] + his;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[circumference + seize] = 0;
    return data + circumference;
}

- (NSString *)StringFromCourtData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CourtDataToCache:data]];
}

//: head_default
- (NSString *)k_modestUrl {
    if (!_k_modestUrl) {
        Byte value[] = {12, 58, 6, 18, 136, 88, 46, 43, 39, 42, 37, 42, 43, 44, 39, 59, 50, 58, 183};
        _k_modestUrl = [self StringFromCourtData:value];
    }
    return _k_modestUrl;
}

//: /user/ismustmobile
- (NSString *)user_goingTitle {
    if (!_user_goingTitle) {
        Byte value[] = {18, 59, 4, 75, 244, 58, 56, 42, 55, 244, 46, 56, 50, 58, 56, 57, 50, 52, 39, 46, 49, 42, 18};
        _user_goingTitle = [self StringFromCourtData:value];
    }
    return _user_goingTitle;
}

//: passwd
- (NSString *)k_importanceUrl {
    if (!_k_importanceUrl) {
        Byte value[] = {6, 41, 4, 178, 71, 56, 74, 74, 78, 59, 2};
        _k_importanceUrl = [self StringFromCourtData:value];
    }
    return _k_importanceUrl;
}

//: register_avtivity3_register_fail
- (NSString *)noti_generallyName {
    if (!_noti_generallyName) {
        Byte value[] = {32, 94, 6, 26, 232, 10, 20, 7, 9, 11, 21, 22, 7, 20, 1, 3, 24, 22, 11, 24, 11, 22, 27, 213, 1, 20, 7, 9, 11, 21, 22, 7, 20, 1, 8, 3, 11, 14, 196};
        _noti_generallyName = [self StringFromCourtData:value];
    }
    return _noti_generallyName;
}

//: /validate/check_username_available
- (NSString *)userResentTitle {
    if (!_userResentTitle) {
        Byte value[] = {34, 74, 4, 93, 229, 44, 23, 34, 31, 26, 23, 42, 27, 229, 25, 30, 27, 25, 33, 21, 43, 41, 27, 40, 36, 23, 35, 27, 21, 23, 44, 23, 31, 34, 23, 24, 34, 27, 49};
        _userResentTitle = [self StringFromCourtData:value];
    }
    return _userResentTitle;
}

//: iOS
- (NSString *)kBlueUrl {
    if (!_kBlueUrl) {
        Byte value[] = {3, 88, 6, 134, 120, 184, 17, 247, 251, 118};
        _kBlueUrl = [self StringFromCourtData:value];
    }
    return _kBlueUrl;
}

//: invitecode
- (NSString *)notiPractitionerData {
    if (!_notiPractitionerData) {
        Byte value[] = {10, 32, 8, 45, 50, 172, 5, 46, 73, 78, 86, 73, 84, 69, 67, 79, 68, 69, 12};
        _notiPractitionerData = [self StringFromCourtData:value];
    }
    return _notiPractitionerData;
}

//: RegistFinshNotification
- (NSString *)m_equateName {
    if (!_m_equateName) {
        Byte value[] = {23, 18, 9, 44, 210, 39, 135, 117, 212, 64, 83, 85, 87, 97, 98, 52, 87, 92, 97, 86, 60, 93, 98, 87, 84, 87, 81, 79, 98, 87, 93, 92, 26};
        _m_equateName = [self StringFromCourtData:value];
    }
    return _m_equateName;
}

//: gender
- (NSString *)k_holderPath {
    if (!_k_holderPath) {
        Byte value[] = {6, 49, 13, 121, 236, 44, 182, 94, 128, 247, 90, 214, 207, 54, 52, 61, 51, 52, 65, 3};
        _k_holderPath = [self StringFromCourtData:value];
    }
    return _k_holderPath;
}

//: friend_verify_avtivity_net_error
- (NSString *)noti_chartText {
    if (!_noti_chartText) {
        Byte value[] = {32, 20, 3, 82, 94, 85, 81, 90, 80, 75, 98, 81, 94, 85, 82, 101, 75, 77, 98, 96, 85, 98, 85, 96, 101, 75, 90, 81, 96, 75, 81, 94, 94, 91, 94, 182};
        _noti_chartText = [self StringFromCourtData:value];
    }
    return _noti_chartText;
}

//: question
- (NSString *)show_affairKey {
    if (!_show_affairKey) {
        Byte value[] = {8, 81, 5, 216, 169, 32, 36, 20, 34, 35, 24, 30, 29, 32};
        _show_affairKey = [self StringFromCourtData:value];
    }
    return _show_affairKey;
}

//: UserAccount
- (NSString *)k_distinctionId {
    if (!_k_distinctionId) {
        Byte value[] = {11, 78, 9, 116, 102, 243, 3, 213, 164, 7, 37, 23, 36, 243, 21, 21, 33, 39, 32, 38, 247};
        _k_distinctionId = [self StringFromCourtData:value];
    }
    return _k_distinctionId;
}

//: mobile
- (NSString *)m_littleName {
    if (!_m_littleName) {
        Byte value[] = {6, 96, 4, 81, 13, 15, 2, 9, 12, 5, 124};
        _m_littleName = [self StringFromCourtData:value];
    }
    return _m_littleName;
}

//: code
- (NSString *)mainSizeUrl {
    if (!_mainSizeUrl) {
        Byte value[] = {4, 6, 6, 8, 159, 218, 93, 105, 94, 95, 70};
        _mainSizeUrl = [self StringFromCourtData:value];
    }
    return _mainSizeUrl;
}

//: username
- (NSString *)appRockContent {
    if (!_appRockContent) {
        Byte value[] = {8, 63, 12, 140, 146, 253, 76, 28, 67, 38, 206, 135, 54, 52, 38, 51, 47, 34, 46, 38, 6};
        _appRockContent = [self StringFromCourtData:value];
    }
    return _appRockContent;
}

//: msg
- (NSString *)noti_viewConductNameKey {
    if (!_noti_viewConductNameKey) {
        Byte value[] = {3, 95, 12, 252, 175, 106, 227, 95, 245, 169, 117, 195, 14, 20, 8, 123};
        _noti_viewConductNameKey = [self StringFromCourtData:value];
    }
    return _noti_viewConductNameKey;
}

//: answer
- (NSString *)notiTheoreticFormat {
    if (!_notiTheoreticFormat) {
        Byte value[] = {6, 66, 7, 113, 72, 152, 227, 31, 44, 49, 53, 35, 48, 145};
        _notiTheoreticFormat = [self StringFromCourtData:value];
    }
    return _notiTheoreticFormat;
}

//: /user/smsregister
- (NSString *)dream_sodValue {
    if (!_dream_sodValue) {
        Byte value[] = {17, 87, 8, 51, 43, 119, 41, 246, 216, 30, 28, 14, 27, 216, 28, 22, 28, 27, 14, 16, 18, 28, 29, 14, 27, 80};
        _dream_sodValue = [self StringFromCourtData:value];
    }
    return _dream_sodValue;
}

//: client
- (NSString *)notiStorageId {
    if (!_notiStorageId) {
        Byte value[] = {6, 15, 10, 171, 219, 35, 210, 30, 117, 219, 84, 93, 90, 86, 95, 101, 71};
        _notiStorageId = [self StringFromCourtData:value];
    }
    return _notiStorageId;
}

//: password
- (NSString *)m_generallyBandName {
    if (!_m_generallyBandName) {
        Byte value[] = {8, 70, 7, 16, 97, 78, 99, 42, 27, 45, 45, 49, 41, 44, 30, 231};
        _m_generallyBandName = [self StringFromCourtData:value];
    }
    return _m_generallyBandName;
}

//: account
- (NSString *)app_iconOutletData {
    if (!_app_iconOutletData) {
        Byte value[] = {7, 46, 4, 128, 51, 53, 53, 65, 71, 64, 70, 219};
        _app_iconOutletData = [self StringFromCourtData:value];
    }
    return _app_iconOutletData;
}

//: mobilecode
- (NSString *)kDisappointedPath {
    if (!_kDisappointedPath) {
        Byte value[] = {10, 81, 7, 45, 74, 236, 92, 28, 30, 17, 24, 27, 20, 18, 30, 19, 20, 65};
        _kDisappointedPath = [self StringFromCourtData:value];
    }
    return _kDisappointedPath;
}

//: /user/register
- (NSString *)appStemWipeFormat {
    if (!_appStemWipeFormat) {
        Byte value[] = {14, 43, 4, 33, 4, 74, 72, 58, 71, 4, 71, 58, 60, 62, 72, 73, 58, 71, 221};
        _appStemWipeFormat = [self StringFromCourtData:value];
    }
    return _appStemWipeFormat;
}

//: UserPassWord
- (NSString *)notiShootMessage {
    if (!_notiShootMessage) {
        Byte value[] = {12, 75, 9, 75, 103, 244, 57, 185, 34, 10, 40, 26, 39, 5, 22, 40, 40, 12, 36, 39, 25, 88};
        _notiShootMessage = [self StringFromCourtData:value];
    }
    return _notiShootMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeManager.m
//  NIM
//
//  Created by 彭爽 on 2021/9/6.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRegistConfigManager.h"
#import "MakeManager.h"

//: @interface NTESRegistConfigManager ()
@interface MakeManager ()
//: @property (nonatomic ,strong) UINavigationController *nav;
@property (nonatomic ,strong) UINavigationController *nav;
//: @end
@end

//: @implementation NTESRegistConfigManager
@implementation MakeManager

//: static NTESRegistConfigManager *shareConfigManager = nil;
static MakeManager *user_teamMessage = nil;

//: + (NTESRegistConfigManager *)shareConfigManager {
+ (MakeManager *)should {
    //: @synchronized(self) {
    @synchronized(self) {
        //: if (shareConfigManager == nil) {
        if (user_teamMessage == nil) {
            //: shareConfigManager = [[NTESRegistConfigManager alloc] init];
            user_teamMessage = [[MakeManager alloc] init];

            //: [shareConfigManager registDictDefault];
            [user_teamMessage on];
        }
        //: return shareConfigManager;
        return user_teamMessage;
    }
}

//: - (NSMutableDictionary *)registDictDefault{
- (NSMutableDictionary *)on{
    //: [NTESRegistConfigManager shareConfigManager].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    [MakeManager should].registDict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: NSMutableDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSMutableDictionary *dict = [MakeManager should].registDict;
    //: [dict setObject:@"iOS" forKey:@"client"];
    [dict setObject:[CourtData sharedInstance].kBlueUrl forKey:[CourtData sharedInstance].notiStorageId];
    //: [dict setObject:@"" forKey:@"invitecode"];
    [dict setObject:@"" forKey:[CourtData sharedInstance].notiPractitionerData];
    //: [dict setObject:@"" forKey:@"mobilecode"];
    [dict setObject:@"" forKey:[CourtData sharedInstance].kDisappointedPath];
    //: [dict setObject:@"" forKey:@"question"];
    [dict setObject:@"" forKey:[CourtData sharedInstance].show_affairKey];
    //: [dict setObject:@"" forKey:@"answer"];
    [dict setObject:@"" forKey:[CourtData sharedInstance].notiTheoreticFormat];
    //: [dict setObject:@"1" forKey:@"gender"];
    [dict setObject:@"1" forKey:[CourtData sharedInstance].k_holderPath];

    //: return [NTESRegistConfigManager shareConfigManager].registDict;
    return [MakeManager should].registDict;
}

//: + (void)refreshRegistConfig{
+ (void)standardRefresh{

    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/user/ismustmobile"] params:nil isShow:NO success:^(id responseObject) {
    [TouchShowMessage at:[NSString stringWithFormat:[CourtData sharedInstance].user_goingTitle] length:nil information:NO object:^(id responseObject) {

    //: } failed:^(id responseObject, NSError *error) {
    } touch:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: + (void)firstSendRegistName:(NSString *)name pd:(NSString *)pd RequestWithComplete:(void(^)(BOOL sucess, NSString * msg))complete {
+ (void)airt:(NSString *)name message:(NSString *)pd applicationWith:(void(^)(BOOL sucess, NSString * msg))complete {

    //#define Server_first_regist_config    [NSString stringWithFormat:@"%@/api/validate/check_username_available",[AlongTemp sharedConfig].domainURL]
    //: [ZCHttpManager postWithUrl:[NSString stringWithFormat:@"/validate/check_username_available"] params:@{@"username":name , @"passwd":pd } isShow:NO success:^(id responseObject) {
    [TouchShowMessage at:[NSString stringWithFormat:[CourtData sharedInstance].userResentTitle] length:@{[CourtData sharedInstance].appRockContent:name , [CourtData sharedInstance].k_importanceUrl:pd } information:NO object:^(id responseObject) {

        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict index:[CourtData sharedInstance].mainSizeUrl];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict index:[CourtData sharedInstance].noti_viewConductNameKey];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //: !complete ? : complete(YES,msg);
            !complete ? : complete(YES,msg);
        //: } else {
        } else {
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD packetMessage:msg];
            //: !complete ? : complete(NO,msg);
            !complete ? : complete(NO,msg);
        }

    //: } failed:^(id responseObject, NSError *error) {
    } touch:^(id responseObject, NSError *error) {
        //: !complete ? : complete(NO,[FFFLanguageManager getTextWithKey:@"friend_verify_avtivity_net_error"]);
        !complete ? : complete(NO,[BackgroundRandomAttribute content:[CourtData sharedInstance].noti_chartText]);
    //: }];
    }];
}


//: + (void)sendRegistRequest:(UINavigationController *)nav{
+ (void)than:(UINavigationController *)nav{

    //: [NTESRegistConfigManager shareConfigManager].nav = nav;
    [MakeManager should].nav = nav;
    //: NSString *ismustmobile = [NIMUserDefaults standardUserDefaults].ismustmobile;
    NSString *ismustmobile = [CrossShouldBlock towardScaleOfMeasurement].ismustmobile;//是否手机

    //: if ([NTESRegistConfigManager shareConfigManager].headerImage == nil) {
    if ([MakeManager should].headerImage == nil) {//默认头像
        //: [NTESRegistConfigManager shareConfigManager].headerImage = [UIImage imageNamed:@"head_default"];
        [MakeManager should].headerImage = [UIImage imageNamed:[CourtData sharedInstance].k_modestUrl];
    }

    //: if (ismustmobile.integerValue > 0) {
    if (ismustmobile.integerValue > 0) {
        //: [[NTESRegistConfigManager shareConfigManager] mobileRegist];
        [[MakeManager should] sound];
    //: }else{
    }else{
        //: [[NTESRegistConfigManager shareConfigManager] accountRegist];
        [[MakeManager should] message];

    }

}

//: -(void)mobileRegist{
-(void)sound{

    //: NSString *account = [[NTESRegistConfigManager shareConfigManager].registDict newStringValueForKey:@"account"];
    NSString *account = [[MakeManager should].registDict index:[CourtData sharedInstance].app_iconOutletData];
    //: [[NTESRegistConfigManager shareConfigManager].registDict setObject:account forKey:@"mobile"];
    [[MakeManager should].registDict setObject:account forKey:[CourtData sharedInstance].m_littleName];

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [MakeManager should].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [MakeManager should].headerImage;

    //: if (!image) {
    if (!image) {

        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/smsregister"] parameters:dict images:@[UIImageJPEGRepresentation(image, 0.3)] progress:^(NSProgress *progress) {
        [TouchShowMessage item:[NSString stringWithFormat:[CourtData sharedInstance].dream_sodValue] progress:dict boundaryPhase:@[UIImageJPEGRepresentation(image, 0.3)] textualMatter:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } with:^(id responseObject) {
            //: NSLog(@"%@",responseObject);
            //: [self.nav popToRootViewControllerAnimated:YES];
            [self.nav popToRootViewControllerAnimated:YES];


        //: } failed:^(id responseObject, NSError *error) {
        } button:^(id responseObject, NSError *error) {
            //: NSLog(@"%@",error);

        //: }];
        }];
    //: }else{
    }else{
        //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/smsregister"] params:dict isShow:YES success:^(id responseObject) {
        [TouchShowMessage gestureMessage:[NSString stringWithFormat:[CourtData sharedInstance].dream_sodValue] view:dict fort:YES generate:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict index:[CourtData sharedInstance].mainSizeUrl];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict index:[CourtData sharedInstance].noti_viewConductNameKey];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD packetMessage:msg];
            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];

                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: [notiDict setObject:[dict newStringValueForKey:@"account"] ? :@"" forKey:@"UserAccount"];
                [notiDict setObject:[dict index:[CourtData sharedInstance].app_iconOutletData] ? :@"" forKey:[CourtData sharedInstance].k_distinctionId];
                //: [notiDict setObject:[dict newStringValueForKey:@"password"] ? :@"" forKey:@"UserPassWord"];
                [notiDict setObject:[dict index:[CourtData sharedInstance].m_generallyBandName] ? :@"" forKey:[CourtData sharedInstance].notiShootMessage];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[CourtData sharedInstance].m_equateName object:notiDict];


            }
        //: } failed:^(id responseObject, NSError *error) {
        } file:^(id responseObject, NSError *error) {

        //: }];
        }];
    }


}

//: -(void)accountRegist{
-(void)message{

    //: NSDictionary *dict = [NTESRegistConfigManager shareConfigManager].registDict;
    NSDictionary *dict = [MakeManager should].registDict;
    //: UIImage *image = [NTESRegistConfigManager shareConfigManager].headerImage;
    UIImage *image = [MakeManager should].headerImage;
    //: UIImage *imageForAvatarUpload = [image imageByScalingAndCroppingForSize:CGSizeMake(150, 150)];
    UIImage *imageForAvatarUpload = [image disableSize:CGSizeMake(150, 150)];

    //: if (image) {
    if (image) {
        //: [ZCHttpManager uploadImagesWithURL:[NSString stringWithFormat:@"/user/register"] parameters:dict images:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] progress:^(NSProgress *progress) {
        [TouchShowMessage item:[NSString stringWithFormat:[CourtData sharedInstance].appStemWipeFormat] progress:dict boundaryPhase:@[UIImageJPEGRepresentation(imageForAvatarUpload, 0.7)] textualMatter:^(NSProgress *progress) {

        //: } success:^(id responseObject) {
        } with:^(id responseObject) {
            //: NSDictionary *resultDict = (NSDictionary *)responseObject;
            NSDictionary *resultDict = (NSDictionary *)responseObject;
            //: NSString *code = [resultDict newStringValueForKey:@"code"];
            NSString *code = [resultDict index:[CourtData sharedInstance].mainSizeUrl];
            //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
            NSString *msg = [resultDict index:[CourtData sharedInstance].noti_viewConductNameKey];
            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD packetMessage:msg];

            //: if (code.integerValue <= 0) {
            if (code.integerValue <= 0) {
                //: [self.nav popToRootViewControllerAnimated:YES];
                [self.nav popToRootViewControllerAnimated:YES];
                //: NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                NSMutableDictionary *notiDict = [NSMutableDictionary dictionaryWithCapacity:0];
                //: NSString *mobile = [dict newStringValueForKey:@"mobile"] ? :@"";
                NSString *mobile = [dict index:[CourtData sharedInstance].m_littleName] ? :@"";
                //: NSString *account = [dict newStringValueForKey:@"account"] ? :@"";
                NSString *account = [dict index:[CourtData sharedInstance].app_iconOutletData] ? :@"";
                //: NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                NSString *UserAccount = mobile.length > 0 ? mobile:account ;
                //: NSString *UserPassWord = [dict newStringValueForKey:@"password"] ? :@"";
                NSString *UserPassWord = [dict index:[CourtData sharedInstance].m_generallyBandName] ? :@"";
                //: [notiDict setObject:UserAccount forKey:@"UserAccount"];
                [notiDict setObject:UserAccount forKey:[CourtData sharedInstance].k_distinctionId];
                //: [notiDict setObject:UserPassWord forKey:@"UserPassWord"];
                [notiDict setObject:UserPassWord forKey:[CourtData sharedInstance].notiShootMessage];
                //: [[NSNotificationCenter defaultCenter] postNotificationName:@"RegistFinshNotification" object:notiDict];
                [[NSNotificationCenter defaultCenter] postNotificationName:[CourtData sharedInstance].m_equateName object:notiDict];
            }

        //: } failed:^(id responseObject, NSError *error) {
        } button:^(id responseObject, NSError *error) {
            //: [SVProgressHUD showMessage:[FFFLanguageManager getTextWithKey:@"register_avtivity3_register_fail"]];
            [SVProgressHUD packetMessage:[BackgroundRandomAttribute content:[CourtData sharedInstance].noti_generallyName]];

        //: }];
        }];
    }
}

//: @end
@end