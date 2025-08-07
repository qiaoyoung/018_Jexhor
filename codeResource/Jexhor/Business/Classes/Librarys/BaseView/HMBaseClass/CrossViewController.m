
#import <Foundation/Foundation.h>

@interface OurData : NSObject

@end

@implementation OurData

+ (Byte *)OurDataToCache:(Byte *)data {
    int publicity = data[0];
    Byte userDecor = data[1];
    int marginMax = data[2];
    for (int i = marginMax; i < marginMax + publicity; i++) {
        int value = data[i] + userDecor;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[marginMax + publicity] = 0;
    return data + marginMax;
}

+ (NSString *)StringFromOurData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self OurDataToCache:data]];
}

//: icon_empty_data
+ (NSString *)mainLaverName {
    /* static */ NSString *mainLaverName = nil;
    if (!mainLaverName) {
        Byte value[] = {15, 3, 4, 112, 102, 96, 108, 107, 92, 98, 106, 109, 113, 118, 92, 97, 94, 113, 94, 71};
        mainLaverName = [self StringFromOurData:value];
    }
    return mainLaverName;
}

//: #F9F9F9
+ (NSString *)userNameTerritoryPath {
    /* static */ NSString *userNameTerritoryPath = nil;
    if (!userNameTerritoryPath) {
        Byte value[] = {7, 74, 6, 42, 195, 152, 217, 252, 239, 252, 239, 252, 239, 234};
        userNameTerritoryPath = [self StringFromOurData:value];
    }
    return userNameTerritoryPath;
}

//: _isTransitioning
+ (NSString *)main_abortIconTitle {
    /* static */ NSString *main_abortIconTitle = nil;
    if (!main_abortIconTitle) {
        Byte value[] = {16, 91, 3, 4, 14, 24, 249, 23, 6, 19, 24, 14, 25, 14, 20, 19, 14, 19, 12, 208};
        main_abortIconTitle = [self StringFromOurData:value];
    }
    return main_abortIconTitle;
}

//: #612CF9
+ (NSString *)kCellTitle {
    /* static */ NSString *kCellTitle = nil;
    if (!kCellTitle) {
        Byte value[] = {7, 72, 6, 13, 208, 60, 219, 238, 233, 234, 251, 254, 241, 180};
        kCellTitle = [self StringFromOurData:value];
    }
    return kCellTitle;
}

//: #875FFA
+ (NSString *)mainScienceStr {
    /* static */ NSString *mainScienceStr = nil;
    if (!mainScienceStr) {
        Byte value[] = {7, 36, 10, 121, 211, 169, 159, 153, 185, 129, 255, 20, 19, 17, 34, 34, 29, 85};
        mainScienceStr = [self StringFromOurData:value];
    }
    return mainScienceStr;
}

//: No related content, try another word
+ (NSString *)app_textComplianceName {
    /* static */ NSString *app_textComplianceName = nil;
    if (!app_textComplianceName) {
        Byte value[] = {36, 4, 9, 81, 139, 219, 253, 76, 58, 74, 107, 28, 110, 97, 104, 93, 112, 97, 96, 28, 95, 107, 106, 112, 97, 106, 112, 40, 28, 112, 110, 117, 28, 93, 106, 107, 112, 100, 97, 110, 28, 115, 107, 110, 96, 251};
        app_textComplianceName = [self StringFromOurData:value];
    }
    return app_textComplianceName;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  CrossViewController.m
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/4/20.
//  Copyright (c) 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMViewController.h"
#import "CrossViewController.h"

//: @implementation HMViewController
@implementation CrossViewController
//: @synthesize viewControllerDelegate = _viewControllerDelegate;
@synthesize viewControllerDelegate = _viewControllerDelegate;


//: - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    //: self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    //: if (self) {
    if (self) {

    }
    //: return self;
    return self;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //self.view.backgroundColor = CommonBGView_Color;
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"#F9F9F9"];
    self.view.backgroundColor = [UIColor user:[OurData userNameTerritoryPath]];

    //: self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[SNGradientHelper getLinearGradientImage:[UIColor colorWithHexString:@"#875FFA"] and:[UIColor colorWithHexString:@"#612CF9"] directionType:SNLinearGradientDirectionLevel]];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithPatternImage:[BubbleHelper infoCurrent:[UIColor user:[OurData mainScienceStr]] tap:[UIColor user:[OurData kCellTitle]] caterer:SNLinearGradientDirectionLevel]];
    //: [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont boldSystemFontOfSize:16]}];
}


//: #pragma - 系统返回手势改装
#pragma - 系统返回手势改装

/**
 注意：这个手势是添加在了self.navigationController.view上
 最好在：navigationController->RootViewController实现这个方法
 
 使用的时候一定要配置方法：注意！注意！注意！
 - (void)viewWillAppear:(BOOL)animated{
 [super viewWillAppear:animated];
 [self.navigationController setNavigationBarHidden:YES animated:animated];
 
 }
 */
//: - (void)addFullScreenPopGesture{
- (void)change{
//    // 获取系统自带滑动手势的target对象
//    id target = self.navigationController.interactivePopGestureRecognizer.delegate;
//    SEL action = NSSelectorFromString(@"handleNavigationTransition:");
//    // 创建全屏滑动手势，调用系统自带滑动手势的target的action方法
//    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:action];
//    pan.delegate = self;
//    pan.maximumNumberOfTouches = 1;
//    // 给导航控制器的view添加全屏滑动手势
//    [self.navigationController.view addGestureRecognizer:pan];
}

/**
 注意
 */
//: - (void)enableFullScreenPopGesture:(BOOL)enable {
- (void)popGesture:(BOOL)enable {
    /************************/
//    //注意：暂时取消侧拉pop手势
//    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
//        
//        gesture.enabled = NO;
//        return;
//    }

    //如果只有系统返回手势，添加自定义手势
    //: if (self.navigationController.view.gestureRecognizers.count == 1) {
    if (self.navigationController.view.gestureRecognizers.count == 1) {
        //: [self addFullScreenPopGesture];
        [self change];
    }

    //: for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {
    for (UITapGestureRecognizer *gesture in self.navigationController.view.gestureRecognizers) {

        //: gesture.enabled = enable;
        gesture.enabled = enable;
    }
}

//: - (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer{
    //: if (self.navigationController.viewControllers.count <= 1) {
    if (self.navigationController.viewControllers.count <= 1) {
        //: return NO;
        return NO;
    }

    // Ignore pan gesture when the navigation controller is currently in transition.
    //: if ([[self.navigationController valueForKey:@"_isTransitioning"] boolValue]) {
    if ([[self.navigationController valueForKey:[OurData main_abortIconTitle]] boolValue]) {
        //: return NO;
        return NO;
    }

    // Prevent calling the handler when the gesture begins in an opposite direction.
    //: CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    //: if (translation.x <= 0) {
    if (translation.x <= 0) {
        //: return NO;
        return NO;
    }

    //: return YES;
    return YES;
}


//: @end
@end



//: @implementation UIViewController (HM)
@implementation UIViewController (HM)


//: #pragma mark - empty view
#pragma mark - empty view

//: - (void)showEmptyView{
- (void)search{
    //: [self showEmptyViewWithMessage:@"No related content, try another word"];
    [self image:[OurData app_textComplianceName]];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message{
- (void)image:(NSString *)message{
    //: [self showEmptyViewWithMessage:message inView:self.view];
    [self valueApp:message key:self.view];
}


//: - (void)showEmptyViewWithImageName:(NSString *)imageName inView:(UIView *)inView{
- (void)tillActivity:(NSString *)imageName show:(UIView *)inView{
    //: [self showEmptyViewWithMessage:@"" inView:inView imageName:imageName];
    [self index:@"" tool:inView empty:imageName];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView{
- (void)valueApp:(NSString *)message key:(UIView *)inView{
    //: [self showEmptyViewWithMessage:message inView:inView imageName:@"icon_empty_data"];
    [self index:message tool:inView empty:[OurData mainLaverName]];
}

//: - (void)showEmptyViewWithMessage:(NSString *)message inView:(UIView *)inView imageName:(NSString *)imageName{
- (void)index:(NSString *)message tool:(UIView *)inView empty:(NSString *)imageName{
    //: UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    UIView *emptyView= (UIView *)[inView viewWithTag:53333];
    //: if (!emptyView) {
    if (!emptyView) {
        //: emptyView = [[UIView alloc]init];
        emptyView = [[UIView alloc]init];
        //: emptyView.backgroundColor = [UIColor clearColor];
        emptyView.backgroundColor = [UIColor clearColor];
        //: emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        emptyView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
        //: emptyView.tag = 53333;
        emptyView.tag = 53333;

        //: UIImageView *emptyImage = [[UIImageView alloc]init];
        UIImageView *emptyImage = [[UIImageView alloc]init];
        //: emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        emptyImage.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-300)/2.0f, ([[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice title])-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-250)/2.0f, 300, 200);
        //: emptyImage.image = [UIImage imageNamed:imageName];
        emptyImage.image = [UIImage imageNamed:imageName];
        //: [emptyView addSubview:emptyImage];
        [emptyView addSubview:emptyImage];

        //: UILabel *emptyLabel = [[UILabel alloc] init];
        UILabel *emptyLabel = [[UILabel alloc] init];
        //: emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        emptyLabel.frame = CGRectMake(40, 0, [[UIScreen mainScreen] bounds].size.width-80, 20);
        //: emptyLabel.backgroundColor = [UIColor clearColor];
        emptyLabel.backgroundColor = [UIColor clearColor];
        //: emptyLabel.textColor = [UIColor lightGrayColor];
        emptyLabel.textColor = [UIColor lightGrayColor];
        //: emptyLabel.textAlignment = NSTextAlignmentCenter;
        emptyLabel.textAlignment = NSTextAlignmentCenter;
        //: emptyLabel.font = [UIFont systemFontOfSize:13];
        emptyLabel.font = [UIFont systemFontOfSize:13];
        //: emptyLabel.text = message;
        emptyLabel.text = message;
        //: [emptyView addSubview:emptyLabel];
        [emptyView addSubview:emptyLabel];
//        [emptyLabel underView:emptyImage padding:8];
//        [emptyLabel verticalAllignment:emptyImage];

    }


    //emptyView.center = CGPointMake(inView.width/2.0, inView.height/2.0);
    //: [inView addSubview:emptyView];
    [inView addSubview:emptyView];
    //: [inView bringSubviewToFront:emptyView];
    [inView bringSubviewToFront:emptyView];
}

//: - (void)hideEmptyView{
- (void)numerosity{
    //: [self hideEmptyViewInView:self.view];
    [self ransackedView:self.view];
}
//: - (void)hideEmptyViewInView:(UIView *)view{
- (void)ransackedView:(UIView *)view{

    //: UIView *emptyView= (UIView *)[view viewWithTag:53333];
    UIView *emptyView= (UIView *)[view viewWithTag:53333];

    //: emptyView.hidden = YES;
    emptyView.hidden = YES;
    //: [emptyView removeFromSuperview];
    [emptyView removeFromSuperview];
}


//: #pragma mark - 网络异常时调用此方法
#pragma mark - 网络异常时调用此方法

//: - (BOOL)canShowNotNetView{
- (BOOL)canShowNotNetView{
    //: return NO;
    return NO;
}

//: - (void)refrushWithNotNet{
- (void)signNet{


}





//: @end
@end
