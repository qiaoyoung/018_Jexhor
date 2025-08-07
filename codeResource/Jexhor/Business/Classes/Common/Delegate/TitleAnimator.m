
#import <Foundation/Foundation.h>

typedef struct {
    Byte businessperson;
    Byte *quickAccounting;
    unsigned int videoAt;
	int sizeDeploy;
} StructJamPackedData;

@interface JamPackedData : NSObject

+ (instancetype)sharedInstance;

//: UITabBarButton
@property (nonatomic, copy) NSString *userLendData;

@end

@implementation JamPackedData

+ (instancetype)sharedInstance {
    static JamPackedData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)JamPackedDataToByte:(StructJamPackedData *)data {
    for (int i = 0; i < data->videoAt; i++) {
        data->quickAccounting[i] ^= data->businessperson;
    }
    data->quickAccounting[data->videoAt] = 0;
	if (data->videoAt >= 1) {
		data->sizeDeploy = data->quickAccounting[0];
	}
    return data->quickAccounting;
}

- (NSString *)StringFromJamPackedData:(StructJamPackedData *)data {
    return [NSString stringWithUTF8String:(char *)[self JamPackedDataToByte:data]];
}

//: UITabBarButton
- (NSString *)userLendData {
    if (!_userLendData) {
        StructJamPackedData value = (StructJamPackedData){67, (Byte []){22, 10, 23, 34, 33, 1, 34, 49, 1, 54, 55, 55, 44, 45, 99}, 14, 231};
        _userLendData = [self StringFromJamPackedData:&value];
    }
    return _userLendData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleAnimator.m
//  NIM
//
//  Created by chris on 16/1/31.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESNavigationAnimator.h"
#import "TitleAnimator.h"
//: #import "UIView+NTES.h"
#import "UIView+Recent.h"
//: #import "NTESMainTabController.h"
#import "ManagerBarController.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @implementation NTESNavigationAnimator
@implementation TitleAnimator
//: static inline BOOL
static inline BOOL
//: OverrideImplementation(Class targetClass, SEL targetSelector, id (^implementationBlock)(Class originClass, SEL originCMD, IMP originIMP)) {
OverrideImplementation(Class targetClass, SEL targetSelector, id (^implementationBlock)(Class originClass, SEL originCMD, IMP originIMP)) {
    //: Method originMethod = class_getInstanceMethod(targetClass, targetSelector);
    Method originMethod = class_getInstanceMethod(targetClass, targetSelector);
    //: if (!originMethod) {
    if (!originMethod) {
        //: return NO;
        return NO;
    }
    //: IMP originIMP = method_getImplementation(originMethod);
    IMP originIMP = method_getImplementation(originMethod);
    //: method_setImplementation(originMethod, imp_implementationWithBlock(implementationBlock(targetClass, targetSelector, originIMP)));
    method_setImplementation(originMethod, imp_implementationWithBlock(implementationBlock(targetClass, targetSelector, originIMP)));
    //: return YES;
    return YES;
}

//: + (void)load
+ (void)load
{
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: if (@available(iOS 12.1, *)) { 
        if (@available(iOS 12.1, *)) { // 解决12.1 的UITabbar 位置显示异常
            //: OverrideImplementation(NSClassFromString(@"UITabBarButton"), @selector(setFrame:), ^id(__unsafe_unretained Class originClass, SEL originCMD, IMP originIMP) {
            OverrideImplementation(NSClassFromString([JamPackedData sharedInstance].userLendData), @selector(setFrame:), ^id(__unsafe_unretained Class originClass, SEL originCMD, IMP originIMP) {
                //: return ^(UIView *selfObject, CGRect firstArgv) {
                return ^(UIView *selfObject, CGRect firstArgv) {

                    //: if ([selfObject isKindOfClass:originClass]) {
                    if ([selfObject isKindOfClass:originClass]) {
                        //: if (!CGRectIsEmpty(selfObject.frame) && CGRectIsEmpty(firstArgv)) {
                        if (!CGRectIsEmpty(selfObject.frame) && CGRectIsEmpty(firstArgv)) {
                            //: return;
                            return;
                        }
                    }

                    //: void (*originSelectorIMP)(id, SEL, CGRect);
                    void (*originSelectorIMP)(id, SEL, CGRect);
                    //: originSelectorIMP = (void (*)(id, SEL, CGRect))originIMP;
                    originSelectorIMP = (void (*)(id, SEL, CGRect))originIMP;
                    //: originSelectorIMP(selfObject, originCMD, firstArgv);
                    originSelectorIMP(selfObject, originCMD, firstArgv);
                //: };
                };
            //: });
            });
        }
    //: });
    });
}

//: - (instancetype)initWithNavigationController:(UINavigationController *)navigationController
- (instancetype)initWithBetween:(UINavigationController *)navigationController
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _navigationController = navigationController;
        _navigationController = navigationController;
    }
    //: return self;
    return self;
}

//: - (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    //: return 0.35;
    return 0.35;
}

//: - (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{

    //: switch (self.currentOpearation) {
    switch (self.currentOpearation) {
        //: case UINavigationControllerOperationPop:
        case UINavigationControllerOperationPop:
            //: [self popAnimation:transitionContext];
            [self title:transitionContext];
            //: break;
            break;
        //: case UINavigationControllerOperationPush:
        case UINavigationControllerOperationPush:
            //: [self pushAnimation:transitionContext];
            [self belowStateBar:transitionContext];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}


//: - (void)pushAnimation:(id<UIViewControllerContextTransitioning>)transitionContext
- (void)belowStateBar:(id<UIViewControllerContextTransitioning>)transitionContext
{
    //: UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    //: UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];

    //: UIView *containerView = [transitionContext containerView];
    UIView *containerView = [transitionContext containerView];
    //: UINavigationController *navigationController = fromViewController.navigationController;
    UINavigationController *navigationController = fromViewController.navigationController;
    //: UITabBarController *tabbarController = fromViewController.tabBarController;
    UITabBarController *tabbarController = fromViewController.tabBarController;
    //使用xib可能会出现view的size不对的情况
    //: CGRect frame = fromViewController.view.frame;
    CGRect frame = fromViewController.view.frame;
    //: if ((toViewController.edgesForExtendedLayout & UIRectEdgeTop) == 0)
    if ((toViewController.edgesForExtendedLayout & UIRectEdgeTop) == 0)
    {
        //: frame = CGRectOffset(navigationController.view.frame, 0, navigationController.navigationBar.bottom);
        frame = CGRectOffset(navigationController.view.frame, 0, navigationController.navigationBar.bottom);
    }
    //: if ((toViewController.edgesForExtendedLayout & UIRectEdgeBottom) == 0) {
    if ((toViewController.edgesForExtendedLayout & UIRectEdgeBottom) == 0) {
        //: CGRect slice = CGRectZero;
        CGRect slice = CGRectZero;
        //: CGRect remainder = CGRectZero;
        CGRect remainder = CGRectZero;
        //: CGRectDivide(frame, &slice, &remainder, tabbarController.tabBar.height, CGRectMaxYEdge);
        CGRectDivide(frame, &slice, &remainder, tabbarController.tabBar.height, CGRectMaxYEdge);
        //: frame = remainder;
        frame = remainder;
    }
    //: toViewController.view.frame = frame;
    toViewController.view.frame = frame;

    //: [containerView addSubview:fromViewController.view];
    [containerView addSubview:fromViewController.view];
    //: [containerView addSubview:toViewController.view];
    [containerView addSubview:toViewController.view];


    //: CGFloat width = containerView.width;
    CGFloat width = containerView.width;
    //: toViewController.view.left = width;
    toViewController.view.left = width;

    //: [self callAnimationWillStart];
    [self with];
    //: CGFloat duration = 0.35;
    CGFloat duration = 0.35;

    //: [UIView animateWithDuration:duration animations:^{
    [UIView animateWithDuration:duration animations:^{
        //: fromViewController.view.right = width * 0.5;
        fromViewController.view.right = width * 0.5;
        //: toViewController.view.right = width;
        toViewController.view.right = width;
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        //: [self callAnimationDidEnd];
        [self image];
    //: }];
    }];
}



//: - (void)popAnimation:(id<UIViewControllerContextTransitioning>)transitionContext
- (void)title:(id<UIViewControllerContextTransitioning>)transitionContext
{
    //: UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    //: UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    //: CGFloat snapshootHeight = [UIDevice vg_statusBarHeight] + fromViewController.navigationController.navigationBar.height;
    CGFloat snapshootHeight = [UIDevice heightShowStop] + fromViewController.navigationController.navigationBar.height;

    //: UIView *fakeBar = [fromViewController.navigationController.view
    UIView *fakeBar = [fromViewController.navigationController.view
                                //: resizableSnapshotViewFromRect:CGRectMake(0, 0,fromViewController.view.width, snapshootHeight) afterScreenUpdates:NO withCapInsets:UIEdgeInsetsZero];
                                resizableSnapshotViewFromRect:CGRectMake(0, 0,fromViewController.view.width, snapshootHeight) afterScreenUpdates:NO withCapInsets:UIEdgeInsetsZero];
    //: UINavigationBar *tureBar = toViewController.navigationController.navigationBar;
    UINavigationBar *tureBar = toViewController.navigationController.navigationBar;

    //: BOOL hidesBottomBar = toViewController.hidesBottomBarWhenPushed && self.navigationController.viewControllers.firstObject != toViewController;
    BOOL hidesBottomBar = toViewController.hidesBottomBarWhenPushed && self.navigationController.viewControllers.firstObject != toViewController;

    //: UITabBar *tabbar = [NTESMainTabController instance].tabBar;
    UITabBar *tabbar = [ManagerBarController can].tabBar;
    //: UIView *containerView = [transitionContext containerView];
    UIView *containerView = [transitionContext containerView];

    //: [containerView addSubview:toViewController.view];
    [containerView addSubview:toViewController.view];
    //: if (!hidesBottomBar) {
    if (!hidesBottomBar) {
        //: [containerView addSubview:tabbar];
        [containerView addSubview:tabbar];
    }
    //: if (self.animationType == NTESNavigationAnimationTypeCross) {
    if (self.animationType == NTESNavigationAnimationTypeCross) {
        //: [containerView addSubview:tureBar];
        [containerView addSubview:tureBar];
        //: [fromViewController.view addSubview:fakeBar];
        [fromViewController.view addSubview:fakeBar];
    }
    //: [containerView addSubview:fromViewController.view];
    [containerView addSubview:fromViewController.view];


    //: CGFloat width = containerView.width;
    CGFloat width = containerView.width;

    //: toViewController.view.right = 0.f;
    toViewController.view.right = 0.f;
    //: tabbar.right = 0.f;
    tabbar.right = 0.f;

    //: [self callAnimationWillStart];
    [self with];
    //: CGFloat duration = 0.35;
    CGFloat duration = 0.35;
    //: [UIView animateWithDuration:duration animations:^{
    [UIView animateWithDuration:duration animations:^{
        //: fromViewController.view.left = width;
        fromViewController.view.left = width;
        //: toViewController.view.right = width;
        toViewController.view.right = width;
        //: tabbar.right = width;
        tabbar.right = width;
        //: fakeBar.alpha = 0.0;
        fakeBar.alpha = 0.0;
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [[NTESMainTabController instance].view addSubview:tabbar];
        [[ManagerBarController can].view addSubview:tabbar];
        //: [toViewController.navigationController.view addSubview:tureBar];
        [toViewController.navigationController.view addSubview:tureBar];
        //: [fakeBar removeFromSuperview];
        [fakeBar removeFromSuperview];
        //: [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        //: [self callAnimationDidEnd];
        [self image];
    //: }];
    }];
}

//: - (void)callAnimationWillStart
- (void)with
{
    //: if ([self.delegate respondsToSelector:@selector(animationWillStart:)]) {
    if ([self.delegate respondsToSelector:@selector(shows:)]) {
        //: [self.delegate animationWillStart:self];
        [self.delegate shows:self];
    }
}

//: - (void)callAnimationDidEnd
- (void)image
{
    //: if ([self.delegate respondsToSelector:@selector(animationDidEnd:)]) {
    if ([self.delegate respondsToSelector:@selector(taped:)]) {
        //: [self.delegate animationDidEnd:self];
        [self.delegate taped:self];
    }
}

//: @end
@end