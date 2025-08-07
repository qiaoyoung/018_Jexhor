
#import <Foundation/Foundation.h>

@interface InspireData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation InspireData

+ (instancetype)sharedInstance {
    static InspireData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)InspireDataToCache:(Byte *)data {
    int argument = data[0];
    Byte novelInspire = data[1];
    int oldPursuitGiving = data[2];
    for (int i = oldPursuitGiving; i < oldPursuitGiving + argument; i++) {
        int value = data[i] + novelInspire;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[oldPursuitGiving + argument] = 0;
    return data + oldPursuitGiving;
}

- (NSString *)StringFromInspireData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InspireDataToCache:data]];
}

//: video_chat_push.mp3
- (NSString *)dreamAtName {
    /* static */ NSString *dreamAtName = nil;
    if (!dreamAtName) {
        Byte value[] = {19, 30, 9, 40, 62, 42, 126, 70, 149, 88, 75, 70, 71, 81, 65, 69, 74, 67, 86, 65, 82, 87, 85, 74, 16, 79, 82, 21, 165};
        dreamAtName = [self StringFromInspireData:value];
    }
    return dreamAtName;
}

//: byView
- (NSString *)k_petAccountingName {
    /* static */ NSString *k_petAccountingName = nil;
    if (!k_petAccountingName) {
        Byte value[] = {6, 54, 7, 3, 30, 132, 67, 44, 67, 32, 51, 47, 65, 86};
        k_petAccountingName = [self StringFromInspireData:value];
    }
    return k_petAccountingName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CountNotifier.m
//  NIM
//
//  Created by amao on 2017/5/4.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVNotifier.h"
#import "CountNotifier.h"
//: #import "NTESGlobalMacro.h"
#import "NTESGlobalMacro.h"

//: @import AudioToolbox;
@import AudioToolbox;


//: static void VibrateCompletion(SystemSoundID soundID, void *data)
static void VibrateCompletion(SystemSoundID soundID, void *data)
{
    //: id notifier = (__bridge id)data;
    id notifier = (__bridge id)data;
    //: if([notifier isKindOfClass:[NTESAVNotifier class]])
    if([notifier isKindOfClass:[CountNotifier class]])
    {
        //: SEL selector = NSSelectorFromString(@"vibrate");
        SEL selector = NSSelectorFromString([[InspireData sharedInstance] k_petAccountingName]);
        //: SuppressPerformSelectorLeakWarning([(NTESAVNotifier *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
        SuppressPerformSelectorLeakWarning([(CountNotifier *)notifier performSelector:selector withObject:nil afterDelay:1.0]);
    }
}

//: @interface NTESAVNotifier ()
@interface CountNotifier ()
//: @property (nonatomic,strong) UILocalNotification *currentNotification;
@property (nonatomic,strong) UILocalNotification *currentNotification;
//: @property (nonatomic,assign) BOOL shouldStopVibrate;
@property (nonatomic,assign) BOOL shouldStopVibrate;
//: @property (nonatomic,assign) NSInteger vibrateCount;
@property (nonatomic,assign) NSInteger vibrateCount;

//: @end
@end

//: @implementation NTESAVNotifier
@implementation CountNotifier
//: - (instancetype)init
- (instancetype)init
{
    //: if (self = [super init])
    if (self = [super init])
    {
        //: [[NSNotificationCenter defaultCenter] addObserver:self
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 //: selector:@selector(willEnterForeground:)
                                                 selector:@selector(moduleLikeName:)
                                                     //: name:UIApplicationWillEnterForegroundNotification
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   //: object:nil];
                                                   object:nil];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

//: - (void)start:(NSString *)text
- (void)moreName:(NSString *)text
{
    //: if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    if ([[UIApplication sharedApplication] applicationState] != UIApplicationStateBackground)
    {
        //: return;
        return;
    }
    //: [self stop];
    [self randomStop];
    //: _vibrateCount = 0;
    _vibrateCount = 0;
    //: _shouldStopVibrate = NO;
    _shouldStopVibrate = NO;
    //: [self raiseNotification:text];
    [self imageSecretNotification:text];
    //: [self vibrate];
    [self byView];

}

//: - (void)stop
- (void)randomStop
{
    //: if (_currentNotification)
    if (_currentNotification)
    {
        //: [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        [[UIApplication sharedApplication] cancelLocalNotification:_currentNotification];
        //: _currentNotification = nil;
        _currentNotification = nil;
    }
    //: _shouldStopVibrate = YES;
    _shouldStopVibrate = YES;
}

//: - (void)willEnterForeground:(NSNotification *)notification
- (void)moduleLikeName:(NSNotification *)notification
{
    //: [self stop];
    [self randomStop];
}

//: - (void)vibrate
- (void)byView
{
    //: if (!_shouldStopVibrate)
    if (!_shouldStopVibrate)
    {
        //: AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
        //: AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, VibrateCompletion, (__bridge void *)self);
        AudioServicesAddSystemSoundCompletion(kSystemSoundID_Vibrate, NULL, NULL, VibrateCompletion, (__bridge void *)self);

        //: _vibrateCount++;
        _vibrateCount++;
        //: if (_vibrateCount >= 15)
        if (_vibrateCount >= 15)
        {
            //: _shouldStopVibrate = YES;
            _shouldStopVibrate = YES;
        }
    }
}

//: - (void)raiseNotification:(NSString *)text
- (void)imageSecretNotification:(NSString *)text
{
    //: _currentNotification = [[UILocalNotification alloc] init];
    _currentNotification = [[UILocalNotification alloc] init];
    //: _currentNotification.soundName = @"video_chat_push.mp3";
    _currentNotification.soundName = [[InspireData sharedInstance] dreamAtName];
    //: _currentNotification.alertBody = text;
    _currentNotification.alertBody = text;

    //: [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
    [[UIApplication sharedApplication] presentLocalNotificationNow:_currentNotification];
}
//: @end
@end