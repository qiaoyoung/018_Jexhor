// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// Secret
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "PushSessionConfigurateProtocol.h"
#import "PushSessionConfigurateProtocol.h"
//: #import "PushMessageCellProtocol.h"
#import "PushMessageCellProtocol.h"

//: @interface PushSessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface TeamDataAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<LabelCrossSumeractor> interactor;

//: @property (nonatomic,weak) id<PushMessageCellDelegate> delegate;
@property (nonatomic,weak) id<SharedOnly> delegate;

//: @end
@end
