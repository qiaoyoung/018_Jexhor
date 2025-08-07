
#import <Foundation/Foundation.h>

typedef struct {
    Byte mortalProvide;
    Byte *paper;
    unsigned int ionicBond;
	int sack;
	int hark;
	int strikeAChord;
} StructGymData;

@interface GymData : NSObject

+ (instancetype)sharedInstance;

//: message should be image
@property (nonatomic, copy) NSString *k_apartmentValue;

@end

@implementation GymData

+ (instancetype)sharedInstance {
    static GymData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)GymDataToByte:(StructGymData *)data {
    for (int i = 0; i < data->ionicBond; i++) {
        data->paper[i] ^= data->mortalProvide;
    }
    data->paper[data->ionicBond] = 0;
	if (data->ionicBond >= 3) {
		data->sack = data->paper[0];
		data->hark = data->paper[1];
		data->strikeAChord = data->paper[2];
	}
    return data->paper;
}

- (NSString *)StringFromGymData:(StructGymData *)data {
    return [NSString stringWithUTF8String:(char *)[self GymDataToByte:data]];
}

//: message should be image
- (NSString *)k_apartmentValue {
    if (!_k_apartmentValue) {
        StructGymData value = (StructGymData){166, (Byte []){203, 195, 213, 213, 199, 193, 195, 134, 213, 206, 201, 211, 202, 194, 134, 196, 195, 134, 207, 203, 199, 193, 195, 97}, 23, 10, 101, 33};
        _k_apartmentValue = [self StringFromGymData:&value];
    }
    return _k_apartmentValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedSystemView.m
// MessageContent
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFImageContentConfig.h"
#import "RedSystemView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: @implementation FFFImageContentConfig
@implementation RedSystemView
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)refer:(CGFloat)cellWidth componentPart:(NIMMessage *)message
{
    //: NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    //: NSAssert([imageObject isKindOfClass:[NIMImageObject class]], @"message should be image");
    NSAssert([imageObject isKindOfClass:[NIMImageObject class]], [GymData sharedInstance].k_apartmentValue);

    //: CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    CGFloat attachmentImageMinWidth = (cellWidth / 4.0);
    //: CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    CGFloat attachmentImageMinHeight = (cellWidth / 4.0);
    //: CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    CGFloat attachmemtImageMaxWidth = (cellWidth - 184);
    //: CGFloat attachmentImageMaxHeight = (cellWidth - 184);
    CGFloat attachmentImageMaxHeight = (cellWidth - 184);


    //: CGSize imageSize;
    CGSize imageSize;
    //: if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
    if (!__CGSizeEqualToSize(imageObject.size, CGSizeZero)) {
        //: imageSize = imageObject.size;
        imageSize = imageObject.size;
        //: if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
        if(__CGSizeEqualToSize(imageSize, CGSizeMake(200, 200)) || __CGSizeEqualToSize(imageSize, CGSizeMake(300, 300))){
            //: imageSize = CGSizeMake(80, 80);
            imageSize = CGSizeMake(80, 80);
        }
    }
    //: else
    else
    {
        //: UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        UIImage *image = [UIImage imageWithContentsOfFile:imageObject.thumbPath];
        //: imageSize = image ? image.size : CGSizeZero;
        imageSize = image ? image.size : CGSizeZero;
    }
    //: CGSize contentSize = [UIImage nim_sizeWithImageOriginSize:imageSize
    CGSize contentSize = [UIImage link:imageSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   quantity:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
                                                   session:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)on:(NIMMessage *)message
{
    //: return @"FFFSessionImageContentView";
    return @"ComponentContentView";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)team:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[MessageContent secretResolution].config ofSetting:message].contentInsets;
}



//: @end
@end