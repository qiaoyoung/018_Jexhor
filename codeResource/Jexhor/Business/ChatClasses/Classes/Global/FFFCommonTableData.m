
#import <Foundation/Foundation.h>

@interface ConvinceData : NSObject

@end

@implementation ConvinceData

+ (Byte *)ConvinceDataToCache:(Byte *)data {
    int tradeExpense = data[0];
    Byte showArrest = data[1];
    int targetNor = data[2];
    for (int i = targetNor; i < targetNor + tradeExpense; i++) {
        int value = data[i] + showArrest;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[targetNor + tradeExpense] = 0;
    return data + targetNor;
}

+ (NSString *)StringFromConvinceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ConvinceDataToCache:data]];
}

//: accessory
+ (NSString *)noti_quickValue {
    /* static */ NSString *noti_quickValue = nil;
    if (!noti_quickValue) {
        Byte value[] = {9, 73, 10, 209, 151, 104, 254, 189, 179, 194, 24, 26, 26, 28, 42, 42, 38, 41, 48, 74};
        noti_quickValue = [self StringFromConvinceData:value];
    }
    return noti_quickValue;
}

//: forbidSelect
+ (NSString *)show_reasonData {
    /* static */ NSString *show_reasonData = nil;
    if (!show_reasonData) {
        Byte value[] = {12, 21, 5, 238, 159, 81, 90, 93, 77, 84, 79, 62, 80, 87, 80, 78, 95, 51};
        show_reasonData = [self StringFromConvinceData:value];
    }
    return show_reasonData;
}

//: language
+ (NSString *)main_shouldText {
    /* static */ NSString *main_shouldText = nil;
    if (!main_shouldText) {
        Byte value[] = {8, 75, 6, 119, 9, 1, 33, 22, 35, 28, 42, 22, 28, 26, 32};
        main_shouldText = [self StringFromConvinceData:value];
    }
    return main_shouldText;
}

//: row
+ (NSString *)notiUniteContent {
    /* static */ NSString *notiUniteContent = nil;
    if (!notiUniteContent) {
        Byte value[] = {3, 48, 12, 129, 252, 227, 92, 12, 220, 244, 139, 140, 66, 63, 71, 246};
        notiUniteContent = [self StringFromConvinceData:value];
    }
    return notiUniteContent;
}

//: footerTitle
+ (NSString *)userCessionValue {
    /* static */ NSString *userCessionValue = nil;
    if (!userCessionValue) {
        Byte value[] = {11, 72, 5, 72, 219, 30, 39, 39, 44, 29, 42, 12, 33, 44, 36, 29, 247};
        userCessionValue = [self StringFromConvinceData:value];
    }
    return userCessionValue;
}

//: extraInfo
+ (NSString *)notiSumellectualValue {
    /* static */ NSString *notiSumellectualValue = nil;
    if (!notiSumellectualValue) {
        Byte value[] = {9, 57, 8, 58, 241, 224, 48, 87, 44, 63, 59, 57, 40, 16, 53, 45, 54, 141};
        notiSumellectualValue = [self StringFromConvinceData:value];
    }
    return notiSumellectualValue;
}

//: headerTitle
+ (NSString *)k_troopText {
    /* static */ NSString *k_troopText = nil;
    if (!k_troopText) {
        Byte value[] = {11, 13, 13, 67, 174, 193, 36, 86, 141, 155, 124, 209, 48, 91, 88, 84, 87, 88, 101, 71, 92, 103, 95, 88, 230};
        k_troopText = [self StringFromConvinceData:value];
    }
    return k_troopText;
}

//: rowHeight
+ (NSString *)mTargetContent {
    /* static */ NSString *mTargetContent = nil;
    if (!mTargetContent) {
        Byte value[] = {9, 74, 5, 241, 7, 40, 37, 45, 254, 27, 31, 29, 30, 42, 201};
        mTargetContent = [self StringFromConvinceData:value];
    }
    return mTargetContent;
}

//: disable
+ (NSString *)kClinicalData {
    /* static */ NSString *kClinicalData = nil;
    if (!kClinicalData) {
        Byte value[] = {7, 87, 8, 226, 188, 157, 7, 178, 13, 18, 28, 10, 11, 21, 14, 39};
        kClinicalData = [self StringFromConvinceData:value];
    }
    return kClinicalData;
}

//: detailTitle
+ (NSString *)notiBeastContent {
    /* static */ NSString *notiBeastContent = nil;
    if (!notiBeastContent) {
        Byte value[] = {11, 55, 10, 110, 50, 250, 17, 95, 47, 170, 45, 46, 61, 42, 50, 53, 29, 50, 61, 53, 46, 92};
        notiBeastContent = [self StringFromConvinceData:value];
    }
    return notiBeastContent;
}

//: title
+ (NSString *)showAcknowledgeName {
    /* static */ NSString *showAcknowledgeName = nil;
    if (!showAcknowledgeName) {
        Byte value[] = {5, 72, 8, 30, 239, 180, 169, 146, 44, 33, 44, 36, 29, 115};
        showAcknowledgeName = [self StringFromConvinceData:value];
    }
    return showAcknowledgeName;
}

//: cellClass
+ (NSString *)k_harkBondText {
    /* static */ NSString *k_harkBondText = nil;
    if (!k_harkBondText) {
        Byte value[] = {9, 72, 10, 23, 93, 145, 207, 134, 93, 13, 27, 29, 36, 36, 251, 36, 25, 43, 43, 27};
        k_harkBondText = [self StringFromConvinceData:value];
    }
    return k_harkBondText;
}

//: headerHeight
+ (NSString *)k_sterolHarmValue {
    /* static */ NSString *k_sterolHarmValue = nil;
    if (!k_sterolHarmValue) {
        Byte value[] = {12, 79, 5, 143, 148, 25, 22, 18, 21, 22, 35, 249, 22, 26, 24, 25, 37, 127};
        k_sterolHarmValue = [self StringFromConvinceData:value];
    }
    return k_sterolHarmValue;
}

//: leftEdge
+ (NSString *)showNurseName {
    /* static */ NSString *showNurseName = nil;
    if (!showNurseName) {
        Byte value[] = {8, 69, 6, 141, 35, 216, 39, 32, 33, 47, 0, 31, 34, 32, 151};
        showNurseName = [self StringFromConvinceData:value];
    }
    return showNurseName;
}

//: footerHeight
+ (NSString *)k_colorValue {
    /* static */ NSString *k_colorValue = nil;
    if (!k_colorValue) {
        Byte value[] = {12, 22, 5, 51, 195, 80, 89, 89, 94, 79, 92, 50, 79, 83, 81, 82, 94, 92};
        k_colorValue = [self StringFromConvinceData:value];
    }
    return k_colorValue;
}

//: disableUserInteraction
+ (NSString *)mainInningData {
    /* static */ NSString *mainInningData = nil;
    if (!mainInningData) {
        Byte value[] = {22, 88, 9, 119, 153, 115, 103, 117, 177, 12, 17, 27, 9, 10, 20, 13, 253, 27, 13, 26, 241, 22, 28, 13, 26, 9, 11, 28, 17, 23, 22, 71};
        mainInningData = [self StringFromConvinceData:value];
    }
    return mainInningData;
}

//: action
+ (NSString *)mSessionHideTitle {
    /* static */ NSString *mSessionHideTitle = nil;
    if (!mSessionHideTitle) {
        Byte value[] = {6, 32, 8, 164, 51, 47, 148, 50, 65, 67, 84, 73, 79, 78, 229};
        mSessionHideTitle = [self StringFromConvinceData:value];
    }
    return mSessionHideTitle;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFCommonTableData.m
//  NIM
//
//  Created by chris on 15/6/26.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"

//: @implementation NIMCommonTableSection
@implementation LigatureSection

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithBehindChild:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[ConvinceData kClinicalData]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[[ConvinceData k_troopText]];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[[ConvinceData userCessionValue]];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[[ConvinceData k_colorValue]] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[[ConvinceData k_sterolHarmValue]] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [ConstituentRow image:dict[[ConvinceData notiUniteContent]]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)with:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            LigatureSection * section = [[LigatureSection alloc] initWithBehindChild:dict];
            //: if (section) {
            if (section) {
                //: [array addObject:section];
                [array addObject:section];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end



//: @implementation NIMCommonTableRow
@implementation ConstituentRow

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithContent:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[ConvinceData kClinicalData]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[[ConvinceData showAcknowledgeName]];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[[ConvinceData notiBeastContent]];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[[ConvinceData k_harkBondText]];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[[ConvinceData mSessionHideTitle]];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[[ConvinceData mTargetContent]] ? [dict[[ConvinceData mTargetContent]] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[[ConvinceData notiSumellectualValue]];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[[ConvinceData showNurseName]] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[[ConvinceData noti_quickValue]] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[[ConvinceData show_reasonData]] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[[ConvinceData mainInningData]] boolValue];
        //: _language = dict[@"language"];
        _language = dict[[ConvinceData main_shouldText]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)image:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            ConstituentRow * row = [[ConstituentRow alloc] initWithContent:dict];
            //: if (row) {
            if (row) {
                //: [array addObject:row];
                [array addObject:row];
            }
        }
    }
    //: return array;
    return array;
}


//: @end
@end