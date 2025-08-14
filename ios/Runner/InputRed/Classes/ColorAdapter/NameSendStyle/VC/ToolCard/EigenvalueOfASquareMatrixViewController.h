// __DEBUG__
// __CLOSE_PRINT__
//
//  EigenvalueOfASquareMatrixViewController.h
// MessageContent
//
//  Created by Netease on 2019/7/16.
//  Copyright © 2019 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WorkCardDataSourceProtocol.h"
#import "WorkCardDataSourceProtocol.h"
//: #import "MyUserKit.h"
#import "MessageContent.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef void(^NIMSelectedCompletion)(id <WorkKitSelectCardData> item);
typedef void(^NIMSelectedCompletion)(id <WorkKitSelectCardData> item);

//: @interface WorkTeamCardSelectedViewController : UIViewController
@interface EigenvalueOfASquareMatrixViewController : UIViewController

//: @property (nonatomic, copy) NSString *titleString;
@property (nonatomic, copy) NSString *titleString;

//: @property (nonatomic, strong) NIMSelectedCompletion resultHandle;
@property (nonatomic, strong) NIMSelectedCompletion resultHandle;

//: + (instancetype)instanceWithTitle:(NSString *)title
+ (instancetype)view:(NSString *)title
                            //: items:(NSMutableArray <id <WorkKitSelectCardData>> *)items
                            progress:(NSMutableArray <id <WorkKitSelectCardData>> *)items
                           //: result:(NIMSelectedCompletion)result;
                           tingItems:(NIMSelectedCompletion)result;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
