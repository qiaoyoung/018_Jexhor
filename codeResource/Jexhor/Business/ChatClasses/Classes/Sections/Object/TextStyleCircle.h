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
//: #import "FFFSessionConfigurator.h"
#import "ModeStatus.h"
//: #import "FFFSessionPrivateProtocol.h"
#import "FFFSessionPrivateProtocol.h"

//: @interface FFFSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface TextStyleCircle : NSObject<ReleasingFactorLayout>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) FFFInputView *inputView;
@property (nonatomic,strong) TingShowView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithName:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         range:(id<LineConfig>)sessionConfig;

//: @end
@end