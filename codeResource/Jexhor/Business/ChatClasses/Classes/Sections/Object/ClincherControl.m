// __DEBUG__
// __CLOSE_PRINT__
//
//  ClincherControl.m
// Secret
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionConfigurator.h"
#import "ClincherControl.h"
//: #import "PushSessionMsgDatasource.h"
#import "ToTapDatasource.h"
//: #import "PushSessionInteractorImpl.h"
#import "PossibilityImpl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "PushMessageModel.h"
#import "PurseModel.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"
//: #import "PushSessionInteractorImpl.h"
#import "PossibilityImpl.h"
//: #import "PushSessionDataSourceImpl.h"
#import "ColorBackground.h"
//: #import "PushSessionLayoutImpl.h"
#import "BoundaryOnly.h"
//: #import "PushSessionTableAdapter.h"
#import "TeamDataAdapter.h"

/*
                                            CenterBuildViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [LabelCrossSumeractor] -->  |
             .
             .                                                                                          | ---> [DeviceLayout]
             .
             ↓
  [CenterBuildViewController]-------> [ClincherControl] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [TeamDataAdapter]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface PushSessionConfigurator()
@interface ClincherControl()

//: @property (nonatomic,strong) PushSessionInteractorImpl *interactor;
@property (nonatomic,strong) PossibilityImpl *interactor;

//: @property (nonatomic,strong) PushSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) TeamDataAdapter *tableAdapter;

//: @end
@end

//: @implementation PushSessionConfigurator
@implementation ClincherControl

//: - (void)setup:(PushSessionViewController *)vc
- (void)big:(CenterBuildViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<PushSessionConfig> sessionConfig = vc.sessionConfig;
    id<CreateTop> sessionConfig = vc.sessionConfig;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: PushInputView *inputView = vc.sessionInputView;
    MainContainerView *inputView = vc.sessionInputView;

    //: PushSessionDataSourceImpl *datasource = [[PushSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    ColorBackground *datasource = [[ColorBackground alloc] initWithDomain:session size:sessionConfig];
    //: PushSessionLayoutImpl *layout = [[PushSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    BoundaryOnly *layout = [[BoundaryOnly alloc] initWithMoreConfig:session assemblage:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[PushSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[PossibilityImpl alloc] initWithLengthConfig:session can:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDelegate:_interactor];

    //: _tableAdapter = [[PushSessionTableAdapter alloc] init];
    _tableAdapter = [[TeamDataAdapter alloc] init];
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
