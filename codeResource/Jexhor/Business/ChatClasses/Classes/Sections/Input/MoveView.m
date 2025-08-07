
#import <Foundation/Foundation.h>

@interface AnjouData : NSObject

+ (instancetype)sharedInstance;

//: user_profile_avtivity_send
@property (nonatomic, copy) NSString *appAlreadyId;

//: #fffPush
@property (nonatomic, copy) NSString *showGlobKey;

//: #05D481
@property (nonatomic, copy) NSString *k_theoreticKey;

//: #8A8E98
@property (nonatomic, copy) NSString *kItselfValue;

@end

@implementation AnjouData

+ (instancetype)sharedInstance {
    static AnjouData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)AnjouDataToCache:(Byte *)data {
    int madness = data[0];
    Byte powerWith = data[1];
    int capture = data[2];
    for (int i = capture; i < capture + madness; i++) {
        int value = data[i] + powerWith;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[capture + madness] = 0;
    return data + capture;
}

- (NSString *)StringFromAnjouData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self AnjouDataToCache:data]];
}

//: #fffPush
- (NSString *)showGlobKey {
    if (!_showGlobKey) {
        Byte value[] = {7, 65, 13, 62, 189, 17, 25, 173, 92, 54, 111, 214, 226, 226, 37, 37, 37, 37, 37, 37, 235};
        _showGlobKey = [self StringFromAnjouData:value];
    }
    return _showGlobKey;
}

//: #8A8E98
- (NSString *)kItselfValue {
    if (!_kItselfValue) {
        Byte value[] = {7, 78, 13, 143, 219, 104, 136, 235, 69, 68, 88, 244, 37, 213, 234, 243, 234, 247, 235, 234, 253};
        _kItselfValue = [self StringFromAnjouData:value];
    }
    return _kItselfValue;
}

//: #05D481
- (NSString *)k_theoreticKey {
    if (!_k_theoreticKey) {
        Byte value[] = {7, 12, 8, 87, 40, 171, 139, 71, 23, 36, 41, 56, 40, 44, 37, 161};
        _k_theoreticKey = [self StringFromAnjouData:value];
    }
    return _k_theoreticKey;
}

//: user_profile_avtivity_send
- (NSString *)appAlreadyId {
    if (!_appAlreadyId) {
        Byte value[] = {26, 88, 7, 254, 155, 112, 27, 29, 27, 13, 26, 7, 24, 26, 23, 14, 17, 20, 13, 7, 9, 30, 28, 17, 30, 17, 28, 33, 7, 27, 13, 22, 12, 51};
        _appAlreadyId = [self StringFromAnjouData:value];
    }
    return _appAlreadyId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MoveView.m
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PhotoContainerView.h"
#import "MoveView.h"

//: @interface PhotoContainerView ()<CustomMediaPickerViewDelegate,UIGestureRecognizerDelegate>
@interface MoveView ()<CellDelegate,UIGestureRecognizerDelegate>


//: @property (nonatomic, strong) UIPanGestureRecognizer *panGesture;
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;
//: @property (nonatomic, assign) CGFloat initialHeight;
@property (nonatomic, assign) CGFloat initialHeight;
//: @property (nonatomic, assign) BOOL isScrollViewAtTop;
@property (nonatomic, assign) BOOL isScrollViewAtTop;

//: @property (nonatomic, assign) CGFloat minHeight; 
@property (nonatomic, assign) CGFloat minHeight; // 最小高度
//: @property (nonatomic, assign) CGFloat maxHeight; 
@property (nonatomic, assign) CGFloat maxHeight; // 最大高度

//: @end
@end

//: @implementation PhotoContainerView
@implementation MoveView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

//        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
////        singleTapclose.delegate = self;
//        singleTapclose.cancelsTouchesInView = NO; // 允许触摸事件继续传递
//        [self addGestureRecognizer:singleTapclose];
        // 添加拖拽手势


        //: _minHeight = 480;
        _minHeight = 480;
        //: _maxHeight = 720;
        _maxHeight = 720;

        //: [self initUI];
        [self initMenu];

    }
    //: return self;
    return self;
}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
//    CGPoint touchLocation = [touch locationInView:self];
//    
//    // 检查触摸点是否在子视图上
//    if (CGRectContainsPoint(self.albumPickerView.frame, touchLocation)) {
//        return NO; // 不接收这个触摸事件
//    }
//    
//    return YES; // 接收这个触摸事件
//}

//: #pragma mark - 手势处理
#pragma mark - 手势处理
//: - (void)handlePanGesture:(UIPanGestureRecognizer *)gesture
- (void)sumBy:(UIPanGestureRecognizer *)gesture
{
    //: CGPoint velocity = [gesture velocityInView:self];
    CGPoint velocity = [gesture velocityInView:self];

           // 根据滑动速度决定是展开还是收起
           //: if (velocity.y < 0) {
           if (velocity.y < 0) {
               // 向上快速滑动 - 展开
               //: [self expandWithAnimation];
               [self range];
           //: } else if (velocity.y > 0) {
           } else if (velocity.y > 0) {
               // 向下快速滑动 - 收起
               //: [self collapseWithAnimation];
               [self send];
           //: } else {
           } else {
               // 根据当前位置决定
               //: CGFloat currentHeight = self.frame.size.height;
               CGFloat currentHeight = self.frame.size.height;
               //: if (currentHeight > (self.maxHeight + self.minHeight) / 2) {
               if (currentHeight > (self.maxHeight + self.minHeight) / 2) {
                   //: [self expandWithAnimation];
                   [self range];
               //: } else {
               } else {
                   //: [self collapseWithAnimation];
                   [self send];
               }
           }




}



//: #pragma mark - 展开/收起动画
#pragma mark - 展开/收起动画
//: - (void)expandWithAnimation{
- (void)range{

        //: self.viewBg.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_maxHeight, [[UIScreen mainScreen] bounds].size.width, _maxHeight);
        self.viewBg.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_maxHeight, [[UIScreen mainScreen] bounds].size.width, _maxHeight);
        //: self.line.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4);
        self.line.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4);
        //: self.albumPickerView.frame = CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _maxHeight-120);
        self.albumPickerView.frame = CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _maxHeight-120);
        //: self.albumPickerView.collectionView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-40, _maxHeight-120);
        self.albumPickerView.collectionView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-40, _maxHeight-120);
        //: self.confirmButton.frame = CGRectMake(20, _maxHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);
        self.confirmButton.frame = CGRectMake(20, _maxHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);

}

//: - (void)collapseWithAnimation {
- (void)send {

        //: self.viewBg.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight);
        self.viewBg.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight);
        //: self.line.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4);
        self.line.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4);
        //: self.albumPickerView.frame = CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120);
        self.albumPickerView.frame = CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120);
        //: self.albumPickerView.collectionView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120);
        self.albumPickerView.collectionView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120);
        //: self.confirmButton.frame = CGRectMake(20, _minHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);
        self.confirmButton.frame = CGRectMake(20, _minHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);

}

//: - (void)initUI {
- (void)initMenu {

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#fffPush"];
    _viewBg.backgroundColor = [UIColor user:[AnjouData sharedInstance].showGlobKey];
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 12;
    _viewBg.layer.cornerRadius = 12;
    //: _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];
    //: _viewBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _viewBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: _viewBg.layer.shadowOffset = CGSizeMake(0,-4);
    _viewBg.layer.shadowOffset = CGSizeMake(0,-4);
    //: _viewBg.layer.shadowOpacity = 1;
    _viewBg.layer.shadowOpacity = 1;
    //: _viewBg.layer.shadowRadius = 16;
    _viewBg.layer.shadowRadius = 16;
    //: _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(sumBy:)];
    //: _panGesture.delegate = self;
    _panGesture.delegate = self;
    //: [_viewBg addGestureRecognizer:_panGesture];
    [_viewBg addGestureRecognizer:_panGesture];

    //: _line = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4)];
    _line = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4)];
    //: _line.backgroundColor = [UIColor colorWithHexString:@"#8A8E98"];
    _line.backgroundColor = [UIColor user:[AnjouData sharedInstance].kItselfValue];
    //: _line.layer.cornerRadius = 2;
    _line.layer.cornerRadius = 2;
    //: [_viewBg addSubview:_line];
    [_viewBg addSubview:_line];

    // 创建相册选择器视图
    //: _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120)];
    _albumPickerView = [[CustomView alloc] initWithFrame:CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120)];
    //: _albumPickerView.delegate = self;
    _albumPickerView.delegate = self;
    //: _albumPickerView.allowCamera = YES; 
    _albumPickerView.allowCamera = YES; // 显示拍照按钮
//    _albumPickerView.exclusiveTouch = YES;
    //: [_viewBg addSubview:_albumPickerView];
    [_viewBg addSubview:_albumPickerView];

    //: [_viewBg addSubview:self.confirmButton];
    [_viewBg addSubview:self.confirmButton];
    //: self.confirmButton.frame = CGRectMake(20, _minHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);
    self.confirmButton.frame = CGRectMake(20, _minHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);

}

//: - (UIButton *)confirmButton
- (UIButton *)confirmButton
{
    //: if (!_confirmButton) {
    if (!_confirmButton) {
        //: _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
        //: _confirmButton.layer.cornerRadius = 24;
        _confirmButton.layer.cornerRadius = 24;
        //: [_confirmButton setTitle:[PushLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
        [_confirmButton setTitle:[BackgroundRandomAttribute content:[AnjouData sharedInstance].appAlreadyId] forState:UIControlStateNormal];
        //: [_confirmButton addTarget:self action:@selector(confirmButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [_confirmButton addTarget:self action:@selector(parentMenu) forControlEvents:UIControlEventTouchUpInside];
        //: _confirmButton.backgroundColor = [UIColor colorWithHexString:@"#05D481"];
        _confirmButton.backgroundColor = [UIColor user:[AnjouData sharedInstance].k_theoreticKey];
        //: [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
        _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    }
    //: return _confirmButton;
    return _confirmButton;
}


//: #pragma mark - CustomAlbumPickerViewDelegate
#pragma mark - CustomAlbumPickerViewDelegate
//: - (void)mediaPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)pulling:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);
    //: self.selectedPhoto = assets;
    self.selectedPhoto = assets;
    //: [self.confirmButton setTitle:[NSString stringWithFormat:@"%@(%lu)",[PushLanguageManager getTextWithKey:@"user_profile_avtivity_send"],(unsigned long)self.selectedPhoto.count] forState:UIControlStateNormal];
    [self.confirmButton setTitle:[NSString stringWithFormat:@"%@(%lu)",[BackgroundRandomAttribute content:[AnjouData sharedInstance].appAlreadyId],(unsigned long)self.selectedPhoto.count] forState:UIControlStateNormal];
}

//: - (void)mediaPickerDidTapCamera {
- (void)stateMessage {
    //: NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    //: if ([self.delegate respondsToSelector:@selector(CustomPickerDidSelectCamera)]) {
    if ([self.delegate respondsToSelector:@selector(pickerBy)]) {
        //: [self.delegate CustomPickerDidSelectCamera];
        [self.delegate pickerBy];
    }
}

//: - (void)confirmButtonTapped {
- (void)parentMenu {
    //: [self animationClose];
    [self nearAdd];
    //: if ([self.delegate respondsToSelector:@selector(CustomPickerDidSelectAssets:)]) {
    if ([self.delegate respondsToSelector:@selector(sessions:)]) {
        //: [self.delegate CustomPickerDidSelectAssets:self.selectedPhoto];
        [self.delegate sessions:self.selectedPhoto];
    }
}

//: - (void)animationClose
- (void)nearAdd
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)tapShow
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end
