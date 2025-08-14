// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountAction.h
// MessageContent
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface WorkMediaItem : NSObject
@interface AccountAction : NSObject

//: @property (nonatomic,assign) SEL selctor;
@property (nonatomic,assign) SEL selctor;

//: @property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *normalImage;

//: @property (nonatomic,strong) UIImage *selectedImage;
@property (nonatomic,strong) UIImage *selectedImage;

//: @property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *title;

//: + (WorkMediaItem *)item:(NSString *)selector
+ (AccountAction *)showName:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           with:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         data:(UIImage *)selectedImage
                 //: title:(NSString *)title;
                 fit:(NSString *)title;
//: @end
@end
