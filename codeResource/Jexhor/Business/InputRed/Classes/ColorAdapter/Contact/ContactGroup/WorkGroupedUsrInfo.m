// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESGroupedUsrInfo.m
//  NIM
//
//  Created by Xuhui on 15/3/24.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkGroupedUsrInfo.h"
#import "WorkGroupedUsrInfo.h"
//: #import "WorkSpellingCenter.h"
#import "ContentRed.h"
//: #import "WorkKitInfoFetchOption.h"
#import "RangeOption.h"

//: @interface NIMGroupUser()
@interface RedUser()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) WorkKitInfo *info;
@property (nonatomic,strong) ConfirmationInfo *info;

//: @end
@end

//: @implementation NIMGroupUser
@implementation RedUser

//: - (instancetype)initWithUserId:(NSString *)userId{
- (instancetype)initWithTitle:(NSString *)userId{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:nil];
        _info = [[MessageContent secretResolution] recent:userId blue:nil];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)quick{
    //: NSString *title = [[WorkSpellingCenter sharedCenter] firstLetter:self.info.showName].capitalizedString;
    NSString *title = [[ContentRed bar] lightGreen:self.info.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.userId;
    return self.userId;
}

//: - (id)sortKey{
- (id)screenSortFormat{
    //: return [[WorkSpellingCenter sharedCenter] spellingForString:self.info.showName].shortSpelling;
    return [[ContentRed bar] baleOut:self.info.showName].shortSpelling;
}

//: - (UIImage *)avatarImage {
- (UIImage *)modelBy {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}


//: - (NSString *)avatarUrlString {
- (NSString *)belowGlobal {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}


//: @end
@end

//: @interface NIMGroupTeamMember()
@interface LineMember()

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;
//: @property (nonatomic,strong) WorkKitInfo *info;
@property (nonatomic,strong) ConfirmationInfo *info;

//: @end
@end

//: @implementation NIMGroupTeamMember
@implementation LineMember

//: - (instancetype)initWithUserId:(NSString *)userId
- (instancetype)initWithTeamRead:(NSString *)userId
                       //: session:(NIMSession *)session {
                       groupDiscussion:(NIMSession *)session {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _userId = userId;
        _userId = userId;
        //: WorkKitInfoFetchOption *option = [[WorkKitInfoFetchOption alloc] init];
        RangeOption *option = [[RangeOption alloc] init];
        //: option.session = session;
        option.session = session;
        //: _info = [[MyUserKit sharedKit] infoByUser:userId option:option];
        _info = [[MessageContent secretResolution] recent:userId blue:option];
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)quick{
    //: NSString *title = [[WorkSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[ContentRed bar] lightGreen:self.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (id)sortKey{
- (id)screenSortFormat{
    //: return [[WorkSpellingCenter sharedCenter] spellingForString:self.showName].shortSpelling;
    return [[ContentRed bar] baleOut:self.showName].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.userId;
    return self.userId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)modelBy {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)belowGlobal {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end

//: @interface NIMGroupTeam()
@interface SendSame()

//: @property (nonatomic,copy) NSString *teamId;
@property (nonatomic,copy) NSString *teamId;
//: @property (nonatomic,strong) WorkKitInfo *info;
@property (nonatomic,strong) ConfirmationInfo *info;

//: @end
@end

//: @implementation NIMGroupTeam
@implementation SendSame

//: - (instancetype)initWithTeamId:(NSString *)teamId
- (instancetype)initWithDisable:(NSString *)teamId
                      //: teamType:(NIMKitTeamType)teamType {
                      house:(NIMKitTeamType)teamType {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = teamId;
        _teamId = teamId;
        //: if (teamType == NIMKitTeamTypeNomal) {
        if (teamType == NIMKitTeamTypeNomal) {
            //: _info = [[MyUserKit sharedKit] infoByTeam:teamId option:nil];
            _info = [[MessageContent secretResolution] info:teamId comment:nil];
        //: } else if (teamType == NIMKitTeamTypeSuper) {
        } else if (teamType == NIMKitTeamTypeSuper) {
            //: _info = [[MyUserKit sharedKit] infoBySuperTeam:teamId option:nil];
            _info = [[MessageContent secretResolution] item:teamId pit:nil];
        }
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)quick{
    //: NSString *title = [[WorkSpellingCenter sharedCenter] firstLetter:self.showName].capitalizedString;
    NSString *title = [[ContentRed bar] lightGreen:self.showName].capitalizedString;
    //: unichar character = [title characterAtIndex:0];
    unichar character = [title characterAtIndex:0];
    //: if (character >= 'A' && character <= 'Z') {
    if (character >= 'A' && character <= 'Z') {
        //: return title;
        return title;
    //: }else{
    }else{
        //: return @"#";
        return @"#";
    }
}

//: - (id)sortKey{
- (id)screenSortFormat{
    //: return [[WorkSpellingCenter sharedCenter] spellingForString:[self showName]].shortSpelling;
    return [[ContentRed bar] baleOut:[self showName]].shortSpelling;
}

//: - (NSString *)showName{
- (NSString *)showName{
    //: return self.info.showName;
    return self.info.showName;
}

//: - (NSString *)memberId{
- (NSString *)memberId{
    //: return self.teamId;
    return self.teamId;
}

//: - (UIImage *)avatarImage {
- (UIImage *)modelBy {
    //: return self.info.avatarImage;
    return self.info.avatarImage;
}

//: - (NSString *)avatarUrlString {
- (NSString *)belowGlobal {
    //: return self.info.avatarUrlString;
    return self.info.avatarUrlString;
}

//: @end
@end
