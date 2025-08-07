// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteractor.h
// Secret
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "FFFSessionPrivateProtocol.h"
#import "FFFSessionPrivateProtocol.h"
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"

//: @interface FFFSessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>
@interface PossibilityImpl : NSObject<LabelCrossSumeractor,TitleCover>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithLengthConfig:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         can:(id<CreateTop>)sessionConfig;

//: @property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;
@property(nonatomic,weak) id<DeviceSecret> delegate;

//: @property(nonatomic,strong) id<NIMSessionDataSource> dataSource;
@property(nonatomic,strong) id<InputMagnitude> dataSource;

//: @property(nonatomic,strong) id<NIMSessionLayout> layout;
@property(nonatomic,strong) id<DeviceLayout> layout;

//: @end
@end