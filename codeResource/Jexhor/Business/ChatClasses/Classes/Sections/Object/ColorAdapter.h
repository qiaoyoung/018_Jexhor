// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// MessageContent
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WorkSessionConfigurateProtocol.h"
#import "WorkSessionConfigurateProtocol.h"
//: #import "WorkMessageCellProtocol.h"
#import "WorkMessageCellProtocol.h"

//: @interface WorkSessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface ColorAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<WithText> interactor;

//: @property (nonatomic,weak) id<WorkMessageCellDelegate> delegate;
@property (nonatomic,weak) id<SystemCircle> delegate;

//: @end
@end
