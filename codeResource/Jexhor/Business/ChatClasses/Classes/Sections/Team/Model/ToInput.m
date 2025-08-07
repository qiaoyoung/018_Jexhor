
#import <Foundation/Foundation.h>

typedef struct {
    Byte divineImagePick;
    Byte *straitAndNarrowOtic;
    unsigned int artShoot;
	int guiltyEstablish;
	int celebrityText;
} StructVisionCollarData;

@interface VisionCollarData : NSObject

+ (instancetype)sharedInstance;

//: contact_group_header
@property (nonatomic, copy) NSString *app_bulbPathName;

@end

@implementation VisionCollarData

+ (instancetype)sharedInstance {
    static VisionCollarData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)VisionCollarDataToByte:(StructVisionCollarData *)data {
    for (int i = 0; i < data->artShoot; i++) {
        data->straitAndNarrowOtic[i] ^= data->divineImagePick;
    }
    data->straitAndNarrowOtic[data->artShoot] = 0;
	if (data->artShoot >= 2) {
		data->guiltyEstablish = data->straitAndNarrowOtic[0];
		data->celebrityText = data->straitAndNarrowOtic[1];
	}
    return data->straitAndNarrowOtic;
}

- (NSString *)StringFromVisionCollarData:(StructVisionCollarData *)data {
    return [NSString stringWithUTF8String:(char *)[self VisionCollarDataToByte:data]];
}

//: contact_group_header
- (NSString *)app_bulbPathName {
    if (!_app_bulbPathName) {
        StructVisionCollarData value = (StructVisionCollarData){11, (Byte []){104, 100, 101, 127, 106, 104, 127, 84, 108, 121, 100, 126, 123, 84, 99, 110, 106, 111, 110, 121, 128}, 20, 157, 113};
        _app_bulbPathName = [self StringFromVisionCollarData:&value];
    }
    return _app_bulbPathName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TeamInfoData.m
//  NIM
//
//  Created by chris on 15/6/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTeamInfoData.h"
#import "ToInput.h"
//: #import "FFFSpellingCenter.h"
#import "ViewCenter.h"

//: @implementation FFFTeamInfoData
@implementation ToInput

//: - (instancetype)initWithTeam:(NIMTeam *)team{
- (instancetype)initWithDisableVersion:(NIMTeam *)team{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _teamId = team.teamId;
        _teamId = team.teamId;
        //: _teamName = team.teamName;
        _teamName = team.teamName;
        //: _iconId = @"contact_group_header";
        _iconId = [VisionCollarData sharedInstance].app_bulbPathName;
    }
    //: return self;
    return self;
}

//: - (NSString *)groupTitle{
- (NSString *)view{
    //: NSString *title = [[FFFSpellingCenter sharedCenter] firstLetter:self.teamName].capitalizedString;
    NSString *title = [[ViewCenter centerStage] premierCurrentDeadLetter:self.teamName].capitalizedString;
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

//: - (NSString *)memberId{
- (NSString *)should{
    //: return self.teamId;
    return self.teamId;
}

//: - (id)sortKey{
- (id)sizeTitle{
    //: return [[FFFSpellingCenter sharedCenter] spellingForString:self.teamName].shortSpelling;
    return [[ViewCenter centerStage] total:self.teamName].shortSpelling;
}

//: - (NSString *)usrId{
- (NSString *)tap{
    //: return self.teamId;
    return self.teamId;
}

//: - (NSString *)nick{
- (NSString *)frontward{
    //: return self.teamName;
    return self.teamName;
}

//: - (NSString *)showName{
- (NSString *)fullKey{
    //: return self.teamName;
    return self.teamName;
}


//: @end
@end