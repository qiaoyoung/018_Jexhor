
#import <Foundation/Foundation.h>

typedef struct {
    Byte oppositionCreate;
    Byte *boat;
    unsigned int smile;
	int tingStorm;
	int drama;
	int otic;
} StructInfluentialVotingData;

@interface InfluentialVotingData : NSObject

+ (instancetype)sharedInstance;

//: mp4
@property (nonatomic, copy) NSString *dream_pickupKey;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *noti_cellStr;

//: setting_privacy_camera
@property (nonatomic, copy) NSString *m_parkTeamPath;

//: warm_prompt
@property (nonatomic, copy) NSString *k_influentialFormat;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *mainEssentialPath;

//: setting_privacy
@property (nonatomic, copy) NSString *user_quipScienceViewKey;

@end

@implementation InfluentialVotingData

+ (instancetype)sharedInstance {
    static InfluentialVotingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)InfluentialVotingDataToByte:(StructInfluentialVotingData *)data {
    for (int i = 0; i < data->smile; i++) {
        data->boat[i] ^= data->oppositionCreate;
    }
    data->boat[data->smile] = 0;
	if (data->smile >= 3) {
		data->tingStorm = data->boat[0];
		data->drama = data->boat[1];
		data->otic = data->boat[2];
	}
    return data->boat;
}

- (NSString *)StringFromInfluentialVotingData:(StructInfluentialVotingData *)data {
    return [NSString stringWithUTF8String:(char *)[self InfluentialVotingDataToByte:data]];
}

//: setting_privacy
- (NSString *)user_quipScienceViewKey {
    if (!_user_quipScienceViewKey) {
        StructInfluentialVotingData value = (StructInfluentialVotingData){40, (Byte []){91, 77, 92, 92, 65, 70, 79, 119, 88, 90, 65, 94, 73, 75, 81, 100}, 15, 13, 250, 11};
        _user_quipScienceViewKey = [self StringFromInfluentialVotingData:&value];
    }
    return _user_quipScienceViewKey;
}

//: contact_tag_fragment_sure
- (NSString *)mainEssentialPath {
    if (!_mainEssentialPath) {
        StructInfluentialVotingData value = (StructInfluentialVotingData){185, (Byte []){218, 214, 215, 205, 216, 218, 205, 230, 205, 216, 222, 230, 223, 203, 216, 222, 212, 220, 215, 205, 230, 202, 204, 203, 220, 100}, 25, 150, 117, 12};
        _mainEssentialPath = [self StringFromInfluentialVotingData:&value];
    }
    return _mainEssentialPath;
}

//: contact_tag_fragment_cancel
- (NSString *)noti_cellStr {
    if (!_noti_cellStr) {
        StructInfluentialVotingData value = (StructInfluentialVotingData){210, (Byte []){177, 189, 188, 166, 179, 177, 166, 141, 166, 179, 181, 141, 180, 160, 179, 181, 191, 183, 188, 166, 141, 177, 179, 188, 177, 183, 190, 201}, 27, 223, 214, 167};
        _noti_cellStr = [self StringFromInfluentialVotingData:&value];
    }
    return _noti_cellStr;
}

//: setting_privacy_camera
- (NSString *)m_parkTeamPath {
    if (!_m_parkTeamPath) {
        StructInfluentialVotingData value = (StructInfluentialVotingData){20, (Byte []){103, 113, 96, 96, 125, 122, 115, 75, 100, 102, 125, 98, 117, 119, 109, 75, 119, 117, 121, 113, 102, 117, 13}, 22, 42, 196, 247};
        _m_parkTeamPath = [self StringFromInfluentialVotingData:&value];
    }
    return _m_parkTeamPath;
}

//: mp4
- (NSString *)dream_pickupKey {
    if (!_dream_pickupKey) {
        StructInfluentialVotingData value = (StructInfluentialVotingData){42, (Byte []){71, 90, 30, 117}, 3, 229, 176, 25};
        _dream_pickupKey = [self StringFromInfluentialVotingData:&value];
    }
    return _dream_pickupKey;
}

//: warm_prompt
- (NSString *)k_influentialFormat {
    if (!_k_influentialFormat) {
        StructInfluentialVotingData value = (StructInfluentialVotingData){211, (Byte []){164, 178, 161, 190, 140, 163, 161, 188, 190, 163, 167, 254}, 11, 255, 94, 147};
        _k_influentialFormat = [self StringFromInfluentialVotingData:&value];
    }
    return _k_influentialFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitPhotoFetcher.m
// Secret
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushKitMediaFetcher.h"
#import "CellShow.h"
//: #import <MobileCoreServices/MobileCoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>
//: #import "PushKitFileLocationHelper.h"
#import "SecretHelper.h"
//: #import "PushMessageMaker.h"
#import "AddEnablely.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"
//: #import "PushKitDependency.h"
#import "PushKitDependency.h"
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "PushKitProgressHUD.h"
#import "CoverView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "PushKitMediaPickerController.h"
#import "CountPickerController.h"
//: #import "AVAsset+MyUserKit.h"
#import "AVAsset+Secret.h"

//: @interface PushKitMediaFetcher()<PushKitMediaPickerDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@interface CellShow()<AddDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (nonatomic,copy) NIMKitLibraryFetchResult libraryResultHandler;
@property (nonatomic,copy) NIMKitLibraryFetchResult libraryResultHandler;

//: @property (nonatomic,copy) NIMKitCameraFetchResult cameraResultHandler;
@property (nonatomic,copy) NIMKitCameraFetchResult cameraResultHandler;

//: @property (nonatomic,weak) UIImagePickerController *imagePicker;
@property (nonatomic,weak) UIImagePickerController *imagePicker;

//: @property (nonatomic,strong) PushKitMediaPickerController *assetsPicker;
@property (nonatomic,strong) CountPickerController *assetsPicker;

//: @end
@end

//: @implementation PushKitMediaFetcher
@implementation CellShow

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _mediaTypes = @[(NSString *)kUTTypeMovie,(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        _mediaTypes = @[(NSString *)kUTTypeMovie,(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        //: _limit = 9;
        _limit = 9;
    }
    //: return self;
    return self;
}

//: - (void)fetchPhotoFromLibrary:(NIMKitLibraryFetchResult)result
- (void)theory:(NIMKitLibraryFetchResult)result
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self setUpPhotoLibrary:^(UIViewController * _Nullable picker) {
    [self setMargin:^(UIViewController * _Nullable picker) {
        //: if (picker && weakSelf) {
        if (picker && weakSelf) {
            //: weakSelf.assetsPicker = picker;
            weakSelf.assetsPicker = picker;
            //: weakSelf.libraryResultHandler = result;
            weakSelf.libraryResultHandler = result;
            //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
            UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
            //: picker.modalPresentationStyle = UIModalPresentationFullScreen;
            picker.modalPresentationStyle = UIModalPresentationFullScreen;
            //: if (rootVC.presentedViewController) {
            if (rootVC.presentedViewController) {
                //: [rootVC.presentedViewController presentViewController:picker animated:YES completion:nil];
                [rootVC.presentedViewController presentViewController:picker animated:YES completion:nil];
            //: } else {
            } else {
                //: [rootVC presentViewController:picker animated:YES completion:nil];
                [rootVC presentViewController:picker animated:YES completion:nil];
            }
        //: }else{
        }else{
            //: result(nil,nil,PHAssetMediaTypeUnknown);
            result(nil,nil,PHAssetMediaTypeUnknown);
        }
    //: }];
    }];
}

//: - (void)fetchMediaFromCamera:(NIMKitCameraFetchResult)result
- (void)gammaHydroxybutyrate:(NIMKitCameraFetchResult)result
{
    //: if ([self initCamera]) {
    if ([self initChildHandleCamera]) {
        //: self.cameraResultHandler = result;
        self.cameraResultHandler = result;




        //: UIImagePickerController *imagePicker = [self setupImagePicker];
        UIImagePickerController *imagePicker = [self red];
        //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
        UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
        //: rootVC.modalPresentationStyle = UIModalPresentationFullScreen;
        rootVC.modalPresentationStyle = UIModalPresentationFullScreen;
        //: if (rootVC.presentedViewController) {
        if (rootVC.presentedViewController) {
            //: [rootVC.presentedViewController presentViewController:imagePicker animated:YES completion:nil];
            [rootVC.presentedViewController presentViewController:imagePicker animated:YES completion:nil];
        //: } else {
        } else {
            //: [rootVC presentViewController:imagePicker animated:YES completion:nil];
            [rootVC presentViewController:imagePicker animated:YES completion:nil];
        }
        //: _imagePicker = imagePicker;
        _imagePicker = imagePicker;

    }
}

//: - (UIImagePickerController *)setupImagePicker {
- (UIImagePickerController *)red {
    //: UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //: imagePicker.delegate = self;
    imagePicker.delegate = self;
    //: imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    //: imagePicker.mediaTypes = self.mediaTypes;
    imagePicker.mediaTypes = self.mediaTypes;

    //: BOOL allowMovie = [_mediaTypes containsObject:(NSString *)kUTTypeMovie];
    BOOL allowMovie = [_mediaTypes containsObject:(NSString *)kUTTypeMovie];
    //: BOOL allowPhoto = [_mediaTypes containsObject:(NSString *)kUTTypeImage];
    BOOL allowPhoto = [_mediaTypes containsObject:(NSString *)kUTTypeImage];
    //: if (allowMovie && !allowPhoto) {
    if (allowMovie && !allowPhoto) {
        //: imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
        imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
    //: } else {
    } else {
        //: imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
        imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
    }
    //: imagePicker.videoQuality = UIImagePickerControllerQualityTypeHigh;
    imagePicker.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: return imagePicker;
    return imagePicker;
}

//: - (void)setupPicker:(void(^)(UIViewController * _Nullable picker)) handler {
- (void)to:(void(^)(UIViewController * _Nullable picker)) handler {
    //: UIViewController *pickerVC = nil;
    UIViewController *pickerVC = nil;
    //: PushKitMediaPickerController *vc = [[PushKitMediaPickerController alloc] initWithMaxImagesCount:self.limit];
    CountPickerController *vc = [[CountPickerController alloc] initWithExamine:self.limit];
    //: vc.nim_delegate = self;
    vc.nim_delegate = self;
    //: vc.mediaTypes = self.mediaTypes;
    vc.mediaTypes = self.mediaTypes;
    //: self.assetsPicker = vc;
    self.assetsPicker = vc;
    //: pickerVC = vc;
    pickerVC = vc;
    //: if (handler) {
    if (handler) {
        //: handler(pickerVC);
        handler(pickerVC);
    }
}

//: - (void)setUpPhotoLibrary:(void(^)(UIViewController * _Nullable picker)) handler
- (void)setMargin:(void(^)(UIViewController * _Nullable picker)) handler
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (@available(iOS 14, *)) {
    if (@available(iOS 14, *)) {
        //: PHAuthorizationStatus rstatus = [PHPhotoLibrary authorizationStatusForAccessLevel:PHAccessLevelReadWrite];
        PHAuthorizationStatus rstatus = [PHPhotoLibrary authorizationStatusForAccessLevel:PHAccessLevelReadWrite];
        //: switch (rstatus) {
        switch (rstatus) {
            //: case PHAuthorizationStatusNotDetermined:
            case PHAuthorizationStatusNotDetermined:
            {
                //: [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
                [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
                    //: dispatch_async(dispatch_get_main_queue(), ^{
                    dispatch_async(dispatch_get_main_queue(), ^{
                        //: if (status == PHAuthorizationStatusRestricted
                        if (status == PHAuthorizationStatusRestricted
                            //: || status == PHAuthorizationStatusDenied
                            || status == PHAuthorizationStatusDenied
                            //: || status == PHAuthorizationStatusLimited) {
                            || status == PHAuthorizationStatusLimited) {
                            //: dispatch_async(dispatch_get_main_queue(), ^{
                            dispatch_async(dispatch_get_main_queue(), ^{
                                //: if(handler) handler(nil);
                                if(handler) handler(nil);
                            //: });
                            });
                        //: } else if (status == PHAuthorizationStatusAuthorized) {
                        } else if (status == PHAuthorizationStatusAuthorized) {
                            //: [weakSelf setupPicker:handler];
                            [weakSelf to:handler];
                        }
                    //: });
                    });
                //: }];
                }];
            }
                //: break;
                break;
            //: case PHAuthorizationStatusAuthorized:
            case PHAuthorizationStatusAuthorized:
            //: case PHAuthorizationStatusLimited:
            case PHAuthorizationStatusLimited:
            {
                //: [weakSelf setupPicker:handler];
                [weakSelf to:handler];
            }
                //: break;
                break;

            //: default:
            default:
            {
                //: [[[UIAlertView alloc] initWithTitle:[PushLanguageManager getTextWithKey:@"warm_prompt"]
                [[[UIAlertView alloc] initWithTitle:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].k_influentialFormat]
                                            //: message:[PushLanguageManager getTextWithKey:@"setting_privacy"]
                                            message:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].user_quipScienceViewKey]
                                           //: delegate:self
                                           delegate:self
                                  //: cancelButtonTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                                  cancelButtonTitle:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].noti_cellStr]
                                  //: otherButtonTitles:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                                  otherButtonTitles:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].mainEssentialPath],nil] show];

//                UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"setting_privacy") preferredStyle:UIAlertControllerStyleAlert];
//                [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//                }])];
//                [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"tag_activity_set") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                    NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//                    if( [[UIApplication sharedApplication] canOpenURL:url]) {
//                        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//                    }
//                }])];
//                [self presentViewController:alertControl animated:YES completion:nil];



                //: if(handler) handler(nil);
                if(handler) handler(nil);
            }
                //: break;
                break;
        }
    //: } else {
    } else {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status){
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status){
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (status == PHAuthorizationStatusRestricted || status == PHAuthorizationStatusDenied) {
                if (status == PHAuthorizationStatusRestricted || status == PHAuthorizationStatusDenied) {


                    //: [[[UIAlertView alloc] initWithTitle:[PushLanguageManager getTextWithKey:@"warm_prompt"]
                    [[[UIAlertView alloc] initWithTitle:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].k_influentialFormat]
                                                //: message:[PushLanguageManager getTextWithKey:@"setting_privacy"]
                                                message:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].user_quipScienceViewKey]
                                               //: delegate:self
                                               delegate:self
                                      //: cancelButtonTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                                      cancelButtonTitle:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].noti_cellStr]
                                      //: otherButtonTitles:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                                      otherButtonTitles:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].mainEssentialPath],nil] show];

                    //: if(handler) handler(nil);
                    if(handler) handler(nil);
                }
                //: if (status == PHAuthorizationStatusAuthorized) {
                if (status == PHAuthorizationStatusAuthorized) {
                    //: [weakSelf setupPicker:handler];
                    [weakSelf to:handler];
                }
            //: });
            });
        //: }];
        }];
    }

}

//: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
- (void)key:(UIAlertView *)alertView nearEvent:(NSInteger)buttonIndex
{
    //: if(buttonIndex == 1){
    if(buttonIndex == 1){
        //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                            }
    }

}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //: NSString *mediaType = info[UIImagePickerControllerMediaType];
    NSString *mediaType = info[UIImagePickerControllerMediaType];
    //: if ([mediaType isEqualToString:(NSString *)kUTTypeMovie]) {
    if ([mediaType isEqualToString:(NSString *)kUTTypeMovie]) {

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            //: NSURL *inputURL = [info objectForKey:UIImagePickerControllerMediaURL];
            NSURL *inputURL = [info objectForKey:UIImagePickerControllerMediaURL];
            //: NSString *outputFileName = [PushKitFileLocationHelper genFilenameWithExt:@"mp4"];
            NSString *outputFileName = [SecretHelper show:[InfluentialVotingData sharedInstance].dream_pickupKey];
            //: NSString *outputPath = [PushKitFileLocationHelper filepathForVideo:outputFileName];
            NSString *outputPath = [SecretHelper key:outputFileName];
            //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
            AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
            //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
            AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
                                                                             //: presetName:AVAssetExportPresetMediumQuality];
                                                                             presetName:AVAssetExportPresetMediumQuality];
            //: session.outputURL = [NSURL fileURLWithPath:outputPath];
            session.outputURL = [NSURL fileURLWithPath:outputPath];
            //: session.outputFileType = AVFileTypeMPEG4; 
            session.outputFileType = AVFileTypeMPEG4; // 支持安卓某些机器的视频播放
            //: session.shouldOptimizeForNetworkUse = YES;
            session.shouldOptimizeForNetworkUse = YES;
            //: session.videoComposition = [asset nim_videoComposition]; 
            session.videoComposition = [asset hide]; //修正某些播放器不识别视频Rotation的问题
            //: [session exportAsynchronouslyWithCompletionHandler:^(void)
            [session exportAsynchronouslyWithCompletionHandler:^(void)
             {
                 //: dispatch_async(dispatch_get_main_queue(), ^{
                 dispatch_async(dispatch_get_main_queue(), ^{
                     //: if (!weakSelf.cameraResultHandler)
                     if (!weakSelf.cameraResultHandler)
                     {
                         //: return;
                         return;
                     }

                     //: if (session.status == AVAssetExportSessionStatusCompleted)
                     if (session.status == AVAssetExportSessionStatusCompleted)
                     {
                         //: weakSelf.cameraResultHandler(outputPath,nil);
                         weakSelf.cameraResultHandler(outputPath,nil);
                     }
                     //: else
                     else
                     {
                         //: weakSelf.cameraResultHandler(nil,nil);
                         weakSelf.cameraResultHandler(nil,nil);
                     }
                     //: weakSelf.cameraResultHandler = nil;
                     weakSelf.cameraResultHandler = nil;
                 //: });
                 });
             //: }];
             }];

        //: });
        });

    //: } else {
    } else {
        //: if (!self.cameraResultHandler)
        if (!self.cameraResultHandler)
        {
            //: return;
            return;
        }

        //: UIImage *image = info[UIImagePickerControllerOriginalImage];
        UIImage *image = info[UIImagePickerControllerOriginalImage];
        //: image = [image nim_fixOrientation];
        image = [image blueMain];

        // MARK: - 处理图片
        //: CGSize imgSize = image.size;
        CGSize imgSize = image.size;
        //所有上传照片最大像素等比例压缩
        //: CGFloat maxPix = 414;
        CGFloat maxPix = 414;

        //: if (imgSize.width > imgSize.height) {
        if (imgSize.width > imgSize.height) {
            //: CGFloat scale = imgSize.height/imgSize.width;
            CGFloat scale = imgSize.height/imgSize.width;
            //: if (imgSize.width > maxPix) {
            if (imgSize.width > maxPix) {
                //: imgSize.width = maxPix;
                imgSize.width = maxPix;
                //: imgSize.height = scale * maxPix;
                imgSize.height = scale * maxPix;
            }
        //: }else {
        }else {
            //: CGFloat scale = imgSize.width/imgSize.height;
            CGFloat scale = imgSize.width/imgSize.height;
            //: if (imgSize.height > maxPix) {
            if (imgSize.height > maxPix) {
                //: imgSize.height = maxPix;
                imgSize.height = maxPix;
                //: imgSize.width = scale * maxPix;
                imgSize.width = scale * maxPix;
            }
        }

        //: image = [self imageWithImage:image scaledToSize:imgSize opaque:YES];
        image = [self button:image largenessOpaque:imgSize shareLength:YES];

        //: self.cameraResultHandler(nil,image);
        self.cameraResultHandler(nil,image);
        //: self.cameraResultHandler = nil;
        self.cameraResultHandler = nil;
    }
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize opaque:(BOOL)opaque
- (UIImage*)button:(UIImage*)image largenessOpaque:(CGSize)newSize shareLength:(BOOL)opaque
{
    //: NSInteger newSizeW = (NSInteger)newSize.width; 
    NSInteger newSizeW = (NSInteger)newSize.width; //  转化为整型,不然像素补全会出现黑边
    //: NSInteger newSizeH = (NSInteger)newSize.height;
    NSInteger newSizeH = (NSInteger)newSize.height;

//    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
//        UIGraphicsBeginImageContextWithOptions(newSize, opaque, [UIScreen mainScreen].scale);
//    } else {
//        UIGraphicsBeginImageContext(newSize);
//    }
    //: UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContext(newSize);

    //: [image drawInRect:CGRectMake(0,0,newSizeW,newSizeH)];
    [image drawInRect:CGRectMake(0,0,newSizeW,newSizeH)];
    //: UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    //: return newImage;
    return newImage;
}


//: #pragma mark - 相册回调
#pragma mark - 相册回调
//: - (void)onPickerSelectedWithType:(PHAssetMediaType)type
- (void)stop:(PHAssetMediaType)type
                          //: images:(nullable NSArray *)images
                          eliteArray:(nullable NSArray *)images
                            //: path:(nullable NSString *)path {
                            imageNoticeText:(nullable NSString *)path {
    //: if (_libraryResultHandler) {
    if (_libraryResultHandler) {
        //: _libraryResultHandler(images, path, type);
        _libraryResultHandler(images, path, type);
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)setMediaTypes:(NSArray *)mediaTypes
- (void)setMediaTypes:(NSArray *)mediaTypes
{
    //: _mediaTypes = mediaTypes;
    _mediaTypes = mediaTypes;
    //: _imagePicker.mediaTypes = mediaTypes;
    _imagePicker.mediaTypes = mediaTypes;
    //: _assetsPicker.mediaTypes = mediaTypes;
    _assetsPicker.mediaTypes = mediaTypes;
}

//: - (BOOL)initCamera{
- (BOOL)initChildHandleCamera{
    //: if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {


        //: [[[UIAlertView alloc] initWithTitle:[PushLanguageManager getTextWithKey:@"warm_prompt"]
        [[[UIAlertView alloc] initWithTitle:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].k_influentialFormat]
                                    //: message:[PushLanguageManager getTextWithKey:@"setting_privacy_camera"]
                                    message:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].m_parkTeamPath]
                                   //: delegate:self
                                   delegate:self
                          //: cancelButtonTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                          cancelButtonTitle:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].noti_cellStr]
                          //: otherButtonTitles:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                          otherButtonTitles:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].mainEssentialPath],nil] show];
        //: return NO;
        return NO;
    }
    //: NSString *mediaType = AVMediaTypeVideo;
    NSString *mediaType = AVMediaTypeVideo;
    //: AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    //: if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){


        //: [[[UIAlertView alloc] initWithTitle:[PushLanguageManager getTextWithKey:@"warm_prompt"]
        [[[UIAlertView alloc] initWithTitle:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].k_influentialFormat]
                                    //: message:[PushLanguageManager getTextWithKey:@"setting_privacy_camera"]
                                    message:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].m_parkTeamPath]
                                   //: delegate:self
                                   delegate:self
                          //: cancelButtonTitle:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                          cancelButtonTitle:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].noti_cellStr]
                          //: otherButtonTitles:[PushLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                          otherButtonTitles:[BackgroundRandomAttribute content:[InfluentialVotingData sharedInstance].mainEssentialPath],nil] show];

        //: return NO;
        return NO;

    }
    //: return YES;
    return YES;
}
//: @end
@end
