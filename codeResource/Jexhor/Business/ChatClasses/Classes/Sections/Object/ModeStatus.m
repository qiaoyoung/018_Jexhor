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
//: #import "WorkSessionConfigurator.h"
#import "ModeStatus.h"
//: #import "WorkSessionMsgDatasource.h"
#import "TingClean.h"
//: #import "WorkSessionInteractorImpl.h"
#import "MessageAccount.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WorkMessageModel.h"
#import "ShowModel.h"
//: #import "WorkGlobalMacro.h"
#import "WorkGlobalMacro.h"
//: #import "WorkSessionInteractorImpl.h"
#import "MessageAccount.h"
//: #import "WorkSessionDataSourceImpl.h"
#import "TingCell.h"
//: #import "WorkSessionLayoutImpl.h"
#import "TextStyleCircle.h"
//: #import "WorkSessionTableAdapter.h"
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

//: @interface WorkSessionConfigurator()
@interface ModeStatus()

//: @property (nonatomic,strong) WorkSessionInteractorImpl *interactor;
@property (nonatomic,strong) MessageAccount *interactor;

//: @property (nonatomic,strong) WorkSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) ColorAdapter *tableAdapter;

//: @end
@end

//: @implementation WorkSessionConfigurator
@implementation ModeStatus

//: - (void)setup:(WorkSessionViewController *)vc
- (void)send:(AccountViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<WorkSessionConfig> sessionConfig = vc.sessionConfig;
    id<LineConfig> sessionConfig = vc.sessionConfig;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: WorkInputView *inputView = vc.sessionInputView;
    TingShowView *inputView = vc.sessionInputView;

    //: WorkSessionDataSourceImpl *datasource = [[WorkSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    TingCell *datasource = [[TingCell alloc] initWithRead:session voiceSession:sessionConfig];
    //: WorkSessionLayoutImpl *layout = [[WorkSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    TextStyleCircle *layout = [[TextStyleCircle alloc] initWithName:session range:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[WorkSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[MessageAccount alloc] initWithColorConfig:session should:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDelegate:_interactor];

    //: _tableAdapter = [[WorkSessionTableAdapter alloc] init];
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
