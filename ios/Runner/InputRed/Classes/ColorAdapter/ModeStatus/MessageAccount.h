// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteractor.h
// MessageContent
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WorkSessionPrivateProtocol.h"
#import "WorkSessionPrivateProtocol.h"
//: #import "WorkSessionConfigurateProtocol.h"
#import "WorkSessionConfigurateProtocol.h"

//: @interface WorkSessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>
@interface MessageAccount : NSObject<WithText,VideoActivityDelegate>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithColorConfig:(NIMSession *)session
                         //: config:(id<WorkSessionConfig>)sessionConfig;
                         should:(id<LineConfig>)sessionConfig;

//: @property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;
@property(nonatomic,weak) id<MagnitudeeractorDelegate> delegate;

//: @property(nonatomic,strong) id<NIMSessionDataSource> dataSource;
@property(nonatomic,strong) id<LabSource> dataSource;

//: @property(nonatomic,strong) id<NIMSessionLayout> layout;
@property(nonatomic,strong) id<ReleasingFactorLayout> layout;

//: @end
@end
