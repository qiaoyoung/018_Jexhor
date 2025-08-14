// __DEBUG__
// __CLOSE_PRINT__
//
//  CompartmentViewController.h
// MessageContent
//
//  Created by chris on 15/9/14.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WorkContactSelectConfig.h"
#import "TitleConfig.h"

//: typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
typedef void(^ContactSelectFinishBlock)(NSArray *uids, NSString *groupName, UIImage *avater);
//: typedef void(^ContactSelectCancelBlock)(void);
typedef void(^ContactSelectCancelBlock)(void);

//: @protocol NIMContactSelectDelegate <NSObject>
@protocol NeedInfoName <NSObject>

//: @optional
@optional

//: - (void)didFinishedSelect:(NSArray *)selectedContacts; 
- (void)anointExamine:(NSArray *)selectedContacts; // 返回userID

//: - (void)didCancelledSelect;
- (void)messageValue;

//: @end
@end


//: @interface WorkContactSelectViewController : UIViewController
@interface CompartmentViewController : UIViewController

//: @property (nonatomic, strong, readonly) UITableView *tableView;
@property (nonatomic, strong, readonly) UITableView *tableView;

//: @property (nonatomic, strong, readonly) id<WorkContactSelectConfig> config;
@property (nonatomic, strong, readonly) id<TitleConfig> config;

//回调处理
//: @property (nonatomic, weak) id<NIMContactSelectDelegate> delegate;
@property (nonatomic, weak) id<NeedInfoName> delegate;

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
//: - (instancetype)initWithConfig:(id<WorkContactSelectConfig>) config;
- (instancetype)initWithStateAtPull:(id<TitleConfig>) config;

/**
 *  弹出联系人选择器
 */
//: - (void)show;
- (void)high;

//: @end
@end
