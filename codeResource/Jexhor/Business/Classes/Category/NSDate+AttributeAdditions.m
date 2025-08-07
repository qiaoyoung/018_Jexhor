
#import <Foundation/Foundation.h>

@interface FrozenData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation FrozenData

+ (instancetype)sharedInstance {
    static FrozenData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FrozenDataToCache:(Byte *)data {
    int maxTitle = data[0];
    Byte sessionPower = data[1];
    int brownHospital = data[2];
    for (int i = brownHospital; i < brownHospital + maxTitle; i++) {
        int value = data[i] - sessionPower;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[brownHospital + maxTitle] = 0;
    return data + brownHospital;
}

- (NSString *)StringFromFrozenData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self FrozenDataToCache:data]];
}

//: before_yesterday
- (NSString *)userReinforceText {
    /* static */ NSString *userReinforceText = nil;
    if (!userReinforceText) {
        Byte value[] = {16, 79, 12, 96, 55, 96, 125, 254, 92, 4, 82, 57, 177, 180, 181, 190, 193, 180, 174, 200, 180, 194, 195, 180, 193, 179, 176, 200, 10};
        userReinforceText = [self StringFromFrozenData:value];
    }
    return userReinforceText;
}

//: %d分钟前更新
- (NSString *)main_blueMsg {
    /* static */ NSString *main_blueMsg = nil;
    if (!main_blueMsg) {
        Byte value[] = {17, 80, 13, 209, 147, 156, 41, 242, 170, 36, 56, 62, 198, 117, 180, 53, 216, 214, 57, 226, 239, 53, 217, 221, 54, 235, 4, 54, 230, 0, 151};
        main_blueMsg = [self StringFromFrozenData:value];
    }
    return main_blueMsg;
}

//: yesterday
- (NSString *)main_versionMilkFormat {
    /* static */ NSString *main_versionMilkFormat = nil;
    if (!main_versionMilkFormat) {
        Byte value[] = {9, 59, 9, 247, 26, 142, 228, 69, 254, 180, 160, 174, 175, 160, 173, 159, 156, 180, 154};
        main_versionMilkFormat = [self StringFromFrozenData:value];
    }
    return main_versionMilkFormat;
}

//: yyyy.MM.dd更新
- (NSString *)dream_legislatureStr {
    /* static */ NSString *dream_legislatureStr = nil;
    if (!dream_legislatureStr) {
        Byte value[] = {16, 82, 6, 23, 121, 61, 203, 203, 203, 203, 128, 159, 159, 128, 182, 182, 56, 237, 6, 56, 232, 2, 71};
        dream_legislatureStr = [self StringFromFrozenData:value];
    }
    return dream_legislatureStr;
}

//: yyyy-MM-dd
- (NSString *)kViewTitle {
    /* static */ NSString *kViewTitle = nil;
    if (!kViewTitle) {
        Byte value[] = {10, 86, 5, 9, 227, 207, 207, 207, 207, 131, 163, 163, 131, 186, 186, 100};
        kViewTitle = [self StringFromFrozenData:value];
    }
    return kViewTitle;
}

//: %d小时前
- (NSString *)appRoughItPath {
    /* static */ NSString *appRoughItPath = nil;
    if (!appRoughItPath) {
        Byte value[] = {11, 3, 7, 127, 72, 143, 7, 40, 103, 232, 179, 146, 233, 154, 185, 232, 140, 144, 253};
        appRoughItPath = [self StringFromFrozenData:value];
    }
    return appRoughItPath;
}

//: %d小时前更新
- (NSString *)showNimId {
    /* static */ NSString *showNimId = nil;
    if (!showNimId) {
        Byte value[] = {17, 2, 12, 243, 27, 81, 85, 180, 144, 109, 8, 160, 39, 102, 231, 178, 145, 232, 153, 184, 231, 139, 143, 232, 157, 182, 232, 152, 178, 105};
        showNimId = [self StringFromFrozenData:value];
    }
    return showNimId;
}

//: %d分钟前
- (NSString *)userExplosionName {
    /* static */ NSString *userExplosionName = nil;
    if (!userExplosionName) {
        Byte value[] = {11, 78, 3, 115, 178, 51, 214, 212, 55, 224, 237, 51, 215, 219, 254};
        userExplosionName = [self StringFromFrozenData:value];
    }
    return userExplosionName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NSDate+KIDate.m
//  Kitalker
//
//  Created by 杨 烽 on 12-8-30.
//
//

// __M_A_C_R_O__
//: #import "NSDate+KIAdditions.h"
#import "NSDate+AttributeAdditions.h"

//: @implementation NSDate (KIAdditions)
@implementation NSDate (AttributeAdditions)


//: + (NSString *)day:(NSDate*)date {
+ (NSString *)day:(NSDate*)date {
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: return [dateFormatter day:date];
    return [dateFormatter changeMessage:date];
}

//: + (NSString *)weekday:(NSDate*)date {
+ (NSString *)message:(NSDate*)date {
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: return [dateFormatter weekday:date];
    return [dateFormatter textEnd:date];
}

//: + (NSString *)month:(NSDate*)date {
+ (NSString *)month:(NSDate*)date {
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: return [dateFormatter month:date];
    return [dateFormatter can:date];
}

//: + (NSString *)year:(NSDate*)date {
+ (NSString *)year:(NSDate*)date {
    //: NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //: return [dateFormatter year:date];
    return [dateFormatter buttonWindow:date];
}

//: + (NSCalendar *)calendar:(NSDate*)date {
+ (NSCalendar *)show:(NSDate*)date {
    //: NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    //    [calendar setTimeZone:[NSTimeZone systemTimeZone]];
    //: return calendar;
    return calendar;
}

//: + (int)numberOfDaysInMonth:(NSDate*)date {
+ (int)pseudonym:(NSDate*)date {
    //: return (int)[[NSDate calendar:date] rangeOfUnit:NSCalendarUnitDay
    return (int)[[NSDate show:date] rangeOfUnit:NSCalendarUnitDay
                                             //: inUnit:NSCalendarUnitMonth
                                             inUnit:NSCalendarUnitMonth
                                            //: forDate:date].length;
                                            forDate:date].length;
}

//: + (int)weeksOfMonth:(NSDate*)date {
+ (int)selectMonth:(NSDate*)date {
    //: return (int)[[NSDate calendar:date] rangeOfUnit:NSCalendarUnitWeekOfMonth
    return (int)[[NSDate show:date] rangeOfUnit:NSCalendarUnitWeekOfMonth
                                             //: inUnit:NSCalendarUnitMonth
                                             inUnit:NSCalendarUnitMonth
                                            //: forDate:date].length;
                                            forDate:date].length;
}

//: - (BOOL)isBefore:(NSDate *)date {
- (BOOL)frameBefore:(NSDate *)date {
    //: NSTimeInterval selfTimeInterval = [self timeIntervalSince1970];
    NSTimeInterval selfTimeInterval = [self timeIntervalSince1970];
    //: NSTimeInterval dateTimeInterval = [date timeIntervalSince1970];
    NSTimeInterval dateTimeInterval = [date timeIntervalSince1970];
    //: if (selfTimeInterval < dateTimeInterval) {
    if (selfTimeInterval < dateTimeInterval) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

//: - (BOOL)isAfter:(NSDate *)date {
- (BOOL)hide:(NSDate *)date {
    //: NSTimeInterval selfTimeInterval = [self timeIntervalSince1970];
    NSTimeInterval selfTimeInterval = [self timeIntervalSince1970];
    //: NSTimeInterval dateTimeInterval = [date timeIntervalSince1970];
    NSTimeInterval dateTimeInterval = [date timeIntervalSince1970];
    //: if (selfTimeInterval > dateTimeInterval) {
    if (selfTimeInterval > dateTimeInterval) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}
/*是否在某个时间闭区间之间*/
//: - (BOOL)isBetween:(NSDate *)startDate and:(NSDate *)endDate
- (BOOL)nett:(NSDate *)startDate ting:(NSDate *)endDate
{
    //: NSTimeInterval selfTimeInterval = [self timeIntervalSince1970];
    NSTimeInterval selfTimeInterval = [self timeIntervalSince1970];
    //: NSTimeInterval startTimeInterval = [startDate timeIntervalSince1970];
    NSTimeInterval startTimeInterval = [startDate timeIntervalSince1970];
    //: NSTimeInterval endtTimeInterval = [endDate timeIntervalSince1970];
    NSTimeInterval endtTimeInterval = [endDate timeIntervalSince1970];

    //: if (selfTimeInterval >= startTimeInterval&&selfTimeInterval<=endtTimeInterval) {
    if (selfTimeInterval >= startTimeInterval&&selfTimeInterval<=endtTimeInterval) {
        //: return YES;
        return YES;
    }
    //: return NO;
    return NO;
}

/**
 判断时间是否超过N天了
 date01：需要判断的日期
 */
//: + (BOOL)isDate:(NSDate*)date01 beforeNDays:(NSUInteger)days{
+ (BOOL)table:(NSDate*)date01 ting:(NSUInteger)days{
    //: NSDate *dateNow = [NSDate date];
    NSDate *dateNow = [NSDate date];
    //: NSTimeInterval cha = [dateNow timeIntervalSinceDate:date01];
    NSTimeInterval cha = [dateNow timeIntervalSinceDate:date01];
    //: if (cha>=60*60*24*days) {
    if (cha>=60*60*24*days) {
        //: return YES;
        return YES;
    }
    //: else{
    else{
        //: return NO;
        return NO;
    }
}

//: - (NSDate *)exchangeToBeijingDate{
- (NSDate *)team{

    //: NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSTimeZone *zone = [NSTimeZone systemTimeZone];

    //: NSInteger interval = [zone secondsFromGMTForDate: self];
    NSInteger interval = [zone secondsFromGMTForDate: self];

    //: NSDate *localeDate = [self dateByAddingTimeInterval:interval];
    NSDate *localeDate = [self dateByAddingTimeInterval:interval];

    //: return localeDate;
    return localeDate;
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == 字符串方法
#pragma mark == 字符串方法
//: #pragma mark ==================================================
#pragma mark ==================================================
//: + (NSString*)getStringWithFormatter:(NSString*)formatterString{
+ (NSString*)name:(NSString*)formatterString{
    //: if ((formatterString==nil) || ![formatterString isKindOfClass:[NSString class]]) {
    if ((formatterString==nil) || ![formatterString isKindOfClass:[NSString class]]) {
        //: return nil;
        return nil;
    }

    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:formatterString];
    [formatter setDateFormat:formatterString];
    //: NSString *nowDateString = [formatter stringFromDate:[NSDate date]];
    NSString *nowDateString = [formatter stringFromDate:[NSDate date]];


    //: return nowDateString;
    return nowDateString;
}

//: + (NSDate*)getDateFromString:(NSString*)dateString formatterString:(NSString*)formatterString{
+ (NSDate*)pathName:(NSString*)dateString lifeHistory:(NSString*)formatterString{

    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:formatterString];
    [formatter setDateFormat:formatterString];
    //: NSDate *returnDate = [formatter dateFromString:dateString];
    NSDate *returnDate = [formatter dateFromString:dateString];


    //: return returnDate;
    return returnDate;
}

//: + (NSString*)getStringFromOldDateString:(NSString*)oldDateString
+ (NSString*)withSystem:(NSString*)oldDateString
                       //: withOldFormatter:(NSString*)oldFormatterString
                       reason:(NSString*)oldFormatterString
                           //: newFormatter:(NSString*)newFormatterString {
                           queryedFormatter:(NSString*)newFormatterString {

    //: if (oldDateString==nil || (![oldDateString isKindOfClass:[NSString class]])) {
    if (oldDateString==nil || (![oldDateString isKindOfClass:[NSString class]])) {
        //: return nil;
        return nil;
    }

    //: if (oldFormatterString==nil || (![oldFormatterString isKindOfClass:[NSString class]])) {
    if (oldFormatterString==nil || (![oldFormatterString isKindOfClass:[NSString class]])) {
        //: return nil;
        return nil;
    }

    //: if (newFormatterString==nil || (![newFormatterString isKindOfClass:[NSString class]])) {
    if (newFormatterString==nil || (![newFormatterString isKindOfClass:[NSString class]])) {
        //: return nil;
        return nil;
    }

    //: NSDate *oldDate = [NSDate getDateFromString:oldDateString dateFormatter:oldFormatterString];
    NSDate *oldDate = [NSDate statuteText:oldDateString formatter:oldFormatterString];

    //: NSString *returnString = [NSDate getStringFromDate:oldDate dateFormatter:newFormatterString];
    NSString *returnString = [NSDate showFormatter:oldDate by:newFormatterString];

    //: return returnString;
    return returnString;
}

//: + (NSString*)getStringFromDate:(NSDate*)date dateFormatter:(NSString*)formatterString{
+ (NSString*)showFormatter:(NSDate*)date by:(NSString*)formatterString{

    //: if (formatterString==nil || (![formatterString isKindOfClass:[NSString class]])) {
    if (formatterString==nil || (![formatterString isKindOfClass:[NSString class]])) {
        //: return nil;
        return nil;
    }

    //: if (date==nil || (![date isKindOfClass:[NSDate class]])) {
    if (date==nil || (![date isKindOfClass:[NSDate class]])) {
        //: return nil;
        return nil;
    }

    //: NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    //: [formatter2 setDateFormat:formatterString];
    [formatter2 setDateFormat:formatterString];
    //: NSString *returnString = [formatter2 stringFromDate:date];
    NSString *returnString = [formatter2 stringFromDate:date];

    //: return returnString;
    return returnString;
}

//: + (NSDate*)getDateFromString:(NSString*)string dateFormatter:(NSString*)formatterString{
+ (NSDate*)statuteText:(NSString*)string formatter:(NSString*)formatterString{

    //: if (formatterString==nil || (![formatterString isKindOfClass:[NSString class]])) {
    if (formatterString==nil || (![formatterString isKindOfClass:[NSString class]])) {
        //: return nil;
        return nil;
    }

    //: if (string==nil || (![string isKindOfClass:[NSString class]])) {
    if (string==nil || (![string isKindOfClass:[NSString class]])) {
        //: return nil;
        return nil;
    }

    //: NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    //: [formatter setDateFormat:formatterString];
    [formatter setDateFormat:formatterString];
    //: NSDate *oldDate = [formatter dateFromString:string];
    NSDate *oldDate = [formatter dateFromString:string];


    //: return oldDate;
    return oldDate;
}

//: + (BOOL)isString:(NSString*)date1String01 earlierThanString:(NSString*)date1String02 formatter01:(NSString*)formatter01 formatter02:(NSString*)formatter02{
+ (BOOL)speakChorusLine:(NSString*)date1String01 domainBy:(NSString*)date1String02 user:(NSString*)formatter01 someBalloon:(NSString*)formatter02{

    //: if (date1String01==nil || (![date1String01 isKindOfClass:[NSString class]])) {
    if (date1String01==nil || (![date1String01 isKindOfClass:[NSString class]])) {
        //: return NO;
        return NO;
    }

    //: if (date1String02==nil || (![date1String02 isKindOfClass:[NSString class]])) {
    if (date1String02==nil || (![date1String02 isKindOfClass:[NSString class]])) {
        //: return NO;
        return NO;
    }

    //: if (formatter01==nil || (![formatter01 isKindOfClass:[NSString class]])) {
    if (formatter01==nil || (![formatter01 isKindOfClass:[NSString class]])) {
        //: return NO;
        return NO;
    }

    //: if (formatter02==nil || (![formatter02 isKindOfClass:[NSString class]])) {
    if (formatter02==nil || (![formatter02 isKindOfClass:[NSString class]])) {
        //: return NO;
        return NO;
    }


    //: NSDateFormatter *formatter1 = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter1 = [[NSDateFormatter alloc] init];
    //: [formatter1 setDateFormat:formatter01];
    [formatter1 setDateFormat:formatter01];
    //: NSDate *date1 = [formatter1 dateFromString:date1String01];
    NSDate *date1 = [formatter1 dateFromString:date1String01];

    //: NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    //: [formatter2 setDateFormat:formatter02];
    [formatter2 setDateFormat:formatter02];
    //: NSDate *date2 = [formatter2 dateFromString:date1String02];
    NSDate *date2 = [formatter2 dateFromString:date1String02];

    //: NSTimeInterval before = [date1 timeIntervalSince1970]*1;
    NSTimeInterval before = [date1 timeIntervalSince1970]*1;

    //******************************************************************************************

    //: NSTimeInterval after = [date2 timeIntervalSince1970]*1;
    NSTimeInterval after = [date2 timeIntervalSince1970]*1;

    //******************************************************************************************

    //: NSTimeInterval cha = after - before;
    NSTimeInterval cha = after - before;


    //: if (cha>0) {
    if (cha>0) {
        //: return YES;
        return YES;
    }
    //: else {
    else {
        //: return NO;
        return NO;
    }
}

//: + (BOOL)isDate:(NSDate*)date01 earlierThanDate:(NSDate*)date02{
+ (BOOL)to:(NSDate*)date01 holderRedDate:(NSDate*)date02{

    //: if (date01==nil || (![date01 isKindOfClass:[NSDate class]])) {
    if (date01==nil || (![date01 isKindOfClass:[NSDate class]])) {
        //: return NO;
        return NO;
    }

    //: if (date02==nil || (![date02 isKindOfClass:[NSDate class]])) {
    if (date02==nil || (![date02 isKindOfClass:[NSDate class]])) {
        //: return NO;
        return NO;
    }

    //: NSTimeInterval before = [date01 timeIntervalSince1970]*1;
    NSTimeInterval before = [date01 timeIntervalSince1970]*1;

    //: NSTimeInterval after = [date02 timeIntervalSince1970]*1;
    NSTimeInterval after = [date02 timeIntervalSince1970]*1;


    //: NSTimeInterval cha = after - before;
    NSTimeInterval cha = after - before;


    //: if (cha>0) {
    if (cha>0) {
        //: return YES;
        return YES;
    }
    //: else {
    else {
        //: return NO;
        return NO;
    }
}

//: + (BOOL)isString:(NSString*)date1String01 earlierThanDate:(NSDate*)date02 formatter01:(NSString*)formatter01 {
+ (BOOL)messageAcrossDescription:(NSString*)date1String01 disable01:(NSDate*)date02 barroom01:(NSString*)formatter01 {

    //: if (date1String01==nil || (![date1String01 isKindOfClass:[NSString class]])) {
    if (date1String01==nil || (![date1String01 isKindOfClass:[NSString class]])) {
        //: return NO;
        return NO;
    }

    //: if (formatter01==nil || (![formatter01 isKindOfClass:[NSString class]])) {
    if (formatter01==nil || (![formatter01 isKindOfClass:[NSString class]])) {
        //: return NO;
        return NO;
    }

    //: if (date02==nil || (![date02 isKindOfClass:[NSDate class]])) {
    if (date02==nil || (![date02 isKindOfClass:[NSDate class]])) {
        //: return NO;
        return NO;
    }


    //: NSDateFormatter *formatter1 = [[NSDateFormatter alloc] init];
    NSDateFormatter *formatter1 = [[NSDateFormatter alloc] init];
    //: [formatter1 setDateFormat:formatter01];
    [formatter1 setDateFormat:formatter01];
    //: NSDate *date1 = [formatter1 dateFromString:date1String01];
    NSDate *date1 = [formatter1 dateFromString:date1String01];

    //: NSTimeInterval before = [date1 timeIntervalSince1970]*1;
    NSTimeInterval before = [date1 timeIntervalSince1970]*1;

    //******************************************************************************************

    //: NSTimeInterval after = [date02 timeIntervalSince1970]*1;
    NSTimeInterval after = [date02 timeIntervalSince1970]*1;

    //******************************************************************************************

    //: NSTimeInterval cha = after - before;
    NSTimeInterval cha = after - before;


    //: if (cha>0) {
    if (cha>0) {
        //: return YES;
        return YES;
    }
    //: else {
    else {
        //: return NO;
        return NO;
    }
}

//: + (NSDate *)dateForTodayInClock:(NSInteger)clock
+ (NSDate *)ting:(NSInteger)clock
{
    //: NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    //: NSDateComponents *todayComponents = [gregorian components:(NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitHour) fromDate:[NSDate date]];
    NSDateComponents *todayComponents = [gregorian components:(NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear | NSCalendarUnitHour) fromDate:[NSDate date]];
    //: [todayComponents setHour:clock];
    [todayComponents setHour:clock];
    //: NSDate *theDate = [gregorian dateFromComponents:todayComponents];
    NSDate *theDate = [gregorian dateFromComponents:todayComponents];
    //: return theDate;
    return theDate;
}


//: - (NSString *)normalizeDateString
- (NSString *)messageUnder
{
    //: NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    //: NSUInteger unitFlags = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSUInteger unitFlags = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    //: NSDateComponents *components = [gregorian components:unitFlags fromDate:self toDate:[NSDate date] options:0];
    NSDateComponents *components = [gregorian components:unitFlags fromDate:self toDate:[NSDate date] options:0];
    //: if ([components day] >= 3) {
    if ([components day] >= 3) {
        //: return [NSDate getStringFromDate:self dateFormatter:@"yyyy-MM-dd"];
        return [NSDate showFormatter:self by:[[FrozenData sharedInstance] kViewTitle]];
    //: } else if ([components day] >= 2) {
    } else if ([components day] >= 2) {
        //: return [PushLanguageManager getTextWithKey:@"before_yesterday"];
        return [BackgroundRandomAttribute content:[[FrozenData sharedInstance] userReinforceText]];
    //: } else if ([components day] >= 1) {
    } else if ([components day] >= 1) {
        //: return [PushLanguageManager getTextWithKey:@"yesterday"];
        return [BackgroundRandomAttribute content:[[FrozenData sharedInstance] main_versionMilkFormat]];
    //: } else if ([components hour] > 0) {
    } else if ([components hour] > 0) {
        //: return [NSString stringWithFormat:@"%d小时前", (int)[components hour]];
        return [NSString stringWithFormat:[[FrozenData sharedInstance] appRoughItPath], (int)[components hour]];
    //: } else if ([components minute] > 0) {
    } else if ([components minute] > 0) {
        //: return [NSString stringWithFormat:@"%d分钟前", (int)[components minute]];
        return [NSString stringWithFormat:[[FrozenData sharedInstance] userExplosionName], (int)[components minute]];
    //: } else if ([components second] > 0) {
    } else if ([components second] > 0) {
        //: return [NSString stringWithFormat:@"%d秒前", (int)[components second]];
        return [NSString stringWithFormat:@"%d秒前", (int)[components second]];
    //: } else {
    } else {
        //: return @"刚刚";
        return @"刚刚";
    }
}

//: - (NSString *)normalizeDateString_houseFilter
- (NSString *)icon
{
    //: NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    //: NSUInteger unitFlags = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSUInteger unitFlags = NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    //: NSDateComponents *components = [gregorian components:unitFlags fromDate:self toDate:[NSDate date] options:0];
    NSDateComponents *components = [gregorian components:unitFlags fromDate:self toDate:[NSDate date] options:0];
    //: if ([components day] >= 1) {
    if ([components day] >= 1) {
        //: return [NSDate getStringFromDate:self dateFormatter:@"yyyy.MM.dd更新"];
        return [NSDate showFormatter:self by:[[FrozenData sharedInstance] dream_legislatureStr]];
    //: } else if ([components hour] > 0) {
    } else if ([components hour] > 0) {
        //: return [NSString stringWithFormat:@"%d小时前更新", (int)[components hour]];
        return [NSString stringWithFormat:[[FrozenData sharedInstance] showNimId], (int)[components hour]];
    //: } else if ([components minute] > 0) {
    } else if ([components minute] > 0) {
        //: return [NSString stringWithFormat:@"%d分钟前更新", (int)[components minute]];
        return [NSString stringWithFormat:[[FrozenData sharedInstance] main_blueMsg], (int)[components minute]];
    //: }else {
    }else {
        //: return @"刚刚";
        return @"刚刚";
    }
}





//: @end
@end
