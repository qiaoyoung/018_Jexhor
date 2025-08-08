// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// MessageContent
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkSessionConfigurator.h"
#import "ModeStatus.h"
//: #import "WorkSessionPrivateProtocol.h"
#import "WorkSessionPrivateProtocol.h"

//: @interface WorkSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface TextStyleCircle : NSObject<ReleasingFactorLayout>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) WorkInputView *inputView;
@property (nonatomic,strong) TingShowView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithName:(NIMSession *)session
                         //: config:(id<WorkSessionConfig>)sessionConfig;
                         range:(id<LineConfig>)sessionConfig;

//: @end
@end
