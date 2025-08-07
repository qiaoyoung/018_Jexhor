
#import <Foundation/Foundation.h>

@interface DestinationDownData : NSObject

+ (instancetype)sharedInstance;

//: back_white
@property (nonatomic, copy) NSString *user_buildName;

@end

@implementation DestinationDownData

+ (instancetype)sharedInstance {
    static DestinationDownData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DestinationDownDataToCache:(Byte *)data {
    int downBuddy = data[0];
    int moralWar = data[1];
    for (int i = 0; i < downBuddy / 2; i++) {
        int begin = moralWar + i;
        int end = moralWar + downBuddy - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[moralWar + downBuddy] = 0;
    return data + moralWar;
}

- (NSString *)StringFromDestinationDownData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DestinationDownDataToCache:data]];
}  

//: back_white
- (NSString *)user_buildName {
    if (!_user_buildName) {
        Byte value[] = {10, 2, 101, 116, 105, 104, 119, 95, 107, 99, 97, 98, 38};
        _user_buildName = [self StringFromDestinationDownData:value];
    }
    return _user_buildName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  CenterRandomViewController.m
//  ChineseTastes
//
//  Created by 刘 波 on 13-7-8.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImageCropperViewController.h"
#import "CenterRandomViewController.h"

//: @interface KIImageCropperViewController ()
@interface CenterRandomViewController ()

//: @end
@end

//: @implementation KIImageCropperViewController
@implementation CenterRandomViewController

//: - (id)initWithImage:(UIImage *)image cropSize:(CGSize)cropSize {
- (id)initWithRedundant:(UIImage *)image analogDigitalConverterSize:(CGSize)cropSize {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: _image = image;
        _image = image;
        //: _cropSize = cropSize;
        _cropSize = cropSize;
    }
    //: return self;
    return self;
}

//: - (void)loadView {
- (void)loadView {
    //: [super loadView];
    [super loadView];
    //: _imageCropperView = [[KIImageCropperView alloc] initWithFrame:CGRectMake(0,
    _imageCropperView = [[VisualImageNameView alloc] initWithFrame:CGRectMake(0,
                                                                             //: 0,
                                                                             0,
                                                                             //: CGRectGetWidth(self.view.bounds),
                                                                             CGRectGetWidth(self.view.bounds),
                                                                             //: CGRectGetHeight(self.view.bounds))];
                                                                             CGRectGetHeight(self.view.bounds))];
    //: [_imageCropperView setCropSize:_cropSize];
    [_imageCropperView setCropSize:_cropSize];
    //: [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.6]];
    //: [self.view addSubview:_imageCropperView];
    [self.view addSubview:_imageCropperView];
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];

    //: [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self.navigationController setNavigationBarHidden:NO animated:YES];

    //: UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".nim_localized
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".minIn
                                                                           //: style:UIBarButtonItemStylePlain
                                                                           style:UIBarButtonItemStylePlain
                                                                          //: target:self
                                                                          target:self
                                                                          //: action:@selector(croppedImage)];
                                                                          action:@selector(lowlinessView)];
    //: self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    //: rightBarButtonItem.tintColor = [UIColor whiteColor];
    rightBarButtonItem.tintColor = [UIColor whiteColor];

    //: [self setNavLeftItem:@selector(left) image:[UIImage imageNamed:@"back_white"] imageH:nil];
    [self infoIndex:@selector(timeLoad) with:[UIImage imageNamed:[DestinationDownData sharedInstance].user_buildName] message:nil];
}

//: - (void)left {
- (void)timeLoad {
    //: [self.navigationController dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];

    //: [_imageCropperView setImage:_image];
    [_imageCropperView setImage:_image];
    //: [_imageCropperView setFrame:CGRectMake(0,
    [_imageCropperView setFrame:CGRectMake(0,
                                           //: 0,
                                           0,
                                           //: CGRectGetWidth(self.view.bounds),
                                           CGRectGetWidth(self.view.bounds),
                                           //: CGRectGetHeight(self.view.bounds))];
                                           CGRectGetHeight(self.view.bounds))];
}

//: - (void)viewDidAppear:(BOOL)animated {
- (void)viewDidAppear:(BOOL)animated {
    //: [super viewDidAppear:animated];
    [super viewDidAppear:animated];




}

//: - (void)setCroppedImage:(void(^)(UIImage *image))block {
- (void)setLowlinessView:(void(^)(UIImage *image))block {
    //: if (_croppedImage != block) {
    if (_croppedImage != block) {
        //: _croppedImage = [block copy];
        _croppedImage = [block copy];
    }
}

//: - (void)croppedImage {
- (void)lowlinessView {
    //: [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    //: if (_croppedImage != nil) {
    if (_croppedImage != nil) {
        //: _croppedImage(_imageCropperView.croppedImage);
        _croppedImage(_imageCropperView.lowlinessView);
    }
}

//: - (void)didReceiveMemoryWarning {
- (void)didReceiveMemoryWarning {
    //: [super didReceiveMemoryWarning];
    [super didReceiveMemoryWarning];
}

//: @end
@end