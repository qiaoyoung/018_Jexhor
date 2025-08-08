// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableData.h
// MessageContent
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "WorkSessionConfigurateProtocol.h"
#import "WorkSessionConfigurateProtocol.h"
//: #import "WorkSessionPrivateProtocol.h"
#import "WorkSessionPrivateProtocol.h"
//: #import "WorkSessionConfig.h"
#import "LineConfig.h"

//: @interface WorkSessionDataSourceImpl : NSObject<NIMSessionDataSource>
@interface TingCell : NSObject<LabSource>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithRead:(NIMSession *)session
                         //: config:(id<WorkSessionConfig>)sessionConfig;
                         voiceSession:(id<LineConfig>)sessionConfig;

//: @end
@end
