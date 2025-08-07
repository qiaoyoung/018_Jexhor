
#import <Foundation/Foundation.h>

@interface DiscoveryData : NSObject

+ (instancetype)sharedInstance;

//: 请选择
@property (nonatomic, copy) NSString *mainWhiteFormat;

//: #5D5F66
@property (nonatomic, copy) NSString *userTingWhichId;

//: #0092de
@property (nonatomic, copy) NSString *notiLegendData;

//: item_data
@property (nonatomic, copy) NSString *notiInputUrl;

//: #2C3042
@property (nonatomic, copy) NSString *notiAuthorityIdent;

//: #EDEEEF
@property (nonatomic, copy) NSString *show_viewContent;

@end

@implementation DiscoveryData

+ (instancetype)sharedInstance {
    static DiscoveryData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DiscoveryDataToCache:(Byte *)data {
    int governFrank = data[0];
    Byte negative = data[1];
    int social = data[2];
    for (int i = social; i < social + governFrank; i++) {
        int value = data[i] - negative;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[social + governFrank] = 0;
    return data + social;
}

- (NSString *)StringFromDiscoveryData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DiscoveryDataToCache:data]];
}

//: item_data
- (NSString *)notiInputUrl {
    if (!_notiInputUrl) {
        Byte value[] = {9, 15, 3, 120, 131, 116, 124, 110, 115, 112, 131, 112, 210};
        _notiInputUrl = [self StringFromDiscoveryData:value];
    }
    return _notiInputUrl;
}

//: #5D5F66
- (NSString *)userTingWhichId {
    if (!_userTingWhichId) {
        Byte value[] = {7, 31, 4, 41, 66, 84, 99, 84, 101, 85, 85, 87};
        _userTingWhichId = [self StringFromDiscoveryData:value];
    }
    return _userTingWhichId;
}

//: #2C3042
- (NSString *)notiAuthorityIdent {
    if (!_notiAuthorityIdent) {
        Byte value[] = {7, 17, 13, 155, 191, 88, 45, 242, 162, 162, 45, 218, 135, 52, 67, 84, 68, 65, 69, 67, 119};
        _notiAuthorityIdent = [self StringFromDiscoveryData:value];
    }
    return _notiAuthorityIdent;
}

//: 请选择
- (NSString *)mainWhiteFormat {
    if (!_mainWhiteFormat) {
        Byte value[] = {9, 88, 13, 67, 211, 233, 1, 162, 194, 244, 213, 143, 130, 64, 7, 15, 65, 216, 225, 62, 227, 1, 226};
        _mainWhiteFormat = [self StringFromDiscoveryData:value];
    }
    return _mainWhiteFormat;
}

//: #0092de
- (NSString *)notiLegendData {
    if (!_notiLegendData) {
        Byte value[] = {7, 33, 9, 39, 19, 74, 13, 172, 156, 68, 81, 81, 90, 83, 133, 134, 139};
        _notiLegendData = [self StringFromDiscoveryData:value];
    }
    return _notiLegendData;
}

//: #EDEEEF
- (NSString *)show_viewContent {
    if (!_show_viewContent) {
        Byte value[] = {7, 17, 3, 52, 86, 85, 86, 86, 86, 87, 161};
        _show_viewContent = [self StringFromDiscoveryData:value];
    }
    return _show_viewContent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  DeviceView.m
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMDataPicker.h"
#import "DeviceView.h"

//: @interface HMDataPicker () <UIPickerViewDataSource, UIPickerViewDelegate>{
@interface DeviceView () <UIPickerViewDataSource, UIPickerViewDelegate>{

}
//: @property (nonatomic,weak) id<HMDataPickerDelegate> delegate;
@property (nonatomic,weak) id<ShowDelegate> delegate;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UIView *pickerBackView;
@property (nonatomic,strong) UIView *pickerBackView;
//: @property (nonatomic,strong) UIPickerView *pickerView;
@property (nonatomic,strong) UIPickerView *pickerView;
//: @property (nonatomic,strong) NSArray *dataArray;
@property (nonatomic,strong) NSArray *dataArray;
//: @property (nonatomic,strong) NSDictionary *dataDict;
@property (nonatomic,strong) NSDictionary *dataDict;
//: @property (nonatomic,strong) NSDictionary *selectedDict;
@property (nonatomic,strong) NSDictionary *selectedDict;
//: @property (nonatomic,strong) NSDictionary *tempDict;
@property (nonatomic,strong) NSDictionary *tempDict;
//: @property (nonatomic,strong) NSString *jsonNode;
@property (nonatomic,strong) NSString *jsonNode;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @end
@end



//: @implementation HMDataPicker
@implementation DeviceView


//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode{
- (id)initWithPathNode:(id<ShowDelegate>)delegate dataNode:(NSDictionary *)dataDict dict:(NSDictionary *)selectedDict message_strong:(NSString *)jsonNode{
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.frame = [[UIScreen mainScreen] bounds];
        self.frame = [[UIScreen mainScreen] bounds];
        //: _delegate = delegate;
        _delegate = delegate;

        //: _dataDict = [[NSDictionary alloc]initWithDictionary:dataDict];
        _dataDict = [[NSDictionary alloc]initWithDictionary:dataDict];
        //: _dataArray = [[NSArray alloc]initWithArray:[dataDict valueObjectForKey:@"item_data"]];
        _dataArray = [[NSArray alloc]initWithArray:[dataDict already:[DiscoveryData sharedInstance].notiInputUrl]];
        //: _selectedDict = selectedDict;
        _selectedDict = selectedDict;
        //: _jsonNode = jsonNode;
        _jsonNode = jsonNode;

        //: [self customInit];
        [self wontThroughStep];
    }
    //: return self;
    return self;
}

//: - (void)setTitle:(NSString *)title{
- (void)setByChild:(NSString *)title{
    //: _titleLabel.text = title;
    _titleLabel.text = title;
}

//: - (void)customInit{
- (void)wontThroughStep{



    //: _backView = [[UIView alloc] init];
    _backView = [[UIView alloc] init];
    //: _backView.frame = [[UIScreen mainScreen] bounds];
    _backView.frame = [[UIScreen mainScreen] bounds];
    //: _backView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    _backView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
    //: _backView.userInteractionEnabled = YES;
    _backView.userInteractionEnabled = YES;
    //: [self addSubview:_backView];
    [self addSubview:_backView];

    //: UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *disButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: disButton.frame = _backView.bounds;
    disButton.frame = _backView.bounds;
    //: [disButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
    [disButton addTarget:self action:@selector(marginBubble) forControlEvents:UIControlEventTouchUpInside];
    //: [_backView addSubview:disButton];
    [_backView addSubview:disButton];

    //: UIView *backView = [[UIView alloc] init];
    UIView *backView = [[UIView alloc] init];
    //: backView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 60 + 246+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
    backView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height, [[UIScreen mainScreen] bounds].size.width, 60 + 246+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
    //: backView.backgroundColor = [UIColor whiteColor];
    backView.backgroundColor = [UIColor whiteColor];
    //backView.center = _backView.center;
    //: [_backView addSubview:backView];
    [_backView addSubview:backView];
    //: _pickerBackView = backView;
    _pickerBackView = backView;

    //: UIView *headerView = [[UIView alloc] init];
    UIView *headerView = [[UIView alloc] init];
    //: headerView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 40);
    headerView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 40);
    //: headerView.backgroundColor = [UIColor colorWithHexString:@"#EDEEEF"];
    headerView.backgroundColor = [UIColor user:[DiscoveryData sharedInstance].show_viewContent];
    //: [backView addSubview:headerView];
    [backView addSubview:headerView];

//    UIView *lineView = [[UIView alloc] init];
//    lineView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 2);
//    lineView.backgroundColor = RGB_COLOR_String(@"#DCDDDE");
//    [backView addSubview:lineView];

    //: UILabel *titleLab = [[UILabel alloc] init];
    UILabel *titleLab = [[UILabel alloc] init];
    //: titleLab.frame = CGRectMake(30, 0, backView.frame.size.width-60, 40);
    titleLab.frame = CGRectMake(30, 0, backView.frame.size.width-60, 40);
    //: titleLab.textAlignment = NSTextAlignmentCenter;
    titleLab.textAlignment = NSTextAlignmentCenter;
    //: titleLab.font = [UIFont systemFontOfSize:16];
    titleLab.font = [UIFont systemFontOfSize:16];
    //: titleLab.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    titleLab.textColor = [UIColor user:[DiscoveryData sharedInstance].userTingWhichId];
    //: [backView addSubview:titleLab];
    [backView addSubview:titleLab];
    //: titleLab.text = [NSString stringWithFormat:@"%@", @"请选择".nim_localized];
    titleLab.text = [NSString stringWithFormat:@"%@", [DiscoveryData sharedInstance].mainWhiteFormat.minIn];
    //: _titleLabel = titleLab;
    _titleLabel = titleLab;

    //: UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
    //: button.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-60, 0, 60, 40);
    button.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-60, 0, 60, 40);
    //: [button setTitle:@"完成".nim_localized forState:UIControlStateNormal];
    [button setTitle:@"完成".minIn forState:UIControlStateNormal];
    //: [button setTitleColor:[UIColor colorWithHexString:@"#0092de"] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor user:[DiscoveryData sharedInstance].notiLegendData] forState:UIControlStateNormal];
    //: button.tag = 100;
    button.tag = 100;
    //: button.titleLabel.font = [UIFont systemFontOfSize:14];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [button addTarget:self action:@selector(buttonClick1:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(temped:) forControlEvents:UIControlEventTouchUpInside];
    //: [backView addSubview:button];
    [backView addSubview:button];

    //: UIPickerView *pickView = [[UIPickerView alloc] init];
    UIPickerView *pickView = [[UIPickerView alloc] init];
    //: pickView.tag = 1;
    pickView.tag = 1;
    //: pickView.frame = CGRectMake(0, 60, backView.frame.size.width, 206);
    pickView.frame = CGRectMake(0, 60, backView.frame.size.width, 206);
    //: pickView.delegate = self;
    pickView.delegate = self;
    //: pickView.dataSource = self;
    pickView.dataSource = self;
    //: pickView.backgroundColor = [UIColor whiteColor];
    pickView.backgroundColor = [UIColor whiteColor];
    //: pickView.showsSelectionIndicator=YES;
    pickView.showsSelectionIndicator=YES;
    //: [backView addSubview:pickView];
    [backView addSubview:pickView];
    //: pickView.userInteractionEnabled = _dataArray.count>0;
    pickView.userInteractionEnabled = _dataArray.count>0;
    //: _pickerView = pickView;
    _pickerView = pickView;


    //: [_pickerBackView setHeight:40+206 +(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)];
    [_pickerBackView setHeight:40+206 +(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)];


    //: if (_selectedDict) {
    if (_selectedDict) {
        //: _tempDict = _selectedDict;
        _tempDict = _selectedDict;
        //: for (NSInteger i=0; i<_dataArray.count; i++) {
        for (NSInteger i=0; i<_dataArray.count; i++) {
            //: NSDictionary *dict = [_dataArray objectAtIndex:i];
            NSDictionary *dict = [_dataArray objectAtIndex:i];

            //: if ([[dict newStringValueForKey:_jsonNode] isEqualToString:[_tempDict newStringValueForKey:_jsonNode]]) {
            if ([[dict index:_jsonNode] isEqualToString:[_tempDict index:_jsonNode]]) {
                //: [pickView selectRow:i inComponent:0 animated:YES];
                [pickView selectRow:i inComponent:0 animated:YES];
                //: break;
                break;
            }
        }

    //: }else{
    }else{
        //: if (_dataArray.count > 0)
        if (_dataArray.count > 0)
            //: _tempDict = [_dataArray objectAtIndex:0];
            _tempDict = [_dataArray objectAtIndex:0];
    }
}

//: -(void)buttonClick1:(UIButton*)sender{
-(void)temped:(UIButton*)sender{
    //: if (_tempDict && _delegate && [_delegate respondsToSelector:@selector(dataPicker:selectedDict:)]) {
    if (_tempDict && _delegate && [_delegate respondsToSelector:@selector(display:cancelTab:)]) {
        //: [_delegate dataPicker:self selectedDict:_tempDict];
        [_delegate display:self cancelTab:_tempDict];
    }


    //: [self dismissPicker];
    [self marginBubble];

}

//: - (void)show{
- (void)beyondDeleteMore{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{

        //: [self->_pickerBackView setOriginY:[[UIScreen mainScreen] bounds].size.height - (40 + 206 + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
        [self->_pickerBackView setClick:[[UIScreen mainScreen] bounds].size.height - (40 + 206 + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)marginBubble{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_pickerBackView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_pickerBackView setClick:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];


}

//: - (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //: return 1;
    return 1;
}

//: - (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    //: return _dataArray.count;
    return _dataArray.count;
}



//: - (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view{
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view{
    //: UILabel* pickerLabel = (UILabel*)view;
    UILabel* pickerLabel = (UILabel*)view;
    //: if (!pickerLabel){
    if (!pickerLabel){
        //: pickerLabel = [[UILabel alloc] init];
        pickerLabel = [[UILabel alloc] init];
        //: pickerLabel.adjustsFontSizeToFitWidth = YES;
        pickerLabel.adjustsFontSizeToFitWidth = YES;
        //: pickerLabel.textAlignment = NSTextAlignmentCenter;
        pickerLabel.textAlignment = NSTextAlignmentCenter;
        //: pickerLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        pickerLabel.textColor = [UIColor user:[DiscoveryData sharedInstance].notiAuthorityIdent];
        //: [pickerLabel setBackgroundColor:[UIColor clearColor]];
        [pickerLabel setBackgroundColor:[UIColor clearColor]];
        //: [pickerLabel setFont:[UIFont systemFontOfSize:17]];
        [pickerLabel setFont:[UIFont systemFontOfSize:17]];
    }

    //: NSDictionary *dic = [_dataArray objectAtIndex:row];
    NSDictionary *dic = [_dataArray objectAtIndex:row];
    //: NSString *brandAddressStr = [dic objectForKey:_jsonNode];
    NSString *brandAddressStr = [dic objectForKey:_jsonNode];
    //: pickerLabel.text = brandAddressStr;
    pickerLabel.text = brandAddressStr;
    //: return pickerLabel;
    return pickerLabel;
}

//: -(CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent: (NSInteger) component
-(CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent: (NSInteger) component
{
    //: return 40;
    return 40;
}

//: -(void) pickerView: (UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent: (NSInteger)component{
-(void) pickerView: (UIPickerView *)pickerView didSelectRow: (NSInteger)row inComponent: (NSInteger)component{

    //: _tempDict = [_dataArray objectAtIndex:row];
    _tempDict = [_dataArray objectAtIndex:row];
}



//: @end
@end