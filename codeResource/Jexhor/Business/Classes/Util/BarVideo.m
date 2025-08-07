
#import <Foundation/Foundation.h>

@interface JustifyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation JustifyData

+ (instancetype)sharedInstance {
    static JustifyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)JustifyDataToCache:(Byte *)data {
    int shoot = data[0];
    Byte hisSale = data[1];
    int seizeMessageGuidance = data[2];
    for (int i = seizeMessageGuidance; i < seizeMessageGuidance + shoot; i++) {
        int value = data[i] - hisSale;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[seizeMessageGuidance + shoot] = 0;
    return data + seizeMessageGuidance;
}

- (NSString *)StringFromJustifyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self JustifyDataToCache:data]];
}

//: video
- (NSString *)appStrangeSphereData {
    /* static */ NSString *appStrangeSphereData = nil;
    if (!appStrangeSphereData) {
        Byte value[] = {5, 95, 11, 166, 232, 60, 85, 122, 237, 48, 183, 213, 200, 195, 196, 206, 88};
        appStrangeSphereData = [self StringFromJustifyData:value];
    }
    return appStrangeSphereData;
}

//: image
- (NSString *)show_collapseId {
    /* static */ NSString *show_collapseId = nil;
    if (!show_collapseId) {
        Byte value[] = {5, 28, 10, 212, 169, 227, 253, 170, 17, 112, 133, 137, 125, 131, 129, 183};
        show_collapseId = [self StringFromJustifyData:value];
    }
    return show_collapseId;
}

//: merge
- (NSString *)dream_imageLittleProfessionIdent {
    /* static */ NSString *dream_imageLittleProfessionIdent = nil;
    if (!dream_imageLittleProfessionIdent) {
        Byte value[] = {5, 96, 5, 212, 61, 205, 197, 210, 199, 197, 204};
        dream_imageLittleProfessionIdent = [self StringFromJustifyData:value];
    }
    return dream_imageLittleProfessionIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  BarVideo.m
//  NIM
//
//  Created by chris on 15/4/12.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESFileLocationHelper.h"
#import "BarVideo.h"
//: #import <sys/stat.h>
#import <sys/stat.h>
//: #import "PushConfig.h"
#import "AlongTemp.h"

//: @interface NTESFileLocationHelper ()
@interface BarVideo ()
//: + (NSString *)filepathForDir: (NSString *)dirname filename: (NSString *)filename;
+ (NSString *)moveFilename: (NSString *)dirname title_strong: (NSString *)filename;
//: @end
@end


//: @implementation NTESFileLocationHelper
@implementation BarVideo
//: + (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL
+ (BOOL)fileMessage:(NSURL *)URL
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
+ (NSString *)findAdd
{
    //: static NSString *appDocumentPath = nil;
    static NSString *appDocumentPath = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: NSString *appKey = [[PushConfig sharedConfig] appKey];
        NSString *appKey = [[AlongTemp frameConfig] appKey];
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
        [BarVideo fileMessage:[NSURL fileURLWithPath:appDocumentPath]];
    //: });
    });
    //: return appDocumentPath;
    return appDocumentPath;

}

//: + (NSString *)getAppTempPath
+ (NSString *)blue
{
    //: return NSTemporaryDirectory();
    return NSTemporaryDirectory();
}

//: + (NSString *)userDirectory
+ (NSString *)chromaticColour
{
    //: NSString *documentPath = [NTESFileLocationHelper getAppDocumentPath];
    NSString *documentPath = [BarVideo findAdd];
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
+ (NSString *)location: (NSString *)resouceName
{
    //: NSString *dir = [[NTESFileLocationHelper userDirectory] stringByAppendingPathComponent:resouceName];
    NSString *dir = [[BarVideo chromaticColour] stringByAppendingPathComponent:resouceName];
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
+ (NSString *)to:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"video")
    return [BarVideo moveFilename:([[JustifyData sharedInstance] appStrangeSphereData])
                                     //: filename:filename];
                                     title_strong:filename];
}

//: + (NSString *)filepathForImage:(NSString *)filename
+ (NSString *)image:(NSString *)filename
{
    //: return [NTESFileLocationHelper filepathForDir:(@"image")
    return [BarVideo moveFilename:([[JustifyData sharedInstance] show_collapseId])
                                     //: filename:filename];
                                     title_strong:filename];
}

//: + (NSString *)filepathForMergeForwardFile:(NSString *)filename {
+ (NSString *)container:(NSString *)filename {
    //: return [NTESFileLocationHelper filepathForDir:(@"merge")
    return [BarVideo moveFilename:([[JustifyData sharedInstance] dream_imageLittleProfessionIdent])
                                     //: filename:filename];
                                     title_strong:filename];
}

//: + (NSString *)genFilenameWithExt:(NSString *)ext
+ (NSString *)point:(NSString *)ext
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
+ (NSString *)moveFilename:(NSString *)dirname
                    //: filename:(NSString *)filename
                    title_strong:(NSString *)filename
{
    //: return [[NTESFileLocationHelper resourceDir:dirname] stringByAppendingPathComponent:filename];
    return [[BarVideo location:dirname] stringByAppendingPathComponent:filename];
}

//: @end
@end
