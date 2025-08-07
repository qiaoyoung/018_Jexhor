
#import <Foundation/Foundation.h>

@interface FederalData : NSObject

+ (instancetype)sharedInstance;

//: App Store
@property (nonatomic, copy) NSString *k_reliefContent;

//: iPhone10,5
@property (nonatomic, copy) NSString *show_presentDrugName;

//: iPhone12,1
@property (nonatomic, copy) NSString *show_organizationalContent;

//: iPhone12,5
@property (nonatomic, copy) NSString *dream_reliefTitle;

//: iPhone5,2
@property (nonatomic, copy) NSString *dreamBeTitle;

//: iPhone 5C
@property (nonatomic, copy) NSString *app_educatorLocalValue;

//: iPhone 6 Plus
@property (nonatomic, copy) NSString *appSovereignContent;

//: version
@property (nonatomic, copy) NSString *kExtensiveMagnitudeValue;

//: iPhone6,1
@property (nonatomic, copy) NSString *showGrandTitle;

//: appName
@property (nonatomic, copy) NSString *k_plungeWishName;

//: iPhone6,2
@property (nonatomic, copy) NSString *notiTypicalText;

//: Accept-Language
@property (nonatomic, copy) NSString *mPremiumMythName;

//: iPhone1,2
@property (nonatomic, copy) NSString *noti_endText;

//: iPhone2,1
@property (nonatomic, copy) NSString *app_zingValue;

//: netType
@property (nonatomic, copy) NSString *showBroValue;

//: iPhone9,1
@property (nonatomic, copy) NSString *app_journalistViseInfoContent;

//: iPhone1,1
@property (nonatomic, copy) NSString *main_labelValue;

//: iPhone10,4
@property (nonatomic, copy) NSString *mTaiData;

//: iPhone5,4
@property (nonatomic, copy) NSString *mSubmitData;

//: iPhone5,3
@property (nonatomic, copy) NSString *user_textFindingScaleTitle;

//: iPhone8,4
@property (nonatomic, copy) NSString *dream_labelData;

//: deviceType
@property (nonatomic, copy) NSString *notiViewContent;

//: iPhone 11 Pro Max
@property (nonatomic, copy) NSString *userSolidValue;

//: channel
@property (nonatomic, copy) NSString *dream_accountValue;

//: iPhone 5
@property (nonatomic, copy) NSString *m_middleLeatherData;

//: iPhone 8
@property (nonatomic, copy) NSString *notiEndData;

//: iPhone 6s Plus
@property (nonatomic, copy) NSString *notiSuspectValue;

//: iPhone10,6
@property (nonatomic, copy) NSString *user_colorTitle;

//: iPhone 6s
@property (nonatomic, copy) NSString *k_listenerTitle;

//: Astrologie
@property (nonatomic, copy) NSString *noti_presentTingData;

//: app
@property (nonatomic, copy) NSString *noti_steadText;

//: zh-CN
@property (nonatomic, copy) NSString *mBindName;

//: deviceNumber
@property (nonatomic, copy) NSString *notiParentNeedName;

//: Verizon iPhone 4
@property (nonatomic, copy) NSString *main_showData;

//: iPhone10,3
@property (nonatomic, copy) NSString *k_madData;

//: iPhone3,2
@property (nonatomic, copy) NSString *m_specifyName;

//: iPhone 11 Pro
@property (nonatomic, copy) NSString *kPresentMediaOrganizationalData;

//: iPhone 7 Plus
@property (nonatomic, copy) NSString *mainHemeName;

//: iPhone8,1
@property (nonatomic, copy) NSString *k_silverName;

//: iPhone 11
@property (nonatomic, copy) NSString *notiDropTitle;

//: iPhone
@property (nonatomic, copy) NSString *show_lothName;

//: iPhone X
@property (nonatomic, copy) NSString *app_worryName;

//: iPhone4,1
@property (nonatomic, copy) NSString *k_assaultData;

//: iPhone 4
@property (nonatomic, copy) NSString *mShouldName;

//: iPhone7,1
@property (nonatomic, copy) NSString *kRobotValue;

//: appVersion
@property (nonatomic, copy) NSString *main_matName;

//: iPhone 7
@property (nonatomic, copy) NSString *main_acknowledgeSummitData;

//: iPhone 4S
@property (nonatomic, copy) NSString *kViewDepartmentText;

//: ios
@property (nonatomic, copy) NSString *showApartmentContent;

//: iPhone 5S
@property (nonatomic, copy) NSString *app_novelReliefPatternValue;

//: iPhone10,2
@property (nonatomic, copy) NSString *m_ripData;

//: iPhone 3G
@property (nonatomic, copy) NSString *mAcceptableValue;

//: 0100
@property (nonatomic, copy) NSString *notiNationalContent;

//: WIFI
@property (nonatomic, copy) NSString *dream_successValue;

//: iPhone8,2
@property (nonatomic, copy) NSString *app_fileData;

//: macAddress
@property (nonatomic, copy) NSString *show_messageValue;

//: iPhone 8 Plus
@property (nonatomic, copy) NSString *appSessionConcreteData;

//: iPhone12,3
@property (nonatomic, copy) NSString *k_provideValue;

//: iPhone7,2
@property (nonatomic, copy) NSString *dreamFrequentTitle;

//: iPhone9,3
@property (nonatomic, copy) NSString *user_accelerateText;

//: iPhone 6
@property (nonatomic, copy) NSString *dream_worryValue;

//: iPhone 3GS
@property (nonatomic, copy) NSString *mBarrelText;

//: iPhone13
@property (nonatomic, copy) NSString *notiSpecifyTitle;

//: iPhone 1G
@property (nonatomic, copy) NSString *userBoutText;

//: iphone
@property (nonatomic, copy) NSString *app_sizeTitle;

//: iPhone3,1
@property (nonatomic, copy) NSString *mainTextName;

//: iPhone5,1
@property (nonatomic, copy) NSString *appWeekTitle;

//: iPhone9,4
@property (nonatomic, copy) NSString *app_reputationValue;

//: 1.0.0
@property (nonatomic, copy) NSString *k_middleCongressionalTitle;

//: sys
@property (nonatomic, copy) NSString *dreamSpeculateTitle;

//: iPhone SE
@property (nonatomic, copy) NSString *mMiddleValue;

//: APPID
@property (nonatomic, copy) NSString *dream_enrollData;

//: iPhone10,1
@property (nonatomic, copy) NSString *userEcruProtectionData;

//: primaryKey
@property (nonatomic, copy) NSString *show_clinicalData;

//: iPhone9,2
@property (nonatomic, copy) NSString *kSizeValue;

//: x86_64
@property (nonatomic, copy) NSString *dream_placeData;

//: nettype
@property (nonatomic, copy) NSString *dreamByValue;

@end

@implementation FederalData

+ (instancetype)sharedInstance {
    static FederalData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FederalDataToCache:(Byte *)data {
    int jammed = data[0];
    int enroll = data[1];
    for (int i = 0; i < jammed / 2; i++) {
        int begin = enroll + i;
        int end = enroll + jammed - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[enroll + jammed] = 0;
    return data + enroll;
}

- (NSString *)StringFromFederalData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FederalDataToCache:data]];
}  

//: appName
- (NSString *)k_plungeWishName {
    if (!_k_plungeWishName) {
        Byte value[] = {7, 2, 101, 109, 97, 78, 112, 112, 97, 191};
        _k_plungeWishName = [self StringFromFederalData:value];
    }
    return _k_plungeWishName;
}

//: iPhone12,3
- (NSString *)k_provideValue {
    if (!_k_provideValue) {
        Byte value[] = {10, 3, 194, 51, 44, 50, 49, 101, 110, 111, 104, 80, 105, 94};
        _k_provideValue = [self StringFromFederalData:value];
    }
    return _k_provideValue;
}

//: x86_64
- (NSString *)dream_placeData {
    if (!_dream_placeData) {
        Byte value[] = {6, 3, 191, 52, 54, 95, 54, 56, 120, 75};
        _dream_placeData = [self StringFromFederalData:value];
    }
    return _dream_placeData;
}

//: Astrologie
- (NSString *)noti_presentTingData {
    if (!_noti_presentTingData) {
        Byte value[] = {10, 11, 77, 67, 232, 244, 193, 145, 128, 76, 183, 101, 105, 103, 111, 108, 111, 114, 116, 115, 65, 64};
        _noti_presentTingData = [self StringFromFederalData:value];
    }
    return _noti_presentTingData;
}

//: app
- (NSString *)noti_steadText {
    if (!_noti_steadText) {
        Byte value[] = {3, 10, 197, 51, 75, 167, 56, 128, 219, 184, 112, 112, 97, 199};
        _noti_steadText = [self StringFromFederalData:value];
    }
    return _noti_steadText;
}

//: iPhone9,3
- (NSString *)user_accelerateText {
    if (!_user_accelerateText) {
        Byte value[] = {9, 5, 193, 201, 138, 51, 44, 57, 101, 110, 111, 104, 80, 105, 106};
        _user_accelerateText = [self StringFromFederalData:value];
    }
    return _user_accelerateText;
}

//: iPhone 6 Plus
- (NSString *)appSovereignContent {
    if (!_appSovereignContent) {
        Byte value[] = {13, 9, 41, 168, 107, 237, 223, 129, 129, 115, 117, 108, 80, 32, 54, 32, 101, 110, 111, 104, 80, 105, 168};
        _appSovereignContent = [self StringFromFederalData:value];
    }
    return _appSovereignContent;
}

//: iPhone SE
- (NSString *)mMiddleValue {
    if (!_mMiddleValue) {
        Byte value[] = {9, 7, 191, 159, 241, 218, 195, 69, 83, 32, 101, 110, 111, 104, 80, 105, 216};
        _mMiddleValue = [self StringFromFederalData:value];
    }
    return _mMiddleValue;
}

//: Accept-Language
- (NSString *)mPremiumMythName {
    if (!_mPremiumMythName) {
        Byte value[] = {15, 9, 59, 124, 165, 32, 36, 167, 16, 101, 103, 97, 117, 103, 110, 97, 76, 45, 116, 112, 101, 99, 99, 65, 13};
        _mPremiumMythName = [self StringFromFederalData:value];
    }
    return _mPremiumMythName;
}

//: Verizon iPhone 4
- (NSString *)main_showData {
    if (!_main_showData) {
        Byte value[] = {16, 11, 178, 221, 137, 94, 68, 245, 255, 195, 250, 52, 32, 101, 110, 111, 104, 80, 105, 32, 110, 111, 122, 105, 114, 101, 86, 124};
        _main_showData = [self StringFromFederalData:value];
    }
    return _main_showData;
}

//: 1.0.0
- (NSString *)k_middleCongressionalTitle {
    if (!_k_middleCongressionalTitle) {
        Byte value[] = {5, 7, 243, 36, 56, 38, 22, 48, 46, 48, 46, 49, 124};
        _k_middleCongressionalTitle = [self StringFromFederalData:value];
    }
    return _k_middleCongressionalTitle;
}

//: iPhone5,4
- (NSString *)mSubmitData {
    if (!_mSubmitData) {
        Byte value[] = {9, 8, 156, 203, 12, 7, 162, 147, 52, 44, 53, 101, 110, 111, 104, 80, 105, 37};
        _mSubmitData = [self StringFromFederalData:value];
    }
    return _mSubmitData;
}

//: iPhone1,1
- (NSString *)main_labelValue {
    if (!_main_labelValue) {
        Byte value[] = {9, 7, 142, 34, 101, 114, 2, 49, 44, 49, 101, 110, 111, 104, 80, 105, 214};
        _main_labelValue = [self StringFromFederalData:value];
    }
    return _main_labelValue;
}

//: sys
- (NSString *)dreamSpeculateTitle {
    if (!_dreamSpeculateTitle) {
        Byte value[] = {3, 8, 254, 6, 53, 125, 158, 110, 115, 121, 115, 185};
        _dreamSpeculateTitle = [self StringFromFederalData:value];
    }
    return _dreamSpeculateTitle;
}

//: iPhone 8 Plus
- (NSString *)appSessionConcreteData {
    if (!_appSessionConcreteData) {
        Byte value[] = {13, 10, 15, 26, 79, 177, 78, 5, 186, 28, 115, 117, 108, 80, 32, 56, 32, 101, 110, 111, 104, 80, 105, 207};
        _appSessionConcreteData = [self StringFromFederalData:value];
    }
    return _appSessionConcreteData;
}

//: APPID
- (NSString *)dream_enrollData {
    if (!_dream_enrollData) {
        Byte value[] = {5, 3, 186, 68, 73, 80, 80, 65, 167};
        _dream_enrollData = [self StringFromFederalData:value];
    }
    return _dream_enrollData;
}

//: WIFI
- (NSString *)dream_successValue {
    if (!_dream_successValue) {
        Byte value[] = {4, 5, 102, 94, 39, 73, 70, 73, 87, 1};
        _dream_successValue = [self StringFromFederalData:value];
    }
    return _dream_successValue;
}

//: iPhone 5C
- (NSString *)app_educatorLocalValue {
    if (!_app_educatorLocalValue) {
        Byte value[] = {9, 6, 224, 138, 135, 120, 67, 53, 32, 101, 110, 111, 104, 80, 105, 123};
        _app_educatorLocalValue = [self StringFromFederalData:value];
    }
    return _app_educatorLocalValue;
}

//: iPhone 5
- (NSString *)m_middleLeatherData {
    if (!_m_middleLeatherData) {
        Byte value[] = {8, 4, 38, 195, 53, 32, 101, 110, 111, 104, 80, 105, 92};
        _m_middleLeatherData = [self StringFromFederalData:value];
    }
    return _m_middleLeatherData;
}

//: iPhone5,2
- (NSString *)dreamBeTitle {
    if (!_dreamBeTitle) {
        Byte value[] = {9, 7, 23, 248, 66, 200, 191, 50, 44, 53, 101, 110, 111, 104, 80, 105, 24};
        _dreamBeTitle = [self StringFromFederalData:value];
    }
    return _dreamBeTitle;
}

//: iPhone 6s
- (NSString *)k_listenerTitle {
    if (!_k_listenerTitle) {
        Byte value[] = {9, 7, 64, 179, 230, 20, 182, 115, 54, 32, 101, 110, 111, 104, 80, 105, 140};
        _k_listenerTitle = [self StringFromFederalData:value];
    }
    return _k_listenerTitle;
}

//: iPhone 1G
- (NSString *)userBoutText {
    if (!_userBoutText) {
        Byte value[] = {9, 12, 53, 59, 210, 213, 51, 231, 159, 76, 183, 202, 71, 49, 32, 101, 110, 111, 104, 80, 105, 11};
        _userBoutText = [self StringFromFederalData:value];
    }
    return _userBoutText;
}

//: iPhone3,2
- (NSString *)m_specifyName {
    if (!_m_specifyName) {
        Byte value[] = {9, 11, 61, 32, 122, 107, 33, 11, 205, 210, 181, 50, 44, 51, 101, 110, 111, 104, 80, 105, 164};
        _m_specifyName = [self StringFromFederalData:value];
    }
    return _m_specifyName;
}

//: iPhone10,2
- (NSString *)m_ripData {
    if (!_m_ripData) {
        Byte value[] = {10, 7, 27, 218, 127, 162, 203, 50, 44, 48, 49, 101, 110, 111, 104, 80, 105, 194};
        _m_ripData = [self StringFromFederalData:value];
    }
    return _m_ripData;
}

//: 0100
- (NSString *)notiNationalContent {
    if (!_notiNationalContent) {
        Byte value[] = {4, 9, 178, 111, 73, 97, 93, 209, 6, 48, 48, 49, 48, 35};
        _notiNationalContent = [self StringFromFederalData:value];
    }
    return _notiNationalContent;
}

//: iPhone10,1
- (NSString *)userEcruProtectionData {
    if (!_userEcruProtectionData) {
        Byte value[] = {10, 6, 163, 206, 182, 18, 49, 44, 48, 49, 101, 110, 111, 104, 80, 105, 200};
        _userEcruProtectionData = [self StringFromFederalData:value];
    }
    return _userEcruProtectionData;
}

//: iPhone 4
- (NSString *)mShouldName {
    if (!_mShouldName) {
        Byte value[] = {8, 4, 211, 175, 52, 32, 101, 110, 111, 104, 80, 105, 56};
        _mShouldName = [self StringFromFederalData:value];
    }
    return _mShouldName;
}

//: iPhone8,4
- (NSString *)dream_labelData {
    if (!_dream_labelData) {
        Byte value[] = {9, 10, 69, 106, 249, 210, 10, 237, 189, 166, 52, 44, 56, 101, 110, 111, 104, 80, 105, 128};
        _dream_labelData = [self StringFromFederalData:value];
    }
    return _dream_labelData;
}

//: iPhone 7 Plus
- (NSString *)mainHemeName {
    if (!_mainHemeName) {
        Byte value[] = {13, 9, 133, 43, 84, 115, 138, 232, 65, 115, 117, 108, 80, 32, 55, 32, 101, 110, 111, 104, 80, 105, 210};
        _mainHemeName = [self StringFromFederalData:value];
    }
    return _mainHemeName;
}

//: iPhone 8
- (NSString *)notiEndData {
    if (!_notiEndData) {
        Byte value[] = {8, 10, 62, 184, 66, 41, 170, 14, 90, 204, 56, 32, 101, 110, 111, 104, 80, 105, 179};
        _notiEndData = [self StringFromFederalData:value];
    }
    return _notiEndData;
}

//: iPhone 3GS
- (NSString *)mBarrelText {
    if (!_mBarrelText) {
        Byte value[] = {10, 2, 83, 71, 51, 32, 101, 110, 111, 104, 80, 105, 143};
        _mBarrelText = [self StringFromFederalData:value];
    }
    return _mBarrelText;
}

//: iPhone 7
- (NSString *)main_acknowledgeSummitData {
    if (!_main_acknowledgeSummitData) {
        Byte value[] = {8, 4, 217, 197, 55, 32, 101, 110, 111, 104, 80, 105, 167};
        _main_acknowledgeSummitData = [self StringFromFederalData:value];
    }
    return _main_acknowledgeSummitData;
}

//: iPhone 6
- (NSString *)dream_worryValue {
    if (!_dream_worryValue) {
        Byte value[] = {8, 9, 247, 12, 45, 202, 117, 188, 21, 54, 32, 101, 110, 111, 104, 80, 105, 25};
        _dream_worryValue = [self StringFromFederalData:value];
    }
    return _dream_worryValue;
}

//: App Store
- (NSString *)k_reliefContent {
    if (!_k_reliefContent) {
        Byte value[] = {9, 9, 181, 20, 142, 236, 254, 244, 27, 101, 114, 111, 116, 83, 32, 112, 112, 65, 247};
        _k_reliefContent = [self StringFromFederalData:value];
    }
    return _k_reliefContent;
}

//: iPhone8,2
- (NSString *)app_fileData {
    if (!_app_fileData) {
        Byte value[] = {9, 5, 147, 70, 42, 50, 44, 56, 101, 110, 111, 104, 80, 105, 178};
        _app_fileData = [self StringFromFederalData:value];
    }
    return _app_fileData;
}

//: iPhone5,3
- (NSString *)user_textFindingScaleTitle {
    if (!_user_textFindingScaleTitle) {
        Byte value[] = {9, 10, 135, 107, 140, 105, 136, 146, 51, 255, 51, 44, 53, 101, 110, 111, 104, 80, 105, 217};
        _user_textFindingScaleTitle = [self StringFromFederalData:value];
    }
    return _user_textFindingScaleTitle;
}

//: iPhone2,1
- (NSString *)app_zingValue {
    if (!_app_zingValue) {
        Byte value[] = {9, 10, 23, 57, 146, 111, 93, 247, 9, 193, 49, 44, 50, 101, 110, 111, 104, 80, 105, 170};
        _app_zingValue = [self StringFromFederalData:value];
    }
    return _app_zingValue;
}

//: iPhone 3G
- (NSString *)mAcceptableValue {
    if (!_mAcceptableValue) {
        Byte value[] = {9, 7, 226, 211, 88, 211, 122, 71, 51, 32, 101, 110, 111, 104, 80, 105, 205};
        _mAcceptableValue = [self StringFromFederalData:value];
    }
    return _mAcceptableValue;
}

//: iPhone13
- (NSString *)notiSpecifyTitle {
    if (!_notiSpecifyTitle) {
        Byte value[] = {8, 9, 21, 88, 143, 248, 107, 120, 115, 51, 49, 101, 110, 111, 104, 80, 105, 162};
        _notiSpecifyTitle = [self StringFromFederalData:value];
    }
    return _notiSpecifyTitle;
}

//: iPhone 6s Plus
- (NSString *)notiSuspectValue {
    if (!_notiSuspectValue) {
        Byte value[] = {14, 6, 12, 79, 37, 230, 115, 117, 108, 80, 32, 115, 54, 32, 101, 110, 111, 104, 80, 105, 9};
        _notiSuspectValue = [self StringFromFederalData:value];
    }
    return _notiSuspectValue;
}

//: iPhone1,2
- (NSString *)noti_endText {
    if (!_noti_endText) {
        Byte value[] = {9, 7, 148, 68, 39, 5, 203, 50, 44, 49, 101, 110, 111, 104, 80, 105, 192};
        _noti_endText = [self StringFromFederalData:value];
    }
    return _noti_endText;
}

//: iPhone4,1
- (NSString *)k_assaultData {
    if (!_k_assaultData) {
        Byte value[] = {9, 2, 49, 44, 52, 101, 110, 111, 104, 80, 105, 4};
        _k_assaultData = [self StringFromFederalData:value];
    }
    return _k_assaultData;
}

//: iPhone10,6
- (NSString *)user_colorTitle {
    if (!_user_colorTitle) {
        Byte value[] = {10, 7, 187, 134, 70, 13, 147, 54, 44, 48, 49, 101, 110, 111, 104, 80, 105, 209};
        _user_colorTitle = [self StringFromFederalData:value];
    }
    return _user_colorTitle;
}

//: iPhone9,1
- (NSString *)app_journalistViseInfoContent {
    if (!_app_journalistViseInfoContent) {
        Byte value[] = {9, 3, 106, 49, 44, 57, 101, 110, 111, 104, 80, 105, 233};
        _app_journalistViseInfoContent = [self StringFromFederalData:value];
    }
    return _app_journalistViseInfoContent;
}

//: iPhone5,1
- (NSString *)appWeekTitle {
    if (!_appWeekTitle) {
        Byte value[] = {9, 4, 145, 239, 49, 44, 53, 101, 110, 111, 104, 80, 105, 89};
        _appWeekTitle = [self StringFromFederalData:value];
    }
    return _appWeekTitle;
}

//: iPhone9,2
- (NSString *)kSizeValue {
    if (!_kSizeValue) {
        Byte value[] = {9, 10, 76, 206, 249, 168, 1, 34, 149, 6, 50, 44, 57, 101, 110, 111, 104, 80, 105, 37};
        _kSizeValue = [self StringFromFederalData:value];
    }
    return _kSizeValue;
}

//: iPhone8,1
- (NSString *)k_silverName {
    if (!_k_silverName) {
        Byte value[] = {9, 3, 151, 49, 44, 56, 101, 110, 111, 104, 80, 105, 180};
        _k_silverName = [self StringFromFederalData:value];
    }
    return _k_silverName;
}

//: iPhone 4S
- (NSString *)kViewDepartmentText {
    if (!_kViewDepartmentText) {
        Byte value[] = {9, 12, 82, 253, 100, 6, 25, 42, 141, 120, 156, 196, 83, 52, 32, 101, 110, 111, 104, 80, 105, 2};
        _kViewDepartmentText = [self StringFromFederalData:value];
    }
    return _kViewDepartmentText;
}

//: iPhone9,4
- (NSString *)app_reputationValue {
    if (!_app_reputationValue) {
        Byte value[] = {9, 10, 25, 165, 23, 24, 213, 210, 23, 177, 52, 44, 57, 101, 110, 111, 104, 80, 105, 186};
        _app_reputationValue = [self StringFromFederalData:value];
    }
    return _app_reputationValue;
}

//: iPhone10,5
- (NSString *)show_presentDrugName {
    if (!_show_presentDrugName) {
        Byte value[] = {10, 4, 40, 64, 53, 44, 48, 49, 101, 110, 111, 104, 80, 105, 121};
        _show_presentDrugName = [self StringFromFederalData:value];
    }
    return _show_presentDrugName;
}

//: appVersion
- (NSString *)main_matName {
    if (!_main_matName) {
        Byte value[] = {10, 10, 64, 28, 168, 99, 217, 137, 232, 122, 110, 111, 105, 115, 114, 101, 86, 112, 112, 97, 67};
        _main_matName = [self StringFromFederalData:value];
    }
    return _main_matName;
}

//: zh-CN
- (NSString *)mBindName {
    if (!_mBindName) {
        Byte value[] = {5, 11, 108, 177, 104, 172, 195, 44, 4, 13, 2, 78, 67, 45, 104, 122, 200};
        _mBindName = [self StringFromFederalData:value];
    }
    return _mBindName;
}

//: iPhone
- (NSString *)show_lothName {
    if (!_show_lothName) {
        Byte value[] = {6, 11, 248, 157, 212, 80, 194, 122, 214, 42, 124, 101, 110, 111, 104, 80, 105, 120};
        _show_lothName = [self StringFromFederalData:value];
    }
    return _show_lothName;
}

//: iPhone 5S
- (NSString *)app_novelReliefPatternValue {
    if (!_app_novelReliefPatternValue) {
        Byte value[] = {9, 8, 65, 108, 189, 140, 254, 215, 83, 53, 32, 101, 110, 111, 104, 80, 105, 124};
        _app_novelReliefPatternValue = [self StringFromFederalData:value];
    }
    return _app_novelReliefPatternValue;
}

//: iphone
- (NSString *)app_sizeTitle {
    if (!_app_sizeTitle) {
        Byte value[] = {6, 8, 94, 67, 162, 91, 57, 216, 101, 110, 111, 104, 112, 105, 169};
        _app_sizeTitle = [self StringFromFederalData:value];
    }
    return _app_sizeTitle;
}

//: iPhone7,1
- (NSString *)kRobotValue {
    if (!_kRobotValue) {
        Byte value[] = {9, 5, 29, 102, 220, 49, 44, 55, 101, 110, 111, 104, 80, 105, 241};
        _kRobotValue = [self StringFromFederalData:value];
    }
    return _kRobotValue;
}

//: iPhone12,5
- (NSString *)dream_reliefTitle {
    if (!_dream_reliefTitle) {
        Byte value[] = {10, 10, 238, 57, 106, 72, 69, 151, 203, 245, 53, 44, 50, 49, 101, 110, 111, 104, 80, 105, 219};
        _dream_reliefTitle = [self StringFromFederalData:value];
    }
    return _dream_reliefTitle;
}

//: iPhone 11 Pro
- (NSString *)kPresentMediaOrganizationalData {
    if (!_kPresentMediaOrganizationalData) {
        Byte value[] = {13, 3, 250, 111, 114, 80, 32, 49, 49, 32, 101, 110, 111, 104, 80, 105, 78};
        _kPresentMediaOrganizationalData = [self StringFromFederalData:value];
    }
    return _kPresentMediaOrganizationalData;
}

//: iPhone12,1
- (NSString *)show_organizationalContent {
    if (!_show_organizationalContent) {
        Byte value[] = {10, 9, 66, 138, 156, 228, 140, 140, 169, 49, 44, 50, 49, 101, 110, 111, 104, 80, 105, 123};
        _show_organizationalContent = [self StringFromFederalData:value];
    }
    return _show_organizationalContent;
}

//: deviceNumber
- (NSString *)notiParentNeedName {
    if (!_notiParentNeedName) {
        Byte value[] = {12, 6, 198, 181, 33, 214, 114, 101, 98, 109, 117, 78, 101, 99, 105, 118, 101, 100, 144};
        _notiParentNeedName = [self StringFromFederalData:value];
    }
    return _notiParentNeedName;
}

//: iPhone10,3
- (NSString *)k_madData {
    if (!_k_madData) {
        Byte value[] = {10, 6, 95, 216, 219, 110, 51, 44, 48, 49, 101, 110, 111, 104, 80, 105, 181};
        _k_madData = [self StringFromFederalData:value];
    }
    return _k_madData;
}

//: nettype
- (NSString *)dreamByValue {
    if (!_dreamByValue) {
        Byte value[] = {7, 5, 200, 56, 135, 101, 112, 121, 116, 116, 101, 110, 2};
        _dreamByValue = [self StringFromFederalData:value];
    }
    return _dreamByValue;
}

//: iPhone 11
- (NSString *)notiDropTitle {
    if (!_notiDropTitle) {
        Byte value[] = {9, 10, 138, 92, 231, 153, 180, 252, 207, 56, 49, 49, 32, 101, 110, 111, 104, 80, 105, 107};
        _notiDropTitle = [self StringFromFederalData:value];
    }
    return _notiDropTitle;
}

//: iPhone6,1
- (NSString *)showGrandTitle {
    if (!_showGrandTitle) {
        Byte value[] = {9, 11, 134, 138, 227, 122, 195, 165, 239, 190, 194, 49, 44, 54, 101, 110, 111, 104, 80, 105, 166};
        _showGrandTitle = [self StringFromFederalData:value];
    }
    return _showGrandTitle;
}

//: netType
- (NSString *)showBroValue {
    if (!_showBroValue) {
        Byte value[] = {7, 7, 171, 115, 137, 147, 92, 101, 112, 121, 84, 116, 101, 110, 47};
        _showBroValue = [self StringFromFederalData:value];
    }
    return _showBroValue;
}

//: primaryKey
- (NSString *)show_clinicalData {
    if (!_show_clinicalData) {
        Byte value[] = {10, 9, 143, 83, 80, 56, 86, 173, 12, 121, 101, 75, 121, 114, 97, 109, 105, 114, 112, 119};
        _show_clinicalData = [self StringFromFederalData:value];
    }
    return _show_clinicalData;
}

//: iPhone X
- (NSString *)app_worryName {
    if (!_app_worryName) {
        Byte value[] = {8, 4, 153, 137, 88, 32, 101, 110, 111, 104, 80, 105, 213};
        _app_worryName = [self StringFromFederalData:value];
    }
    return _app_worryName;
}

//: channel
- (NSString *)dream_accountValue {
    if (!_dream_accountValue) {
        Byte value[] = {7, 4, 5, 95, 108, 101, 110, 110, 97, 104, 99, 151};
        _dream_accountValue = [self StringFromFederalData:value];
    }
    return _dream_accountValue;
}

//: iPhone7,2
- (NSString *)dreamFrequentTitle {
    if (!_dreamFrequentTitle) {
        Byte value[] = {9, 12, 193, 52, 129, 96, 19, 216, 98, 33, 71, 82, 50, 44, 55, 101, 110, 111, 104, 80, 105, 57};
        _dreamFrequentTitle = [self StringFromFederalData:value];
    }
    return _dreamFrequentTitle;
}

//: deviceType
- (NSString *)notiViewContent {
    if (!_notiViewContent) {
        Byte value[] = {10, 2, 101, 112, 121, 84, 101, 99, 105, 118, 101, 100, 176};
        _notiViewContent = [self StringFromFederalData:value];
    }
    return _notiViewContent;
}

//: version
- (NSString *)kExtensiveMagnitudeValue {
    if (!_kExtensiveMagnitudeValue) {
        Byte value[] = {7, 4, 62, 67, 110, 111, 105, 115, 114, 101, 118, 137};
        _kExtensiveMagnitudeValue = [self StringFromFederalData:value];
    }
    return _kExtensiveMagnitudeValue;
}

//: iPhone10,4
- (NSString *)mTaiData {
    if (!_mTaiData) {
        Byte value[] = {10, 6, 89, 182, 96, 198, 52, 44, 48, 49, 101, 110, 111, 104, 80, 105, 46};
        _mTaiData = [self StringFromFederalData:value];
    }
    return _mTaiData;
}

//: iPhone6,2
- (NSString *)notiTypicalText {
    if (!_notiTypicalText) {
        Byte value[] = {9, 7, 146, 166, 125, 241, 231, 50, 44, 54, 101, 110, 111, 104, 80, 105, 233};
        _notiTypicalText = [self StringFromFederalData:value];
    }
    return _notiTypicalText;
}

//: iPhone3,1
- (NSString *)mainTextName {
    if (!_mainTextName) {
        Byte value[] = {9, 10, 185, 23, 69, 11, 169, 244, 171, 34, 49, 44, 51, 101, 110, 111, 104, 80, 105, 97};
        _mainTextName = [self StringFromFederalData:value];
    }
    return _mainTextName;
}

//: iPhone 11 Pro Max
- (NSString *)userSolidValue {
    if (!_userSolidValue) {
        Byte value[] = {17, 4, 40, 111, 120, 97, 77, 32, 111, 114, 80, 32, 49, 49, 32, 101, 110, 111, 104, 80, 105, 168};
        _userSolidValue = [self StringFromFederalData:value];
    }
    return _userSolidValue;
}

//: macAddress
- (NSString *)show_messageValue {
    if (!_show_messageValue) {
        Byte value[] = {10, 10, 123, 151, 84, 140, 251, 224, 40, 95, 115, 115, 101, 114, 100, 100, 65, 99, 97, 109, 201};
        _show_messageValue = [self StringFromFederalData:value];
    }
    return _show_messageValue;
}

//: ios
- (NSString *)showApartmentContent {
    if (!_showApartmentContent) {
        Byte value[] = {3, 6, 87, 182, 210, 254, 115, 111, 105, 182};
        _showApartmentContent = [self StringFromFederalData:value];
    }
    return _showApartmentContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountHeader.m
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import "ZCHttpRequestHeader.h"
#import "CountHeader.h"
//: #import <net/if.h>
#import <net/if.h>
//: #import <sys/sysctl.h>
#import <sys/sysctl.h>
//: #import <net/if_dl.h>
#import <net/if_dl.h>
//: #import "sys/utsname.h"
#import "sys/utsname.h"

//: @implementation ZCHttpRequestHeader
@implementation CountHeader
//: +(NSDictionary *)getHeader
+(NSDictionary *)margin
{

    //: NSString *appName = @"Astrologie";
    NSString *appName = [FederalData sharedInstance].noti_presentTingData;
    //: NSString *appVersion = @"1.0.0";
    NSString *appVersion = [FederalData sharedInstance].k_middleCongressionalTitle;
    //: NSString *appid = [self getAppID];
    NSString *appid = [self exhibit];
    //: NSString *channel = @"App Store";
    NSString *channel = [FederalData sharedInstance].k_reliefContent;
    //: NSString *deviceType = @"iphone";
    NSString *deviceType = [FederalData sharedInstance].app_sizeTitle;
    //: NSString *macAddress = [self macaddress];
    NSString *macAddress = [self viewMacaddress];
    //: NSString *netType = [self getNetType];
    NSString *netType = [self show];
    //: NSString *primaryKey = @"iPhone";
    NSString *primaryKey = [FederalData sharedInstance].show_lothName;//DEVICE_ID;
    //: NSString *sys = @"I";
    NSString *sys = @"I";
    //: NSString *version = @"1.0.0";
    NSString *version = [FederalData sharedInstance].k_middleCongressionalTitle;
    //: NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];
    NSString *uuid = [[[UIDevice currentDevice] identifierForVendor] UUIDString];



    //: NSMutableDictionary*dic=[NSMutableDictionary dictionaryWithObjectsAndKeys:
    NSMutableDictionary*dic=[NSMutableDictionary dictionaryWithObjectsAndKeys:
                             //: appName,@"appName",
                             appName,[FederalData sharedInstance].k_plungeWishName,
                             //: appVersion,@"appVersion",
                             appVersion,[FederalData sharedInstance].main_matName,
                             //: channel,@"channel",
                             channel,[FederalData sharedInstance].dream_accountValue,
                             //: macAddress,@"macAddress",
                             macAddress,[FederalData sharedInstance].show_messageValue,
                             //: netType,@"netType",
                             netType,[FederalData sharedInstance].showBroValue,
                             //: primaryKey,@"primaryKey",
                             primaryKey,[FederalData sharedInstance].show_clinicalData,
                             //: @"zh-CN", @"Accept-Language",
                             [FederalData sharedInstance].mBindName, [FederalData sharedInstance].mPremiumMythName,
                             //: appid, @"APPID",
                             appid, [FederalData sharedInstance].dream_enrollData,
                             //: sys,@"sys",
                             sys,[FederalData sharedInstance].dreamSpeculateTitle,
                             //: netType,@"nettype",
                             netType,[FederalData sharedInstance].dreamByValue,
                             //: version,@"version",
                             version,[FederalData sharedInstance].kExtensiveMagnitudeValue,
                             //: deviceType,@"deviceType",
                             deviceType,[FederalData sharedInstance].notiViewContent,
                             //: uuid,@"deviceNumber",nil];
                             uuid,[FederalData sharedInstance].notiParentNeedName,nil];
    //NIF_TRACE(@"%@",dic);
    //: return dic;
    return dic;

}



//: + (NSString *)getAppID
+ (NSString *)exhibit
{

    //    NSString *appId = [[NSUserDefaults standardUserDefaults] stringForKey:@"APPID"];
    //    if(appId != nil || [appId length]>0)
    //        return appId;

    //: UIDevice *device = [UIDevice currentDevice];
    UIDevice *device = [UIDevice currentDevice];
    //: NSString *appIDStr = @"";
    NSString *appIDStr = @"";

    //: NSArray *lines = [device.systemVersion componentsSeparatedByString:@"."];
    NSArray *lines = [device.systemVersion componentsSeparatedByString:@"."];

    //: NSString *firstNum;
    NSString *firstNum;
    //: NSString *secondNum;
    NSString *secondNum;

    //: if ([lines count] == 2) {
    if ([lines count] == 2) {
        //: if ([[lines objectAtIndex:0] intValue] < 10) {
        if ([[lines objectAtIndex:0] intValue] < 10) {
            //: firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
            firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
        //: } else {
        } else {
            //: firstNum = [lines objectAtIndex:0];
            firstNum = [lines objectAtIndex:0];
        }

        //: secondNum = [NSString stringWithFormat:@"%@0",[lines objectAtIndex:1]];
        secondNum = [NSString stringWithFormat:@"%@0",[lines objectAtIndex:1]];


    //: } else if ([lines count] == 3) {
    } else if ([lines count] == 3) {
        //: if ([[lines objectAtIndex:0] intValue] < 10) {
        if ([[lines objectAtIndex:0] intValue] < 10) {
            //: firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
            firstNum = [NSString stringWithFormat:@"0%@", [lines objectAtIndex:0]];
        //: } else {
        } else {
            //: firstNum = [lines objectAtIndex:0];
            firstNum = [lines objectAtIndex:0];
        }

        //: secondNum = [NSString stringWithFormat:@"%@%@", [lines objectAtIndex:1], [lines objectAtIndex:2]];
        secondNum = [NSString stringWithFormat:@"%@%@", [lines objectAtIndex:1], [lines objectAtIndex:2]];
    //: } else {
    } else {
        //: firstNum = @"00";
        firstNum = @"00";
        //: secondNum = @"00";
        secondNum = @"00";
    }
    //: appIDStr = [NSString stringWithFormat:@"I%@%@%@%@%@", firstNum, secondNum,@"ios",@"0100",@"app"];
    appIDStr = [NSString stringWithFormat:@"I%@%@%@%@%@", firstNum, secondNum,[FederalData sharedInstance].showApartmentContent,[FederalData sharedInstance].notiNationalContent,[FederalData sharedInstance].noti_steadText];
    //: [[NSUserDefaults standardUserDefaults] setValue:appIDStr forKey:@"APPID"];
    [[NSUserDefaults standardUserDefaults] setValue:appIDStr forKey:[FederalData sharedInstance].dream_enrollData];
    //: [[NSUserDefaults standardUserDefaults]synchronize];
    [[NSUserDefaults standardUserDefaults]synchronize];
    //: return appIDStr;
    return appIDStr;

}

//: + (NSString *) macaddress
+ (NSString *) viewMacaddress
{

    //: int mib[6];
    int mib[6];
    //: size_t len;
    size_t len;
    //: char *buf;
    char *buf;
    //: unsigned char *ptr;
    unsigned char *ptr;
    //: struct if_msghdr *ifm;
    struct if_msghdr *ifm;
    //: struct sockaddr_dl *sdl;
    struct sockaddr_dl *sdl;

    //: mib[0] = 4;
    mib[0] = 4;
    //: mib[1] = 17;
    mib[1] = 17;
    //: mib[2] = 0;
    mib[2] = 0;
    //: mib[3] = 18;
    mib[3] = 18;
    //: mib[4] = 3;
    mib[4] = 3;

    //: if ((mib[5] = if_nametoindex("en0")) == 0) {
    if ((mib[5] = if_nametoindex("en0")) == 0) {
        //: printf("Error: if_nametoindex error/n");
        printf("Error: if_nametoindex error/n");
        //: return NULL;
        return NULL;
    }

    //: if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
    if (sysctl(mib, 6, NULL, &len, NULL, 0) < 0) {
        //: printf("Error: sysctl, take 1/n");
        printf("Error: sysctl, take 1/n");
        //: return NULL;
        return NULL;
    }

    //: if ((buf = malloc(len)) == NULL) {
    if ((buf = malloc(len)) == NULL) {
        //: printf("Could not allocate memory. error!/n");
        printf("Could not allocate memory. error!/n");
        //: return NULL;
        return NULL;
    }

    //: if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
    if (sysctl(mib, 6, buf, &len, NULL, 0) < 0) {
        //: printf("Error: sysctl, take 2");
        printf("Error: sysctl, take 2");
        //: return NULL;
        return NULL;
    }

    //: ifm = (struct if_msghdr *)buf;
    ifm = (struct if_msghdr *)buf;
    //: sdl = (struct sockaddr_dl *)(ifm + 1);
    sdl = (struct sockaddr_dl *)(ifm + 1);
    //: ptr = (unsigned char *)LLADDR(sdl);
    ptr = (unsigned char *)LLADDR(sdl);
    //: NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];
    NSString *outstring = [NSString stringWithFormat:@"%02x:%02x:%02x:%02x:%02x:%02x", *ptr, *(ptr+1), *(ptr+2), *(ptr+3), *(ptr+4), *(ptr+5)];

//    NSLog(@"outString:%@", outstring);

    //: free(buf);
    free(buf);

    //: return [outstring uppercaseString];
    return [outstring uppercaseString];
}

//: + (NSString *)getNetType{
+ (NSString *)show{
    //: NSString *netType = @"G";
    NSString *netType = @"G";
    //: netType = @"WIFI";
    netType = [FederalData sharedInstance].dream_successValue;

    //: return netType;
    return netType;
}


//: +(NSString *)getIOSVersion{
+(NSString *)bottomSessionVersion{
    //: NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    //: return phoneVersion;
    return phoneVersion;
}

//: +(NSString*)deviceVersion
+(NSString*)data
{
    // 需要
    //: struct utsname systemInfo;
    struct utsname systemInfo;
    //: uname(&systemInfo);
    uname(&systemInfo);
    //: NSString * deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    NSString * deviceString = [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
    //iPhone
    //: if ([deviceString isEqualToString:@"iPhone1,1"]) return @"iPhone 1G";
    if ([deviceString isEqualToString:[FederalData sharedInstance].main_labelValue]) return [FederalData sharedInstance].userBoutText;
    //: if ([deviceString isEqualToString:@"iPhone1,2"]) return @"iPhone 3G";
    if ([deviceString isEqualToString:[FederalData sharedInstance].noti_endText]) return [FederalData sharedInstance].mAcceptableValue;
    //: if ([deviceString isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS";
    if ([deviceString isEqualToString:[FederalData sharedInstance].app_zingValue]) return [FederalData sharedInstance].mBarrelText;
    //: if ([deviceString isEqualToString:@"iPhone3,1"]) return @"iPhone 4";
    if ([deviceString isEqualToString:[FederalData sharedInstance].mainTextName]) return [FederalData sharedInstance].mShouldName;
    //: if ([deviceString isEqualToString:@"iPhone3,2"]) return @"Verizon iPhone 4";
    if ([deviceString isEqualToString:[FederalData sharedInstance].m_specifyName]) return [FederalData sharedInstance].main_showData;
    //: if ([deviceString isEqualToString:@"iPhone4,1"]) return @"iPhone 4S";
    if ([deviceString isEqualToString:[FederalData sharedInstance].k_assaultData]) return [FederalData sharedInstance].kViewDepartmentText;
    //: if ([deviceString isEqualToString:@"iPhone5,1"]) return @"iPhone 5";
    if ([deviceString isEqualToString:[FederalData sharedInstance].appWeekTitle]) return [FederalData sharedInstance].m_middleLeatherData;
    //: if ([deviceString isEqualToString:@"iPhone5,2"]) return @"iPhone 5";
    if ([deviceString isEqualToString:[FederalData sharedInstance].dreamBeTitle]) return [FederalData sharedInstance].m_middleLeatherData;
    //: if ([deviceString isEqualToString:@"iPhone5,3"]) return @"iPhone 5C";
    if ([deviceString isEqualToString:[FederalData sharedInstance].user_textFindingScaleTitle]) return [FederalData sharedInstance].app_educatorLocalValue;
    //: if ([deviceString isEqualToString:@"iPhone5,4"]) return @"iPhone 5C";
    if ([deviceString isEqualToString:[FederalData sharedInstance].mSubmitData]) return [FederalData sharedInstance].app_educatorLocalValue;
    //: if ([deviceString isEqualToString:@"iPhone6,1"]) return @"iPhone 5S";
    if ([deviceString isEqualToString:[FederalData sharedInstance].showGrandTitle]) return [FederalData sharedInstance].app_novelReliefPatternValue;
    //: if ([deviceString isEqualToString:@"iPhone6,2"]) return @"iPhone 5S";
    if ([deviceString isEqualToString:[FederalData sharedInstance].notiTypicalText]) return [FederalData sharedInstance].app_novelReliefPatternValue;
    //: if ([deviceString isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus";
    if ([deviceString isEqualToString:[FederalData sharedInstance].kRobotValue]) return [FederalData sharedInstance].appSovereignContent;
    //: if ([deviceString isEqualToString:@"iPhone7,2"]) return @"iPhone 6";
    if ([deviceString isEqualToString:[FederalData sharedInstance].dreamFrequentTitle]) return [FederalData sharedInstance].dream_worryValue;
    //: if ([deviceString isEqualToString:@"iPhone8,1"]) return @"iPhone 6s";
    if ([deviceString isEqualToString:[FederalData sharedInstance].k_silverName]) return [FederalData sharedInstance].k_listenerTitle;
    //: if ([deviceString isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus";
    if ([deviceString isEqualToString:[FederalData sharedInstance].app_fileData]) return [FederalData sharedInstance].notiSuspectValue;
    //: if ([deviceString isEqualToString:@"iPhone8,4"]) return @"iPhone SE";
    if ([deviceString isEqualToString:[FederalData sharedInstance].dream_labelData]) return [FederalData sharedInstance].mMiddleValue;

    //: if ([deviceString isEqualToString:@"iPhone9,1"]) return @"iPhone 7";
    if ([deviceString isEqualToString:[FederalData sharedInstance].app_journalistViseInfoContent]) return [FederalData sharedInstance].main_acknowledgeSummitData;//国行、日版、港行

    //: if ([deviceString isEqualToString:@"iPhone9,2"]) return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:[FederalData sharedInstance].kSizeValue]) return [FederalData sharedInstance].mainHemeName;//港行、国行
    //: if ([deviceString isEqualToString:@"iPhone9,3"]) return @"iPhone 7";
    if ([deviceString isEqualToString:[FederalData sharedInstance].user_accelerateText]) return [FederalData sharedInstance].main_acknowledgeSummitData;//美版、台版
    //: if ([deviceString isEqualToString:@"iPhone9,4"]) return @"iPhone 7 Plus";
    if ([deviceString isEqualToString:[FederalData sharedInstance].app_reputationValue]) return [FederalData sharedInstance].mainHemeName;//美版、台版

    //: if ([deviceString isEqualToString:@"iPhone10,1"]) return @"iPhone 8";
    if ([deviceString isEqualToString:[FederalData sharedInstance].userEcruProtectionData]) return [FederalData sharedInstance].notiEndData;//国行(A1863)、日行(A1906)

    //: if ([deviceString isEqualToString:@"iPhone10,4"]) return @"iPhone 8";
    if ([deviceString isEqualToString:[FederalData sharedInstance].mTaiData]) return [FederalData sharedInstance].notiEndData;//美版(Global/A1905)

    //: if ([deviceString isEqualToString:@"iPhone10,2"]) return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:[FederalData sharedInstance].m_ripData]) return [FederalData sharedInstance].appSessionConcreteData;//国行(A1864)、日行(A1898)

    //: if ([deviceString isEqualToString:@"iPhone10,5"]) return @"iPhone 8 Plus";
    if ([deviceString isEqualToString:[FederalData sharedInstance].show_presentDrugName]) return [FederalData sharedInstance].appSessionConcreteData;//美版(Global/A1897)

    //: if ([deviceString isEqualToString:@"iPhone10,3"]) return @"iPhone X";
    if ([deviceString isEqualToString:[FederalData sharedInstance].k_madData]) return [FederalData sharedInstance].app_worryName;//国行(A1865)、日行(A1902)

    //: if ([deviceString isEqualToString:@"iPhone10,6"]) return @"iPhone X";
    if ([deviceString isEqualToString:[FederalData sharedInstance].user_colorTitle]) return [FederalData sharedInstance].app_worryName;//美版(Global/A1901)


    //: if ([deviceString isEqualToString:@"iPhone12,1"]) return @"iPhone 11";
    if ([deviceString isEqualToString:[FederalData sharedInstance].show_organizationalContent]) return [FederalData sharedInstance].notiDropTitle;

    //: if ([deviceString isEqualToString:@"iPhone12,3"]) return @"iPhone 11 Pro";
    if ([deviceString isEqualToString:[FederalData sharedInstance].k_provideValue]) return [FederalData sharedInstance].kPresentMediaOrganizationalData;

    //: if ([deviceString isEqualToString:@"iPhone12,5"]) return @"iPhone 11 Pro Max";
    if ([deviceString isEqualToString:[FederalData sharedInstance].dream_reliefTitle]) return [FederalData sharedInstance].userSolidValue;

    //: if ([deviceString isEqualToString:@"x86_64"]) return @"iPhone13";
    if ([deviceString isEqualToString:[FederalData sharedInstance].dream_placeData]) return [FederalData sharedInstance].notiSpecifyTitle;



    //: return deviceString;
    return deviceString;
}

//: @end
@end