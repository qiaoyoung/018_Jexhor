// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountAction.m
// MessageContent
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMediaItem.h"
#import "AccountAction.h"

//: @implementation FFFMediaItem
@implementation AccountAction

//: + (FFFMediaItem *)item:(NSString *)selector
+ (AccountAction *)showName:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           with:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         data:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 fit:(NSString *)title
{
    //: FFFMediaItem *item = [[FFFMediaItem alloc] init];
    AccountAction *item = [[AccountAction alloc] init];
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