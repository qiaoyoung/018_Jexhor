
#import <Foundation/Foundation.h>

@interface MediaData : NSObject

+ (instancetype)sharedInstance;

//: merge
@property (nonatomic, copy) NSString *m_accountContent;

//: video
@property (nonatomic, copy) NSString *kGivingValue;

//: image
@property (nonatomic, copy) NSString *notiComplainName;

@end

@implementation MediaData

+ (instancetype)sharedInstance {
    static MediaData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MediaDataToCache:(Byte *)data {
    int pressureChip = data[0];
    Byte mortalInfo = data[1];
    int outstareTarget = data[2];
    for (int i = outstareTarget; i < outstareTarget + pressureChip; i++) {
        int value = data[i] - mortalInfo;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[outstareTarget + pressureChip] = 0;
    return data + outstareTarget;
}

- (NSString *)StringFromMediaData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MediaDataToCache:data]];
}

//: video
- (NSString *)kGivingValue {
    if (!_kGivingValue) {
        Byte value[] = {5, 92, 8, 88, 128, 100, 43, 25, 210, 197, 192, 193, 203, 116};
        _kGivingValue = [self StringFromMediaData:value];
    }
    return _kGivingValue;
}

//: merge
- (NSString *)m_accountContent {
    if (!_m_accountContent) {
        Byte value[] = {5, 63, 9, 157, 68, 195, 184, 223, 228, 172, 164, 177, 166, 164, 11};
        _m_accountContent = [self StringFromMediaData:value];
    }
    return _m_accountContent;
}

//: image
- (NSString *)notiComplainName {
    if (!_notiComplainName) {
        Byte value[] = {5, 16, 7, 222, 190, 237, 202, 121, 125, 113, 119, 117, 112};
        _notiComplainName = [self StringFromMediaData:value];
    }
    return _notiComplainName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LineHelper.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileLocationHelper.h"
#import "LineHelper.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "FFFConfig.h"
#import "AccountWith.h"

//: @interface NTESFileLocationHelper ()
@interface LineHelper ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)table: (NSString *)dirname addGroup: (NSString *)filename;
//: @end
@end


//: @implementation NTESFileLocationHelper
@implementation LineHelper
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)backup:(NSURL *)URL
{
    //: assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);


    //: NSError *error = nil;
    NSError *error = nil;
    //: BOOL success = [URL setResourceValue:@(YES)
    BOOL success = [URL setResourceValue:@(YES)
                                  //: forKey:NSURLIsExcludedFromBackupKey
                                  forKey:NSURLIsExcludedFromBackupKey
                                   //: error:&error];
                                   error:&error];
    //: if(!success)
    if(!success)
    {
    }
    //: return success;
    return success;

}
//: + (NSString *)getAppDocumentPath
+ (NSString *)icon
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[FFFConfig sharedConfig] appKey];
        NSString *appKey = [[AccountWith max] appKey];
        //: NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        //: appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        appDocumentPath= [[NSString alloc]initWithFormat:@"%@/%@/",[paths objectAtIndex:0],appKey];
        //: if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        if (![[NSFileManager defaultManager] fileExistsAtPath:appDocumentPath])
        {
            //: [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
            [[NSFileManager defaultManager] createDirectoryAtPath:appDocumentPath
                                      //: withIntermediateDirectories:NO
                                      withIntermediateDirectories:NO
                                                       //: attributes:nil
                                                       attributes:nil
                                                            //: error:nil];
                                                            error:nil];
        }
        //: [NTESFileLocationHelper addSkipBackupAttributeToItemAtURL:[NSURL fileURLWithPath:appDocumentPath]];
        [LineHelper backup:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)container
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)remove
{
    //: NSString *documentPath = [NTESFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [LineHelper icon];
    //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
    //: if ([userID length] == 0)
    if ([userID length] == 0)
    {
    }
    //: NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    NSString* userDirectory= [NSString stringWithFormat:@"%@%@/",documentPath,userID];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    if (![[NSFileManager defaultManager] fileExistsAtPath:userDirectory])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
        [[NSFileManager defaultManager] createDirectoryAtPath:userDirectory
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];

    }
    //: return userDirectory;
    return userDirectory;
}

//: + (NSString *)resourceDir: (NSString *)resouceName
+ (NSString *)willDir: (NSString *)resouceName
{
    //: NSString *dir = [[NTESFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[LineHelper remove] stringByAppendingPathComponent:resouceName];
    //: if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    if (![[NSFileManager defaultManager] fileExistsAtPath:dir])
    {
        //: [[NSFileManager defaultManager] createDirectoryAtPath:dir
        [[NSFileManager defaultManager] createDirectoryAtPath:dir
                                  //: withIntermediateDirectories:NO
                                  withIntermediateDirectories:NO
                                                   //: attributes:nil
                                                   attributes:nil
                                                        //: error:nil];
                                                        error:nil];
    }
    //: return dir;
    return dir;
}


//: + (NSString *)filepathForVideo:(NSString *)filename
+ (NSString *)session:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"video")
    return [LineHelper table:([MediaData sharedInstance].kGivingValue)
                                     //: filename:filename];
                                     addGroup:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)pinBy:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"image")
    return [LineHelper table:([MediaData sharedInstance].notiComplainName)
                                     //: filename:filename];
                                     addGroup:filename];
}

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)inputIconFile:(NSString *)filename {
    //: return [NTESFileLocationHelper filepathForDir:(@"merge")
    return [LineHelper table:([MediaData sharedInstance].m_accountContent)
                                     //: filename:filename];
                                     addGroup:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)message:(NSString *)ext
{
    //: CFUUIDRef uuid = CFUUIDCreate(nil);
    CFUUIDRef uuid = CFUUIDCreate(nil);
    //: NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuid);
    //: CFRelease(uuid);
    CFRelease(uuid);
    //: NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    NSString *uuidStr = [[uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""] lowercaseString];
    //: NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    NSString *name = [NSString stringWithFormat:@"%@",uuidStr];
    //: return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
    return [ext length] ? [NSString stringWithFormat:@"%@.%@",name,ext]:name;
}


//: #pragma mark - 辅助方法
#pragma mark - 辅助方法
//: + (NSString *)filepathForDir:(NSString *)dirname
+ (NSString *)table:(NSString *)dirname
                    //: filename:(NSString *)filename
                    addGroup:(NSString *)filename
{
    //: return [[NTESFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[LineHelper willDir:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end