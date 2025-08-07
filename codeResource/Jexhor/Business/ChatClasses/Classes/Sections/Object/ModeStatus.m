// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeStatus.m
// MessageContent
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "ModeStatus.h"
//: #import "FFFSessionMsgDatasource.h"
#import "TingClean.h"
//: #import "FFFSessionInteractorImpl.h"
#import "MessageAccount.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "ShowModel.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSessionInteractorImpl.h"
#import "MessageAccount.h"
//: #import "FFFSessionDataSourceImpl.h"
#import "TingCell.h"
//: #import "FFFSessionLayoutImpl.h"
#import "TextStyleCircle.h"
//: #import "FFFSessionTableAdapter.h"
#import "ColorAdapter.h"

/*
                                            AccountViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [WithText] -->  |
             .
             .                                                                                          | ---> [ReleasingFactorLayout]
             .
             ↓
  [AccountViewController]-------> [ModeStatus] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [ColorAdapter]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface FFFSessionConfigurator()
@interface ModeStatus()

//: @property (nonatomic,strong) FFFSessionInteractorImpl *interactor;
@property (nonatomic,strong) MessageAccount *interactor;

//: @property (nonatomic,strong) FFFSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) ColorAdapter *tableAdapter;

//: @end
@end

//: @implementation FFFSessionConfigurator
@implementation ModeStatus

//: - (void)setup:(FFFSessionViewController *)vc
- (void)send:(AccountViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<FFFSessionConfig> sessionConfig = vc.sessionConfig;
    id<LineConfig> sessionConfig = vc.temp;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: FFFInputView *inputView = vc.sessionInputView;
    TingShowView *inputView = vc.sessionInputView;

    //: FFFSessionDataSourceImpl *datasource = [[FFFSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    TingCell *datasource = [[TingCell alloc] initWithRead:session voiceSession:sessionConfig];
    //: FFFSessionLayoutImpl *layout = [[FFFSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    TextStyleCircle *layout = [[TextStyleCircle alloc] initWithName:session range:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[FFFSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[MessageAccount alloc] initWithColorConfig:session should:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDate:_interactor];

    //: _tableAdapter = [[FFFSessionTableAdapter alloc] init];
    _tableAdapter = [[ColorAdapter alloc] init];
    //: _tableAdapter.interactor = _interactor;
    _tableAdapter.interactor = _interactor;
    //: _tableAdapter.delegate = vc;
    _tableAdapter.delegate = vc;
    //: vc.tableView.delegate = _tableAdapter;
    vc.tableView.delegate = _tableAdapter;
    //: vc.tableView.dataSource = _tableAdapter;
    vc.tableView.dataSource = _tableAdapter;


    //: [vc setInteractor:_interactor];
    [vc setInteractor:_interactor];
}


//: @end
@end