
#import <Foundation/Foundation.h>

typedef struct {
    Byte uneven;
    Byte *generallyDramatically;
    unsigned int frankKilling;
} StructDanceData;

@interface DanceData : NSObject

@end

@implementation DanceData

+ (Byte *)DanceDataToByte:(StructDanceData *)data {
    for (int i = 0; i < data->frankKilling; i++) {
        data->generallyDramatically[i] ^= data->uneven;
    }
    data->generallyDramatically[data->frankKilling] = 0;
    return data->generallyDramatically;
}

+ (NSString *)StringFromDanceData:(StructDanceData *)data {
    return [NSString stringWithUTF8String:(char *)[self DanceDataToByte:data]];
}

//: message should be image
+ (NSString *)user_costlyPath {
    /* static */ NSString *user_costlyPath = nil;
    if (!user_costlyPath) {
        StructDanceData value = (StructDanceData){199, (Byte []){170, 162, 180, 180, 166, 160, 162, 231, 180, 175, 168, 178, 171, 163, 231, 165, 162, 231, 174, 170, 166, 160, 162, 59}, 23};
        user_costlyPath = [self StringFromDanceData:&value];
    }
    return user_costlyPath;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  CypherConfig.m
// Secret
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFImageContentConfig.h"
#import "CypherConfig.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: @implementation FFFImageContentConfig
@implementation CypherConfig
//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message
- (CGSize)tap:(CGFloat)cellWidth button:(NIMMessage *)message
{
    //: NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    NIMImageObject *imageObject = (NIMImageObject*)[message messageObject];
    //: NSAssert([imageObject isKindOfClass:[NIMImageObject class]], @"message should be image");
    NSAssert([imageObject isKindOfClass:[NIMImageObject class]], [DanceData user_costlyPath]);

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
    CGSize contentSize = [UIImage max:imageSize
                                                   //: minSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   crunchSize:CGSizeMake(attachmentImageMinWidth, attachmentImageMinHeight)
                                                   //: maxSize:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
                                                   secondText:CGSizeMake(attachmemtImageMaxWidth, attachmentImageMaxHeight )];
    //: return contentSize;
    return contentSize;
}

//: - (NSString *)cellContent:(NIMMessage *)message
- (NSString *)session:(NIMMessage *)message
{
    //: return @"FFFSessionImageContentView";
    return @"TutorialDataOrientationControl";
}

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message
- (UIEdgeInsets)messageUser:(NIMMessage *)message
{
    //: return [[MyUserKit sharedKit].config setting:message].contentInsets;
    return [[Secret highlight].config click:message].contentInsets;
}



//: @end
@end