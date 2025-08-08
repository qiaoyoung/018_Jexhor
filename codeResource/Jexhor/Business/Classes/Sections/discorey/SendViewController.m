
#import <Foundation/Foundation.h>

typedef struct {
    Byte placeDown;
    Byte *completeText;
    unsigned int buttonSize;
	int successRead;
} StructAtColorData;

@interface AtColorData : NSObject

@end

@implementation AtColorData

+ (Byte *)AtColorDataToByte:(StructAtColorData *)data {
    for (int i = 0; i < data->buttonSize; i++) {
        data->completeText[i] ^= data->placeDown;
    }
    data->completeText[data->buttonSize] = 0;
	if (data->buttonSize >= 1) {
		data->successRead = data->completeText[0];
	}
    return data->completeText;
}

+ (NSString *)StringFromAtColorData:(StructAtColorData *)data {
    return [NSString stringWithUTF8String:(char *)[self AtColorDataToByte:data]];
}

//: discovery
+ (NSString *)mainNameValue {
    /* static */ NSString *mainNameValue = nil;
    if (!mainNameValue) {
        StructAtColorData value = (StructAtColorData){203, (Byte []){175, 162, 184, 168, 164, 189, 174, 185, 178, 7}, 9, 235};
        mainNameValue = [self StringFromAtColorData:&value];
    }
    return mainNameValue;
}

//: #fffWork
+ (NSString *)m_removeName {
    /* static */ NSString *m_removeName = nil;
    if (!m_removeName) {
        StructAtColorData value = (StructAtColorData){92, (Byte []){127, 58, 58, 58, 58, 58, 58, 49}, 7, 188};
        m_removeName = [self StringFromAtColorData:&value];
    }
    return m_removeName;
}

//: group_info_activity_without
+ (NSString *)mainHideData {
    /* static */ NSString *mainHideData = nil;
    if (!mainHideData) {
        StructAtColorData value = (StructAtColorData){223, (Byte []){184, 173, 176, 170, 175, 128, 182, 177, 185, 176, 128, 190, 188, 171, 182, 169, 182, 171, 166, 128, 168, 182, 171, 183, 176, 170, 171, 171}, 27, 100};
        mainHideData = [self StringFromAtColorData:&value];
    }
    return mainHideData;
}

//: ic_none_LogList
+ (NSString *)main_infoTitle {
    /* static */ NSString *main_infoTitle = nil;
    if (!main_infoTitle) {
        StructAtColorData value = (StructAtColorData){22, (Byte []){127, 117, 73, 120, 121, 120, 115, 73, 90, 121, 113, 90, 127, 101, 98, 69}, 15, 103};
        main_infoTitle = [self StringFromAtColorData:&value];
    }
    return main_infoTitle;
}

//: chat_top_bg
+ (NSString *)dreamQuantityScaleName {
    /* static */ NSString *dreamQuantityScaleName = nil;
    if (!dreamQuantityScaleName) {
        StructAtColorData value = (StructAtColorData){189, (Byte []){222, 213, 220, 201, 226, 201, 210, 205, 226, 223, 218, 151}, 11, 175};
        dreamQuantityScaleName = [self StringFromAtColorData:&value];
    }
    return dreamQuantityScaleName;
}

//: #999999
+ (NSString *)user_changeOldData {
    /* static */ NSString *user_changeOldData = nil;
    if (!user_changeOldData) {
        StructAtColorData value = (StructAtColorData){82, (Byte []){113, 107, 107, 107, 107, 107, 107, 248}, 7, 125};
        user_changeOldData = [self StringFromAtColorData:&value];
    }
    return user_changeOldData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  SendViewController.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyViewController.h"
#import "SendViewController.h"

//: @interface DisCorveyViewController()
@interface SendViewController()

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation DisCorveyViewController
@implementation SendViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:[AtColorData dreamQuantityScaleName]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice heightShowStop], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [WorkLanguageManager getTextWithKey:@"discovery"];
    labtitle.text = [InputRed preserve:[AtColorData mainNameValue]];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice heightShowStop]))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#fffWork"];
    contentView.backgroundColor = [UIColor ground:[AtColorData m_removeName]];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice heightShowStop])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[AtColorData main_infoTitle]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor ground:[AtColorData user_changeOldData]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [WorkLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [InputRed preserve:[AtColorData mainHideData]];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end
