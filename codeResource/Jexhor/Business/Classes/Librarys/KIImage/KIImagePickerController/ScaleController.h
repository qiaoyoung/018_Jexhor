// __DEBUG__
// __CLOSE_PRINT__
//
//  ScaleController.h
//  Kitalker
//
//  Created by chen on 13-3-19.
//  Copyright (c) 2013年 yangfeng. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UIImage+KIAdditions.h"
#import "UIImage+AttributeAdditions.h"
//: #import "KIImageCropperViewController.h"
#import "CenterRandomViewController.h"

//: @protocol KIImagePickerControllerDelegate;
@protocol TelephoneMessageText;

//: @interface KIImagePickerController : NSObject <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
@interface ScaleController : NSObject <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
    //: __weak id<KIImagePickerControllerDelegate> _delegate;
    __weak id<TelephoneMessageText> _delegate;
    //: UIViewController *_viewController;
    UIViewController *_viewController;
    //: UIActionSheet *_actionSheet;
    UIActionSheet *_actionSheet;
    //: UIImagePickerController *_imagePickerController;
    UIImagePickerController *_imagePickerController;
    //: CGSize _cropSize;
    CGSize _cropSize;
    //: NSString *_title;
    NSString *_title;
    //: NSArray *_otherItems;
    NSArray *_otherItems;
    //: BOOL _showDelete;
    BOOL _showDelete;
}

//: @property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *title;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithMustController:(id<TelephoneMessageText>)delegate
        //: viewController:(UIViewController *)viewController;
        number:(UIViewController *)viewController;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithContentOpen:(id<TelephoneMessageText>)delegate
                 //: title:(NSString *)title
                 show:(NSString *)title
        //: viewController:(UIViewController *)viewController;
        link:(UIViewController *)viewController;

//: - (void)showWithDeleteButton:(BOOL)showDelete;
- (void)disable:(BOOL)showDelete;

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize;
- (void)bit:(BOOL)showDelete gestureView:(CGSize)cropSize;

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize otherItems:(NSArray *)items;
- (void)atInMessage:(BOOL)showDelete tapItems:(CGSize)cropSize save:(NSArray *)items;

//: @end
@end

//: @protocol KIImagePickerControllerDelegate <NSObject>
@protocol TelephoneMessageText <NSObject>

//: @optional
@optional

//: - (void)KIImagePickerController:(KIImagePickerController *)controller didFinishPickImage:(UIImage *)image;
- (void)count:(ScaleController *)controller bubble:(UIImage *)image;

//: - (void)KIImagePickerController:(KIImagePickerController *)controller didSelectedOtherIndex:(NSUInteger)index;
- (void)key:(ScaleController *)controller put:(NSUInteger)index;

//: - (void)KIImagePickerControllerDidCancel:(KIImagePickerController *)controller;
- (void)indexMentalImage:(ScaleController *)controller;

//: - (void)KINavigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)show:(UINavigationController *)navigationController doing:(UIViewController *)viewController navigationPullAnimated:(BOOL)animated;

//: - (void)KINavigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)input:(UINavigationController *)navigationController toAnimated:(UIViewController *)viewController touch:(BOOL)animated;

//: @end
@end