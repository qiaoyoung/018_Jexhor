
#import <Foundation/Foundation.h>

@interface DrumData : NSObject

+ (instancetype)sharedInstance;

//: mp4
@property (nonatomic, copy) NSString *app_barrelValue;

//: 图片在本地不存在，无法发送
@property (nonatomic, copy) NSString *kPlanetAcheValue;

//: 文件在iCloud上，无法发送
@property (nonatomic, copy) NSString *mAtValue;

//: #612CF9
@property (nonatomic, copy) NSString *mEnrollValue;

//: #875FFA
@property (nonatomic, copy) NSString *mSessionContent;

//: 图片在iCloud上
@property (nonatomic, copy) NSString *showStoveName;

//: nimdemo.netease.fetcher
@property (nonatomic, copy) NSString *userDeployEmergingText;

//: 图片在本地不存在
@property (nonatomic, copy) NSString *show_placeTowerValue;

@end

@implementation DrumData

+ (instancetype)sharedInstance {
    static DrumData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DrumDataToCache:(Byte *)data {
    int naturalAction = data[0];
    Byte labelAdd = data[1];
    int philosopher = data[2];
    for (int i = philosopher; i < philosopher + naturalAction; i++) {
        int value = data[i] - labelAdd;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[philosopher + naturalAction] = 0;
    return data + philosopher;
}

- (NSString *)StringFromDrumData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DrumDataToCache:data]];
}

//: mp4
- (NSString *)app_barrelValue {
    if (!_app_barrelValue) {
        Byte value[] = {3, 96, 13, 80, 113, 11, 170, 33, 51, 118, 253, 168, 130, 205, 208, 148, 13};
        _app_barrelValue = [self StringFromDrumData:value];
    }
    return _app_barrelValue;
}

//: #612CF9
- (NSString *)mEnrollValue {
    if (!_mEnrollValue) {
        Byte value[] = {7, 60, 13, 19, 242, 96, 45, 223, 178, 139, 38, 241, 107, 95, 114, 109, 110, 127, 130, 117, 135};
        _mEnrollValue = [self StringFromDrumData:value];
    }
    return _mEnrollValue;
}

//: #875FFA
- (NSString *)mSessionContent {
    if (!_mSessionContent) {
        Byte value[] = {7, 49, 11, 144, 173, 61, 43, 96, 59, 138, 210, 84, 105, 104, 102, 119, 119, 114, 92};
        _mSessionContent = [self StringFromDrumData:value];
    }
    return _mSessionContent;
}

//: 图片在本地不存在
- (NSString *)show_placeTowerValue {
    if (!_show_placeTowerValue) {
        Byte value[] = {24, 88, 7, 73, 199, 215, 95, 61, 243, 22, 63, 225, 223, 61, 244, 0, 62, 244, 4, 61, 244, 8, 60, 16, 229, 61, 5, 240, 61, 244, 0, 233};
        _show_placeTowerValue = [self StringFromDrumData:value];
    }
    return _show_placeTowerValue;
}

//: 图片在本地不存在，无法发送
- (NSString *)kPlanetAcheValue {
    if (!_kPlanetAcheValue) {
        Byte value[] = {39, 61, 7, 52, 208, 92, 201, 34, 216, 251, 36, 198, 196, 34, 217, 229, 35, 217, 233, 34, 217, 237, 33, 245, 202, 34, 234, 213, 34, 217, 229, 44, 249, 201, 35, 212, 221, 35, 240, 210, 34, 204, 206, 38, 189, 190, 50};
        _kPlanetAcheValue = [self StringFromDrumData:value];
    }
    return _kPlanetAcheValue;
}

//: 文件在iCloud上，无法发送
- (NSString *)mAtValue {
    if (!_mAtValue) {
        Byte value[] = {33, 19, 5, 201, 181, 249, 169, 154, 247, 206, 201, 248, 175, 187, 124, 86, 127, 130, 136, 119, 247, 203, 157, 2, 207, 159, 249, 170, 179, 249, 198, 168, 248, 162, 164, 252, 147, 148, 156};
        _mAtValue = [self StringFromDrumData:value];
    }
    return _mAtValue;
}

//: nimdemo.netease.fetcher
- (NSString *)userDeployEmergingText {
    if (!_userDeployEmergingText) {
        Byte value[] = {23, 11, 3, 121, 116, 120, 111, 112, 120, 122, 57, 121, 112, 127, 112, 108, 126, 112, 57, 113, 112, 127, 110, 115, 112, 125, 193};
        _userDeployEmergingText = [self StringFromDrumData:value];
    }
    return _userDeployEmergingText;
}

//: 图片在iCloud上
- (NSString *)showStoveName {
    if (!_showStoveName) {
        Byte value[] = {18, 73, 10, 181, 224, 207, 218, 251, 94, 193, 46, 228, 7, 48, 210, 208, 46, 229, 241, 178, 140, 181, 184, 190, 173, 45, 1, 211, 49};
        _showStoveName = [self StringFromDrumData:value];
    }
    return _showStoveName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  KitNavigationController.m
// MessageContent
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WorkKitMediaPickerController.h"
#import "KitNavigationController.h"
//: #import "WorkKitProgressHUD.h"
#import "KitEffectView.h"
//: #import "WorkKitDependency.h"
#import "WorkKitDependency.h"
//: #import "WorkGlobalMacro.h"
#import "WorkGlobalMacro.h"
//: #import "WorkKitFileLocationHelper.h"
#import "ImageHelper.h"
//: #import <MobileCoreServices/MobileCoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>

//: @interface WorkKitMediaPickerController ()<TZImagePickerControllerDelegate>
@interface KitNavigationController ()<TZImagePickerControllerDelegate>

//: @property (nonatomic, assign) UIStatusBarStyle myStatusBarStyle;
@property (nonatomic, assign) UIStatusBarStyle myStatusBarStyle;

//: @end
@end

//: @implementation WorkKitMediaPickerController
@implementation KitNavigationController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount {
- (instancetype)initWithMaxBackgroundCountUpStreetwisePage:(NSInteger)maxImagesCount {
    //: if (self = [super initWithMaxImagesCount:maxImagesCount delegate:nil]) {
    if (self = [super initWithMaxImagesCount:maxImagesCount delegate:nil]) {
        //: self.navigationBar.barStyle = UIBarStyleBlack;
        self.navigationBar.barStyle = UIBarStyleBlack;
        //: self.pickerDelegate = self;
        self.pickerDelegate = self;
        //: self.naviBgColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        self.naviBgColor = [UIColor colorWithPatternImage:[QuantityHelper image:[UIColor ground:[DrumData sharedInstance].mSessionContent] get:[UIColor ground:[DrumData sharedInstance].mEnrollValue] show:SNLinearGradientDirectionLevel]];
        //: self.naviTitleColor = [UIColor blackColor];
        self.naviTitleColor = [UIColor blackColor];
        //: self.barItemTextColor = [UIColor blackColor];
        self.barItemTextColor = [UIColor blackColor];

        //: self.allowPickingOriginalPhoto = NO;
        self.allowPickingOriginalPhoto = NO;
    }
    //: return self;
    return self;
}

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount delegate:(id<TZImagePickerControllerDelegate>)delegate {
- (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount delegate:(id<TZImagePickerControllerDelegate>)delegate {
    //: if (self = [super initWithMaxImagesCount:maxImagesCount delegate:delegate]) {
    if (self = [super initWithMaxImagesCount:maxImagesCount delegate:delegate]) {
        //: self.navigationBar.barStyle = UIBarStyleDefault;
        self.navigationBar.barStyle = UIBarStyleDefault;
        //: self.naviBgColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
        self.naviBgColor = [UIColor colorWithPatternImage:[QuantityHelper image:[UIColor ground:[DrumData sharedInstance].mSessionContent] get:[UIColor ground:[DrumData sharedInstance].mEnrollValue] show:SNLinearGradientDirectionLevel]];
        //: self.naviTitleColor = [UIColor blackColor];
        self.naviTitleColor = [UIColor blackColor];
        //: self.barItemTextColor = [UIColor blackColor];
        self.barItemTextColor = [UIColor blackColor];

        //: self.allowPickingOriginalPhoto = NO;
        self.allowPickingOriginalPhoto = NO;
    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
//    [UIApplication sharedApplication].statusBarStyle =  UIStatusBarStyleDarkContent;
//    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];

}

//: #pragma mark - <TZImagePickerControllerDelegate>
#pragma mark - <TZImagePickerControllerDelegate>
//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
       //: didFinishPickingPhotos:(NSArray<UIImage *> *)photos
       didFinishPickingPhotos:(NSArray<UIImage *> *)photos
                 //: sourceAssets:(NSArray *)assets
                 sourceAssets:(NSArray *)assets
        //: isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto infos:(NSArray<NSDictionary *> *)infos {
        isSelectOriginalPhoto:(BOOL)isSelectOriginalPhoto infos:(NSArray<NSDictionary *> *)infos {
    //: if (isSelectOriginalPhoto)
    if (isSelectOriginalPhoto)
    {
        //: [self requestAssets:[assets mutableCopy]];
        [self menu:[assets mutableCopy]];
    }
    //: else
    else
    {
        //: if ([_nim_delegate respondsToSelector:@selector(onPickerSelectedWithType:images:path:)]) {
        if ([_nim_delegate respondsToSelector:@selector(alongUser:value:withPath:)]) {
            //: [_nim_delegate onPickerSelectedWithType:PHAssetMediaTypeImage images:photos path:nil];
            [_nim_delegate alongUser:PHAssetMediaTypeImage value:photos withPath:nil];
        }
    }
}

//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
        //: didFinishPickingVideo:(UIImage *)coverImage
        didFinishPickingVideo:(UIImage *)coverImage
                 //: sourceAssets:(id)asset{
                 sourceAssets:(id)asset{
    //: NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    //: [self requestAssets:items];
    [self menu:items];
}

//: - (void)imagePickerController:(TZImagePickerController *)picker
- (void)imagePickerController:(TZImagePickerController *)picker
     //: didFinishPickingGifImage:(UIImage *)animatedImage
     didFinishPickingGifImage:(UIImage *)animatedImage
                 //: sourceAssets:(PHAsset *)asset {
                 sourceAssets:(PHAsset *)asset {
    //: NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    NSMutableArray *items = [[NSMutableArray alloc] initWithArray:@[asset]];
    //: [self requestAssets:items];
    [self menu:items];
}

//: - (void)requestAssets:(NSMutableArray *)assets
- (void)menu:(NSMutableArray *)assets
{
    //: if (!assets.count) {
    if (!assets.count) {
        //: return;
        return;
    }

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [WorkKitProgressHUD show];
    [KitEffectView refreshShow];
    //: [self requestAsset:assets.firstObject handler:^(NSString *path, PHAssetMediaType type) {
    [self bottom:assets.firstObject buttonTing:^(NSString *path, PHAssetMediaType type) {
        //: [WorkKitProgressHUD dismiss];
        [KitEffectView should];
        //: if ([weakSelf.nim_delegate respondsToSelector:@selector(onPickerSelectedWithType:images:path:)]) {
        if ([weakSelf.nim_delegate respondsToSelector:@selector(alongUser:value:withPath:)]) {
            //: [weakSelf.nim_delegate onPickerSelectedWithType:type images:nil path:path];
            [weakSelf.nim_delegate alongUser:type value:nil withPath:path];
        }
        //: if ([NSThread isMainThread]) {^{ [assets removeObjectAtIndex:0]; [weakSelf requestAssets:assets]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [assets removeObjectAtIndex:0]; [weakSelf requestAssets:assets]; });}
        if ([NSThread isMainThread]) {^{ [assets removeObjectAtIndex:0]; [weakSelf menu:assets]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [assets removeObjectAtIndex:0]; [weakSelf menu:assets]; });}



    //: }];
    }];
}

//: - (void)requestAsset:(PHAsset *)asset handler:(void(^)(NSString *,PHAssetMediaType)) handler
- (void)bottom:(PHAsset *)asset buttonTing:(void(^)(NSString *,PHAssetMediaType)) handler
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (asset.mediaType == PHAssetMediaTypeVideo) {
    if (asset.mediaType == PHAssetMediaTypeVideo) {

        //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            //: PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
            PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
            //: options.version = PHVideoRequestOptionsVersionCurrent;
            options.version = PHVideoRequestOptionsVersionCurrent;
            //: options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
            options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;

            //: [PHImageManager.defaultManager requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable assetR, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
            [PHImageManager.defaultManager requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable assetR, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
                //: NSError *error = nil;
                NSError *error = nil;
                //: NSString *outputPath = nil;
                NSString *outputPath = nil;
                //: if ([[info objectForKey:PHImageResultIsInCloudKey] boolValue]) {
                if ([[info objectForKey:PHImageResultIsInCloudKey] boolValue]) {
                    //: outputPath = nil;
                    outputPath = nil;
                    //: error = [NSError errorWithDomain:@"nimdemo.netease.fetcher" code:0x1000 userInfo:@{NSLocalizedDescriptionKey:@"图片在iCloud上"}];
                    error = [NSError errorWithDomain:[DrumData sharedInstance].userDeployEmergingText code:0x1000 userInfo:@{NSLocalizedDescriptionKey:[DrumData sharedInstance].showStoveName}];
                    //: [weakSelf showErrorMsg:@"文件在iCloud上，无法发送"];
                    [weakSelf bringHome:[DrumData sharedInstance].mAtValue];
                //: } else {
                } else {
                    //: AVURLAsset *URLAsset = (AVURLAsset *)assetR;
                    AVURLAsset *URLAsset = (AVURLAsset *)assetR;
                    //: NSString *outputFileName = [WorkKitFileLocationHelper genFilenameWithExt:@"mp4"];
                    NSString *outputFileName = [ImageHelper key:[DrumData sharedInstance].app_barrelValue];
                    //: outputPath = [WorkKitFileLocationHelper filepathForVideo:outputFileName];
                    outputPath = [ImageHelper soundVideo:outputFileName];
                    //: BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:URLAsset.URL.path];
                    BOOL fileExist = [[NSFileManager defaultManager] fileExistsAtPath:URLAsset.URL.path];
                    //: if (!fileExist) {
                    if (!fileExist) {
                        //: error = [NSError errorWithDomain:@"nimdemo.netease.fetcher" code:0x1001 userInfo:@{NSLocalizedDescriptionKey:@"图片在本地不存在"}];
                        error = [NSError errorWithDomain:[DrumData sharedInstance].userDeployEmergingText code:0x1001 userInfo:@{NSLocalizedDescriptionKey:[DrumData sharedInstance].show_placeTowerValue}];
                        //: [weakSelf showErrorMsg:@"图片在本地不存在，无法发送"];
                        [weakSelf bringHome:[DrumData sharedInstance].kPlanetAcheValue];
                    //: } else {
                    } else {
                        //: [NSFileManager.defaultManager copyItemAtURL:URLAsset.URL toURL:[NSURL fileURLWithPath:outputPath] error:&error];
                        [NSFileManager.defaultManager copyItemAtURL:URLAsset.URL toURL:[NSURL fileURLWithPath:outputPath] error:&error];
                    }
                }

                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: handler(!error ? outputPath : nil, PHAssetMediaTypeVideo);
                    handler(!error ? outputPath : nil, PHAssetMediaTypeVideo);
                //: });
                });
            //: }];
            }];
        //: });
        });
    }

    //: if (asset.mediaType == PHAssetMediaTypeImage)
    if (asset.mediaType == PHAssetMediaTypeImage)
    {
        //: [asset requestContentEditingInputWithOptions:nil completionHandler:^(PHContentEditingInput * _Nullable contentEditingInput, NSDictionary * _Nonnull info) {
        [asset requestContentEditingInputWithOptions:nil completionHandler:^(PHContentEditingInput * _Nullable contentEditingInput, NSDictionary * _Nonnull info) {
            //: NSString *path = contentEditingInput.fullSizeImageURL.relativePath;
            NSString *path = contentEditingInput.fullSizeImageURL.relativePath;
            //: handler(path,contentEditingInput.mediaType);
            handler(path,contentEditingInput.mediaType);
        //: }];
        }];
    }

}

//: - (void)showErrorMsg:(NSString *)msg {
- (void)bringHome:(NSString *)msg {
    //: if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; });};
    if ([NSThread isMainThread]) {^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; }();} else {dispatch_async(dispatch_get_main_queue(), ^{ [[UIApplication sharedApplication].windows.firstObject makeToast:msg duration:2 position:CSToastPositionCenter]; });};




}

//: #pragma mark - setter
#pragma mark - setter
//: - (void)setMediaTypes:(NSArray<NSString *> *)mediaTypes {
- (void)setMediaTypes:(NSArray<NSString *> *)mediaTypes {
    //: _mediaTypes = mediaTypes;
    _mediaTypes = mediaTypes;
    //: self.allowPickingVideo = [mediaTypes containsObject:(NSString *)kUTTypeMovie];
    self.allowPickingVideo = [mediaTypes containsObject:(NSString *)kUTTypeMovie];
    //: self.allowPickingImage = [mediaTypes containsObject:(NSString *)kUTTypeImage];
    self.allowPickingImage = [mediaTypes containsObject:(NSString *)kUTTypeImage];
    //: self.allowPickingGif = [mediaTypes containsObject:(NSString *)kUTTypeGIF];
    self.allowPickingGif = [mediaTypes containsObject:(NSString *)kUTTypeGIF];
}

//: @end
@end
