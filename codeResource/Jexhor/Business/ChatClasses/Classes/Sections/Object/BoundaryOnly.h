// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// Secret
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionConfigurator.h"
#import "ClincherControl.h"
//: #import "PushSessionPrivateProtocol.h"
#import "PushSessionPrivateProtocol.h"

//: @interface PushSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface BoundaryOnly : NSObject<DeviceLayout>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) PushInputView *inputView;
@property (nonatomic,strong) MainContainerView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithMoreConfig:(NIMSession *)session
                         //: config:(id<PushSessionConfig>)sessionConfig;
                         assemblage:(id<CreateTop>)sessionConfig;

//: @end
@end
