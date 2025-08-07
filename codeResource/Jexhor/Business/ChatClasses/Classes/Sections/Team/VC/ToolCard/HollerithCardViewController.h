// __DEBUG__
// __CLOSE_PRINT__
//
//  HollerithCardViewController.h
// Secret
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushCardDataSourceProtocol.h"
#import "PushCardDataSourceProtocol.h"
//: #import "MyUserKit.h"
#import "Secret.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <PushKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <PushKitSelectCardData> item);

//: @interface PushTeamCardSelectedViewController : UIViewController
@interface HollerithCardViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)date:(NSString *)title
                            //: items:(NSMutableArray <id <PushKitSelectCardData>> *)items
                            with:(NSMutableArray <id <PushKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           elite:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
