// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESInputMoreContainerView.h
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushSessionConfig.h"
#import "CreateTop.h"
//: #import "PushInputProtocol.h"
#import "PushInputProtocol.h"
//: #import "CustomAlbumPickerView.h"
#import "CustomView.h"

//: @protocol moreCustomPickerViewDelegate <NSObject>
@protocol moreCustomPickerViewDelegate <NSObject>

//: - (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets;
- (void)displaying:(NSArray<PHAsset *> *)assets;

//: @end
@end

//: @interface PushInputMoreContainerView : UIView
@interface GhbView : UIView

//: @property (nonatomic,weak) id<PushSessionConfig> config;
@property (nonatomic,weak) id<CreateTop> config;
//: @property (nonatomic,weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic,weak) id<SizeDelegate> actionDelegate;

//: @property (nonatomic, strong) CustomAlbumPickerView *albumPickerView;
@property (nonatomic, strong) CustomView *albumPickerView;

//: @property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;
@property (nonatomic, weak) id<moreCustomPickerViewDelegate> delegate;

//: @end
@end
