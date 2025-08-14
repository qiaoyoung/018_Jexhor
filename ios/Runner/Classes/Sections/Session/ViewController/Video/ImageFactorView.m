
#import <Foundation/Foundation.h>

typedef struct {
    Byte quickAche;
    Byte *highlightCousin;
    unsigned int appearTable;
} StructAntiquatedData;

@interface AntiquatedData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation AntiquatedData

+ (instancetype)sharedInstance {
    static AntiquatedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AntiquatedDataToByte:(StructAntiquatedData *)data {
    for (int i = 0; i < data->appearTable; i++) {
        data->highlightCousin[i] ^= data->quickAche;
    }
    data->highlightCousin[data->appearTable] = 0;
    return data->highlightCousin;
}

- (NSString *)StringFromAntiquatedData:(StructAntiquatedData *)data {
    return [NSString stringWithUTF8String:(char *)[self AntiquatedDataToByte:data]];
}

//: AVLayerVideoGravityResizeAspect
- (NSString *)show_videoValue {
    /* static */ NSString *show_videoValue = nil;
    if (!show_videoValue) {
        StructAntiquatedData value = (StructAntiquatedData){14, (Byte []){79, 88, 66, 111, 119, 107, 124, 88, 103, 106, 107, 97, 73, 124, 111, 120, 103, 122, 119, 92, 107, 125, 103, 116, 107, 79, 125, 126, 107, 109, 122, 93}, 31};
        show_videoValue = [self StringFromAntiquatedData:&value];
    }
    return show_videoValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageFactorView.m
//  NIM
//
//  Created by Genning-Work on 2019/10/25.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESAVPlayerView.h"
#import "ImageFactorView.h"

//: @implementation NTESAVPlayerView
@implementation ImageFactorView
{
    //: NSString* _videoFillMode;
    NSString* _videoFillMode;
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _videoFillMode = @"AVLayerVideoGravityResizeAspect";
        _videoFillMode = [[AntiquatedData sharedInstance] show_videoValue];
        // Initialization code
    }
    //: return self;
    return self;
}

//: + (Class)layerClass
+ (Class)layerClass
{
    //: return [AVPlayerLayer class];
    return [AVPlayerLayer class];
}

//: - (AVPlayer*)player
- (AVPlayer*)player
{
    //: return [(AVPlayerLayer*)[self layer] player];
    return [(AVPlayerLayer*)[self layer] player];
}

//: - (void)setPlayer:(AVPlayer*)player
- (void)setPlayer:(AVPlayer*)player
{
    //: if ([self player] != player) {
    if ([self player] != player) {
        //: [(AVPlayerLayer*)[self layer] setPlayer:player];
        [(AVPlayerLayer*)[self layer] setPlayer:player];
        //: [self setVideoFillMode:_videoFillMode];
        [self setLube:_videoFillMode];
    }
}

/* Specifies how the video is displayed within a player layer’s bounds.
 (AVLayerVideoGravityResizeAspect is default) */
//: - (void)setVideoFillMode:(NSString *)fillMode
- (void)setLube:(NSString *)fillMode
{
    //: _videoFillMode = fillMode;
    _videoFillMode = fillMode;

    //: AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    AVPlayerLayer *playerLayer = (AVPlayerLayer*)[self layer];
    //: playerLayer.videoGravity = fillMode;
    playerLayer.videoGravity = fillMode;
}

//: - (void)setContentMode:(UIViewContentMode)contentMode
- (void)setContentMode:(UIViewContentMode)contentMode
{
    //: [super setContentMode:contentMode];
    [super setContentMode:contentMode];

    //: switch (contentMode) {
    switch (contentMode) {
        //: case UIViewContentModeScaleToFill:
        case UIViewContentModeScaleToFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResize];
            [self setLube:AVLayerVideoGravityResize];
            //: break;
            break;
        //: case UIViewContentModeCenter:
        case UIViewContentModeCenter:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setLube:AVLayerVideoGravityResizeAspect];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFill:
        case UIViewContentModeScaleAspectFill:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspectFill];
            [self setLube:AVLayerVideoGravityResizeAspectFill];
            //: break;
            break;
        //: case UIViewContentModeScaleAspectFit:
        case UIViewContentModeScaleAspectFit:
            //: [self setVideoFillMode:AVLayerVideoGravityResizeAspect];
            [self setLube:AVLayerVideoGravityResizeAspect];
        //: default:
        default:
            //: break;
            break;
    }
}

//: @end
@end