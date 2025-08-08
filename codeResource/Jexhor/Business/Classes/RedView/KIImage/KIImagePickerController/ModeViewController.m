
#import <Foundation/Foundation.h>

@interface PronounceData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PronounceData

+ (instancetype)sharedInstance {
    static PronounceData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PronounceDataToCache:(Byte *)data {
    int pressureCrowded = data[0];
    Byte southeast = data[1];
    int provide = data[2];
    for (int i = provide; i < provide + pressureCrowded; i++) {
        int value = data[i] - southeast;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[provide + pressureCrowded] = 0;
    return data + provide;
}

- (NSString *)StringFromPronounceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self PronounceDataToCache:data]];
}

//: back_white
- (NSString *)appExtensiveName {
    /* static */ NSString *appExtensiveName = nil;
    if (!appExtensiveName) {
        Byte value[] = {10, 7, 7, 88, 189, 16, 168, 105, 104, 106, 114, 102, 126, 111, 112, 123, 108, 87};
        appExtensiveName = [self StringFromPronounceData:value];
    }
    return appExtensiveName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ModeViewController.m
//  ChineseTastes
//
//  Created by 刘 波 on 13-7-8.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImageCropperViewController.h"
#import "ModeViewController.h"

//: @interface KIImageCropperViewController ()
@interface ModeViewController ()

//: @end
@end

//: @implementation KIImageCropperViewController
@implementation ModeViewController

//: - (id)initWithImage:(UIImage *)image cropSize:(CGSize)cropSize {
- (id)initWithUserMode:(UIImage *)image date:(CGSize)cropSize {
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
    _imageCropperView = [[EndueView alloc] initWithFrame:CGRectMake(0,
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
    UIBarButtonItem *rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"裁切".titleBy
                                                                           //: style:UIBarButtonItemStylePlain
                                                                           style:UIBarButtonItemStylePlain
                                                                          //: target:self
                                                                          target:self
                                                                          //: action:@selector(croppedImage)];
                                                                          action:@selector(shirtButton)];
    //: self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    self.navigationItem.rightBarButtonItem = rightBarButtonItem;
    //: rightBarButtonItem.tintColor = [UIColor whiteColor];
    rightBarButtonItem.tintColor = [UIColor whiteColor];

    //: [self setNavLeftItem:@selector(left) image:[UIImage imageNamed:@"back_white"] imageH:nil];
    [self port:@selector(shouldLeft) sendImage:[UIImage imageNamed:[[PronounceData sharedInstance] appExtensiveName]] add:nil];
}

//: - (void)left {
- (void)shouldLeft {
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
- (void)setShirtButton:(void(^)(UIImage *image))block {
    //: if (_croppedImage != block) {
    if (_croppedImage != block) {
        //: _croppedImage = [block copy];
        _croppedImage = [block copy];
    }
}

//: - (void)croppedImage {
- (void)shirtButton {
    //: [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    [self.navigationController dismissViewControllerAnimated:NO completion:nil];
    //: if (_croppedImage != nil) {
    if (_croppedImage != nil) {
        //: _croppedImage(_imageCropperView.croppedImage);
        _croppedImage(_imageCropperView.shirtButton);
    }
}

//: - (void)didReceiveMemoryWarning {
- (void)didReceiveMemoryWarning {
    //: [super didReceiveMemoryWarning];
    [super didReceiveMemoryWarning];
}

//: @end
@end