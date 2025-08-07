
#import <Foundation/Foundation.h>

typedef struct {
    Byte intervalerest;
    Byte *tank;
    unsigned int housing;
} StructDecorData;

@interface DecorData : NSObject

@end

@implementation DecorData

+ (Byte *)DecorDataToByte:(StructDecorData *)data {
    for (int i = 0; i < data->housing; i++) {
        data->tank[i] ^= data->intervalerest;
    }
    data->tank[data->housing] = 0;
    return data->tank;
}

+ (NSString *)StringFromDecorData:(StructDecorData *)data {
    return [NSString stringWithUTF8String:(char *)[self DecorDataToByte:data]];
}

//: headerTitle
+ (NSString *)noti_helpfulAcknowledgePath {
    /* static */ NSString *noti_helpfulAcknowledgePath = nil;
    if (!noti_helpfulAcknowledgePath) {
        StructDecorData value = (StructDecorData){191, (Byte []){215, 218, 222, 219, 218, 205, 235, 214, 203, 211, 218, 92}, 11};
        noti_helpfulAcknowledgePath = [self StringFromDecorData:&value];
    }
    return noti_helpfulAcknowledgePath;
}

//: title
+ (NSString *)k_digTitle {
    /* static */ NSString *k_digTitle = nil;
    if (!k_digTitle) {
        StructDecorData value = (StructDecorData){45, (Byte []){89, 68, 89, 65, 72, 154}, 5};
        k_digTitle = [self StringFromDecorData:&value];
    }
    return k_digTitle;
}

//: forbidSelect
+ (NSString *)kMageName {
    /* static */ NSString *kMageName = nil;
    if (!kMageName) {
        StructDecorData value = (StructDecorData){159, (Byte []){249, 240, 237, 253, 246, 251, 204, 250, 243, 250, 252, 235, 44}, 12};
        kMageName = [self StringFromDecorData:&value];
    }
    return kMageName;
}

//: footerTitle
+ (NSString *)mHomeData {
    /* static */ NSString *mHomeData = nil;
    if (!mHomeData) {
        StructDecorData value = (StructDecorData){107, (Byte []){13, 4, 4, 31, 14, 25, 63, 2, 31, 7, 14, 70}, 11};
        mHomeData = [self StringFromDecorData:&value];
    }
    return mHomeData;
}

//: language
+ (NSString *)userMessageContent {
    /* static */ NSString *userMessageContent = nil;
    if (!userMessageContent) {
        StructDecorData value = (StructDecorData){188, (Byte []){208, 221, 210, 219, 201, 221, 219, 217, 97}, 8};
        userMessageContent = [self StringFromDecorData:&value];
    }
    return userMessageContent;
}

//: action
+ (NSString *)mJarTotalmaId {
    /* static */ NSString *mJarTotalmaId = nil;
    if (!mJarTotalmaId) {
        StructDecorData value = (StructDecorData){110, (Byte []){15, 13, 26, 7, 1, 0, 70}, 6};
        mJarTotalmaId = [self StringFromDecorData:&value];
    }
    return mJarTotalmaId;
}

//: accessory
+ (NSString *)kExposeStr {
    /* static */ NSString *kExposeStr = nil;
    if (!kExposeStr) {
        StructDecorData value = (StructDecorData){185, (Byte []){216, 218, 218, 220, 202, 202, 214, 203, 192, 69}, 9};
        kExposeStr = [self StringFromDecorData:&value];
    }
    return kExposeStr;
}

//: extraInfo
+ (NSString *)dreamMoralStemKey {
    /* static */ NSString *dreamMoralStemKey = nil;
    if (!dreamMoralStemKey) {
        StructDecorData value = (StructDecorData){119, (Byte []){18, 15, 3, 5, 22, 62, 25, 17, 24, 91}, 9};
        dreamMoralStemKey = [self StringFromDecorData:&value];
    }
    return dreamMoralStemKey;
}

//: detailTitle
+ (NSString *)user_statId {
    /* static */ NSString *user_statId = nil;
    if (!user_statId) {
        StructDecorData value = (StructDecorData){104, (Byte []){12, 13, 28, 9, 1, 4, 60, 1, 28, 4, 13, 97}, 11};
        user_statId = [self StringFromDecorData:&value];
    }
    return user_statId;
}

//: rowHeight
+ (NSString *)show_directTitle {
    /* static */ NSString *show_directTitle = nil;
    if (!show_directTitle) {
        StructDecorData value = (StructDecorData){105, (Byte []){27, 6, 30, 33, 12, 0, 14, 1, 29, 33}, 9};
        show_directTitle = [self StringFromDecorData:&value];
    }
    return show_directTitle;
}

//: disableUserInteraction
+ (NSString *)dream_choiceStr {
    /* static */ NSString *dream_choiceStr = nil;
    if (!dream_choiceStr) {
        StructDecorData value = (StructDecorData){43, (Byte []){79, 66, 88, 74, 73, 71, 78, 126, 88, 78, 89, 98, 69, 95, 78, 89, 74, 72, 95, 66, 68, 69, 202}, 22};
        dream_choiceStr = [self StringFromDecorData:&value];
    }
    return dream_choiceStr;
}

//: cellClass
+ (NSString *)m_veteranMsg {
    /* static */ NSString *m_veteranMsg = nil;
    if (!m_veteranMsg) {
        StructDecorData value = (StructDecorData){55, (Byte []){84, 82, 91, 91, 116, 91, 86, 68, 68, 212}, 9};
        m_veteranMsg = [self StringFromDecorData:&value];
    }
    return m_veteranMsg;
}

//: disable
+ (NSString *)dreamFactId {
    /* static */ NSString *dreamFactId = nil;
    if (!dreamFactId) {
        StructDecorData value = (StructDecorData){209, (Byte []){181, 184, 162, 176, 179, 189, 180, 36}, 7};
        dreamFactId = [self StringFromDecorData:&value];
    }
    return dreamFactId;
}

//: footerHeight
+ (NSString *)dreamScienceKey {
    /* static */ NSString *dreamScienceKey = nil;
    if (!dreamScienceKey) {
        StructDecorData value = (StructDecorData){227, (Byte []){133, 140, 140, 151, 134, 145, 171, 134, 138, 132, 139, 151, 49}, 12};
        dreamScienceKey = [self StringFromDecorData:&value];
    }
    return dreamScienceKey;
}

//: row
+ (NSString *)appAchievementUrl {
    /* static */ NSString *appAchievementUrl = nil;
    if (!appAchievementUrl) {
        StructDecorData value = (StructDecorData){101, (Byte []){23, 10, 18, 70}, 3};
        appAchievementUrl = [self StringFromDecorData:&value];
    }
    return appAchievementUrl;
}

//: headerHeight
+ (NSString *)main_cageStr {
    /* static */ NSString *main_cageStr = nil;
    if (!main_cageStr) {
        StructDecorData value = (StructDecorData){59, (Byte []){83, 94, 90, 95, 94, 73, 115, 94, 82, 92, 83, 79, 214}, 12};
        main_cageStr = [self StringFromDecorData:&value];
    }
    return main_cageStr;
}

//: leftEdge
+ (NSString *)main_destinationPath {
    /* static */ NSString *main_destinationPath = nil;
    if (!main_destinationPath) {
        StructDecorData value = (StructDecorData){104, (Byte []){4, 13, 14, 28, 45, 12, 15, 13, 151}, 8};
        main_destinationPath = [self StringFromDecorData:&value];
    }
    return main_destinationPath;
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
@implementation TeamShared

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithFullMoon:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[DecorData dreamFactId]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _headerTitle = dict[@"headerTitle"];
        _headerTitle = dict[[DecorData noti_helpfulAcknowledgePath]];
        //: _footerTitle = dict[@"footerTitle"];
        _footerTitle = dict[[DecorData mHomeData]];
        //: _uiFooterHeight = [dict[@"footerHeight"] floatValue];
        _uiFooterHeight = [dict[[DecorData dreamScienceKey]] floatValue];
        //: _uiHeaderHeight = [dict[@"headerHeight"] floatValue];
        _uiHeaderHeight = [dict[[DecorData main_cageStr]] floatValue];
        //: _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        _uiHeaderHeight = _uiHeaderHeight ? _uiHeaderHeight : 44.f;
        //: _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        _uiFooterHeight = _uiFooterHeight ? _uiFooterHeight : 44.f;
        //: _rows = [NIMCommonTableRow rowsWithData:dict[@"row"]];
        _rows = [DeviceRow thumbData:dict[[DecorData appAchievementUrl]]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)sectionsWithData:(NSArray *)data{
+ (NSArray *)quantity:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableSection * section = [[NIMCommonTableSection alloc] initWithDict:dict];
            TeamShared * section = [[TeamShared alloc] initWithFullMoon:dict];
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
@implementation DeviceRow

//: - (instancetype) initWithDict:(NSDictionary *)dict{
- (instancetype) initWithPlace:(NSDictionary *)dict{
    //: if ([dict[@"disable"] boolValue]) {
    if ([dict[[DecorData dreamFactId]] boolValue]) {
        //: return nil;
        return nil;
    }
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _title = dict[@"title"];
        _title = dict[[DecorData k_digTitle]];
        //: _detailTitle = dict[@"detailTitle"];
        _detailTitle = dict[[DecorData user_statId]];
        //: _cellClassName = dict[@"cellClass"];
        _cellClassName = dict[[DecorData m_veteranMsg]];
        //: _cellActionName = dict[@"action"];
        _cellActionName = dict[[DecorData mJarTotalmaId]];
        //: _uiRowHeight = dict[@"rowHeight"] ? [dict[@"rowHeight"] floatValue] : 50.f;
        _uiRowHeight = dict[[DecorData show_directTitle]] ? [dict[[DecorData show_directTitle]] floatValue] : 50.f;
        //: _extraInfo = dict[@"extraInfo"];
        _extraInfo = dict[[DecorData dreamMoralStemKey]];
        //: _sepLeftEdge = [dict[@"leftEdge"] floatValue];
        _sepLeftEdge = [dict[[DecorData main_destinationPath]] floatValue];
        //: _showAccessory = [dict[@"accessory"] boolValue];
        _showAccessory = [dict[[DecorData kExposeStr]] boolValue];
        //: _forbidSelect = [dict[@"forbidSelect"] boolValue];
        _forbidSelect = [dict[[DecorData kMageName]] boolValue];
        //: _userInteractionDisable = [dict[@"disableUserInteraction"] boolValue];
        _userInteractionDisable = [dict[[DecorData dream_choiceStr]] boolValue];
        //: _language = dict[@"language"];
        _language = dict[[DecorData userMessageContent]];
    }
    //: return self;
    return self;
}

//: + (NSArray *)rowsWithData:(NSArray *)data{
+ (NSArray *)thumbData:(NSArray *)data{
    //: NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:data.count];
    //: for (NSDictionary *dict in data) {
    for (NSDictionary *dict in data) {
        //: if ([dict isKindOfClass:[NSDictionary class]]) {
        if ([dict isKindOfClass:[NSDictionary class]]) {
            //: NIMCommonTableRow * row = [[NIMCommonTableRow alloc] initWithDict:dict];
            DeviceRow * row = [[DeviceRow alloc] initWithPlace:dict];
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