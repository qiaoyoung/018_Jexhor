// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordAlbumItem.m
// Secret
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushMediaItem.h"
#import "RecordAlbumItem.h"

//: @implementation PushMediaItem
@implementation RecordAlbumItem

//: + (PushMediaItem *)item:(NSString *)selector
+ (RecordAlbumItem *)record:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           reloadByCount:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         team:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 provider:(NSString *)title
{
    //: PushMediaItem *item = [[PushMediaItem alloc] init];
    RecordAlbumItem *item = [[RecordAlbumItem alloc] init];
    //: item.selctor = NSSelectorFromString(selector);
    item.selctor = NSSelectorFromString(selector);
    //: item.normalImage = normalImage;
    item.normalImage = normalImage;
    //: item.selectedImage = selectedImage;
    item.selectedImage = selectedImage;
    //: item.title = title;
    item.title = title;
    //: return item;
    return item;
}

//: @end
@end
