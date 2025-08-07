// __DEBUG__
// __CLOSE_PRINT__
//
//  SwitchlyViewController.h
// Secret
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushContactSelectConfig.h"
#import "ReadConfig.h"

//: typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
//: typedef void(^ContactSelectCancelBlock)(void);
typedef void(^ContactSelectCancelBlock)(void);

//: @protocol NIMContactSelectDelegate <NSObject>
@protocol BackgroundDelegate <NSObject>

//: @optional
@optional

//: - (void)didFinishedSelect:(NSArray *)selectedContacts; 
- (void)endSelect:(NSArray *)selectedContacts; // 返回userID

//: - (void)didCancelledSelect;
- (void)backSearch;

//: @end
@end


//: @interface PushContactSelectViewController : UIViewController
@interface SwitchlyViewController : UIViewController

//: @property (nonatomic, strong, readonly) UITableView *tableView;
@property (nonatomic, strong, readonly) UITableView *tableView;

//: @property (nonatomic, strong, readonly) id<PushContactSelectConfig> config;
@property (nonatomic, strong, readonly) id<ReadConfig> config;

//回调处理
//: @property (nonatomic, weak) id<NIMContactSelectDelegate> delegate;
@property (nonatomic, weak) id<BackgroundDelegate> delegate;

//: @property (nonatomic, copy) ContactSelectFinishBlock finshBlock;
@property (nonatomic, copy) ContactSelectFinishBlock finshBlock;

//: @property (nonatomic, copy) ContactSelectCancelBlock cancelBlock;
@property (nonatomic, copy) ContactSelectCancelBlock cancelBlock;

/**
 *  初始化方法
 *
 *  @param config 联系人选择器配置
 *
 *  @return 选择器
 */
//: - (instancetype)initWithConfig:(id<PushContactSelectConfig>) config;
- (instancetype)initWithBarBottom:(id<ReadConfig>) config;

/**
 *  弹出联系人选择器
 */
//: - (void)show;
- (void)metadata;

//: @end
@end
