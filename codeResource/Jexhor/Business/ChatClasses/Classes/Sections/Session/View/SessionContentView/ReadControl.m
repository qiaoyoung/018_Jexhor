
#import <Foundation/Foundation.h>

typedef struct {
    Byte itemExpose;
    Byte *textPurchase;
    unsigned int keyImageFifteen;
	int itHostile;
	int milkSample;
	int liquor;
} StructOndData;

@interface OndData : NSObject

+ (instancetype)sharedInstance;

//: icon_receiver_voice_playing_002
@property (nonatomic, copy) NSString *notiQuakeWarId;

//: icon_receiver_voice_playing_004
@property (nonatomic, copy) NSString *dream_powerContent;

//: icon_receiver_voice_playing_005
@property (nonatomic, copy) NSString *user_oiSodIdent;

//: icon_receiver_voice_playing_006
@property (nonatomic, copy) NSString *app_specificIdent;

//: icon_receiver_voice_playing_003
@property (nonatomic, copy) NSString *notiContentStr;

//: icon_receiver_voice_playing
@property (nonatomic, copy) NSString *userOiPath;

//: icon_receiver_voice_playing_008
@property (nonatomic, copy) NSString *userInfluentialMsg;

//: icon_receiver_voice_playing_009
@property (nonatomic, copy) NSString *app_helpfulMessage;

//: icon_voice_plus_b
@property (nonatomic, copy) NSString *mGuiltyData;

//: icon_receiver_voice_playing_w
@property (nonatomic, copy) NSString *appTerritoryContent;

//: icon_receiver_voice_playing_007
@property (nonatomic, copy) NSString *m_creaseName;

//: icon_receiver_voice_playing_010
@property (nonatomic, copy) NSString *noti_messageUrl;

//: icon_receiver_voice_playing_001
@property (nonatomic, copy) NSString *k_pickupFormat;

//: icon_voice_play_b
@property (nonatomic, copy) NSString *k_showContent;

@end

@implementation OndData

+ (instancetype)sharedInstance {
    static OndData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)OndDataToByte:(StructOndData *)data {
    for (int i = 0; i < data->keyImageFifteen; i++) {
        data->textPurchase[i] ^= data->itemExpose;
    }
    data->textPurchase[data->keyImageFifteen] = 0;
	if (data->keyImageFifteen >= 3) {
		data->itHostile = data->textPurchase[0];
		data->milkSample = data->textPurchase[1];
		data->liquor = data->textPurchase[2];
	}
    return data->textPurchase;
}

- (NSString *)StringFromOndData:(StructOndData *)data {
    return [NSString stringWithUTF8String:(char *)[self OndDataToByte:data]];
}

//: icon_receiver_voice_playing_003
- (NSString *)notiContentStr {
    if (!_notiContentStr) {
        StructOndData value = (StructOndData){63, (Byte []){86, 92, 80, 81, 96, 77, 90, 92, 90, 86, 73, 90, 77, 96, 73, 80, 86, 92, 90, 96, 79, 83, 94, 70, 86, 81, 88, 96, 15, 15, 12, 254}, 31, 52, 1, 76};
        _notiContentStr = [self StringFromOndData:&value];
    }
    return _notiContentStr;
}

//: icon_receiver_voice_playing_008
- (NSString *)userInfluentialMsg {
    if (!_userInfluentialMsg) {
        StructOndData value = (StructOndData){160, (Byte []){201, 195, 207, 206, 255, 210, 197, 195, 197, 201, 214, 197, 210, 255, 214, 207, 201, 195, 197, 255, 208, 204, 193, 217, 201, 206, 199, 255, 144, 144, 152, 125}, 31, 90, 215, 239};
        _userInfluentialMsg = [self StringFromOndData:&value];
    }
    return _userInfluentialMsg;
}

//: icon_receiver_voice_playing_001
- (NSString *)k_pickupFormat {
    if (!_k_pickupFormat) {
        StructOndData value = (StructOndData){249, (Byte []){144, 154, 150, 151, 166, 139, 156, 154, 156, 144, 143, 156, 139, 166, 143, 150, 144, 154, 156, 166, 137, 149, 152, 128, 144, 151, 158, 166, 201, 201, 200, 100}, 31, 235, 235, 66};
        _k_pickupFormat = [self StringFromOndData:&value];
    }
    return _k_pickupFormat;
}

//: icon_receiver_voice_playing
- (NSString *)userOiPath {
    if (!_userOiPath) {
        StructOndData value = (StructOndData){86, (Byte []){63, 53, 57, 56, 9, 36, 51, 53, 51, 63, 32, 51, 36, 9, 32, 57, 63, 53, 51, 9, 38, 58, 55, 47, 63, 56, 49, 38}, 27, 28, 185, 46};
        _userOiPath = [self StringFromOndData:&value];
    }
    return _userOiPath;
}

//: icon_receiver_voice_playing_009
- (NSString *)app_helpfulMessage {
    if (!_app_helpfulMessage) {
        StructOndData value = (StructOndData){183, (Byte []){222, 212, 216, 217, 232, 197, 210, 212, 210, 222, 193, 210, 197, 232, 193, 216, 222, 212, 210, 232, 199, 219, 214, 206, 222, 217, 208, 232, 135, 135, 142, 169}, 31, 167, 73, 206};
        _app_helpfulMessage = [self StringFromOndData:&value];
    }
    return _app_helpfulMessage;
}

//: icon_receiver_voice_playing_004
- (NSString *)dream_powerContent {
    if (!_dream_powerContent) {
        StructOndData value = (StructOndData){2, (Byte []){107, 97, 109, 108, 93, 112, 103, 97, 103, 107, 116, 103, 112, 93, 116, 109, 107, 97, 103, 93, 114, 110, 99, 123, 107, 108, 101, 93, 50, 50, 54, 97}, 31, 14, 218, 221};
        _dream_powerContent = [self StringFromOndData:&value];
    }
    return _dream_powerContent;
}

//: icon_receiver_voice_playing_010
- (NSString *)noti_messageUrl {
    if (!_noti_messageUrl) {
        StructOndData value = (StructOndData){119, (Byte []){30, 20, 24, 25, 40, 5, 18, 20, 18, 30, 1, 18, 5, 40, 1, 24, 30, 20, 18, 40, 7, 27, 22, 14, 30, 25, 16, 40, 71, 70, 71, 84}, 31, 108, 166, 113};
        _noti_messageUrl = [self StringFromOndData:&value];
    }
    return _noti_messageUrl;
}

//: icon_receiver_voice_playing_002
- (NSString *)notiQuakeWarId {
    if (!_notiQuakeWarId) {
        StructOndData value = (StructOndData){61, (Byte []){84, 94, 82, 83, 98, 79, 88, 94, 88, 84, 75, 88, 79, 98, 75, 82, 84, 94, 88, 98, 77, 81, 92, 68, 84, 83, 90, 98, 13, 13, 15, 75}, 31, 77, 228, 113};
        _notiQuakeWarId = [self StringFromOndData:&value];
    }
    return _notiQuakeWarId;
}

//: icon_voice_plus_b
- (NSString *)mGuiltyData {
    if (!_mGuiltyData) {
        StructOndData value = (StructOndData){21, (Byte []){124, 118, 122, 123, 74, 99, 122, 124, 118, 112, 74, 101, 121, 96, 102, 74, 119, 170}, 17, 143, 162, 100};
        _mGuiltyData = [self StringFromOndData:&value];
    }
    return _mGuiltyData;
}

//: icon_receiver_voice_playing_007
- (NSString *)m_creaseName {
    if (!_m_creaseName) {
        StructOndData value = (StructOndData){200, (Byte []){161, 171, 167, 166, 151, 186, 173, 171, 173, 161, 190, 173, 186, 151, 190, 167, 161, 171, 173, 151, 184, 164, 169, 177, 161, 166, 175, 151, 248, 248, 255, 239}, 31, 120, 22, 212};
        _m_creaseName = [self StringFromOndData:&value];
    }
    return _m_creaseName;
}

//: icon_voice_play_b
- (NSString *)k_showContent {
    if (!_k_showContent) {
        StructOndData value = (StructOndData){5, (Byte []){108, 102, 106, 107, 90, 115, 106, 108, 102, 96, 90, 117, 105, 100, 124, 90, 103, 244}, 17, 62, 247, 163};
        _k_showContent = [self StringFromOndData:&value];
    }
    return _k_showContent;
}

//: icon_receiver_voice_playing_w
- (NSString *)appTerritoryContent {
    if (!_appTerritoryContent) {
        StructOndData value = (StructOndData){93, (Byte []){52, 62, 50, 51, 2, 47, 56, 62, 56, 52, 43, 56, 47, 2, 43, 50, 52, 62, 56, 2, 45, 49, 60, 36, 52, 51, 58, 2, 42, 176}, 29, 210, 151, 42};
        _appTerritoryContent = [self StringFromOndData:&value];
    }
    return _appTerritoryContent;
}

//: icon_receiver_voice_playing_006
- (NSString *)app_specificIdent {
    if (!_app_specificIdent) {
        StructOndData value = (StructOndData){180, (Byte []){221, 215, 219, 218, 235, 198, 209, 215, 209, 221, 194, 209, 198, 235, 194, 219, 221, 215, 209, 235, 196, 216, 213, 205, 221, 218, 211, 235, 132, 132, 130, 54}, 31, 206, 140, 239};
        _app_specificIdent = [self StringFromOndData:&value];
    }
    return _app_specificIdent;
}

//: icon_receiver_voice_playing_005
- (NSString *)user_oiSodIdent {
    if (!_user_oiSodIdent) {
        StructOndData value = (StructOndData){145, (Byte []){248, 242, 254, 255, 206, 227, 244, 242, 244, 248, 231, 244, 227, 206, 231, 254, 248, 242, 244, 206, 225, 253, 240, 232, 248, 255, 246, 206, 161, 161, 164, 221}, 31, 183, 141, 28};
        _user_oiSodIdent = [self StringFromOndData:&value];
    }
    return _user_oiSodIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SessionAudioCententView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionAudioContentView.h"
#import "ReadControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "PurseModel.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Secret.h"
//: #import "FFFKitAudioCenter.h"
#import "PushOutCenter.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "UIColor+MyUserKit.h"
#import "UIColor+Secret.h"

//: @interface FFFSessionAudioContentView()<NIMMediaManagerDelegate>
@interface ReadControl()<NIMMediaManagerDelegate>

//: @property (nonatomic,strong) UIImageView *voiceImageView;
@property (nonatomic,strong) UIImageView *voiceImageView;
//: @property (nonatomic,strong) UIImageView *voiceImageViewleft;
@property (nonatomic,strong) UIImageView *voiceImageViewleft;

//: @property (nonatomic,strong) UIImageView *voicePlayView;
@property (nonatomic,strong) UIImageView *voicePlayView;
//: @property (nonatomic,strong) UIImageView *voicePlayViewleft;
@property (nonatomic,strong) UIImageView *voicePlayViewleft;

//: @property (nonatomic,strong) UILabel *durationLabel;
@property (nonatomic,strong) UILabel *durationLabel;

//: @end
@end

//: @implementation FFFSessionAudioContentView
@implementation ReadControl

//: -(instancetype)initSessionMessageContentView{
-(instancetype)initAssemblage{
    //: self = [super initSessionMessageContentView];
    self = [super initAssemblage];
    //: if (self) {
    if (self) {
        //: [self addVoiceView];
        [self item];
        //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
        [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    }
    //: return self;
    return self;
}

//: - (void)dealloc
- (void)dealloc
{
    //: [[NSNotificationCenter defaultCenter] removeObserver:self];
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}

//: - (void)setPlaying:(BOOL)isPlaying
- (void)setElite:(BOOL)isPlaying
{
    //: if (isPlaying) {
    if (isPlaying) {
        //: [self.voiceImageView startAnimating];
        [self.voiceImageView startAnimating];
        //: [self.voiceImageViewleft startAnimating];
        [self.voiceImageViewleft startAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[OndData sharedInstance].mGuiltyData];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_plus_b"];
        _voicePlayView.image = [UIImage imageNamed:[OndData sharedInstance].mGuiltyData];
    //: }else{
    }else{
        //: [self.voiceImageView stopAnimating];
        [self.voiceImageView stopAnimating];
        //: [self.voiceImageViewleft stopAnimating];
        [self.voiceImageViewleft stopAnimating];
        //: _voicePlayViewleft.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayViewleft.image = [UIImage imageNamed:[OndData sharedInstance].k_showContent];
//        _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_w"];
        //: _voicePlayView.image = [UIImage imageNamed:@"icon_voice_play_b"];
        _voicePlayView.image = [UIImage imageNamed:[OndData sharedInstance].k_showContent];
    }
}

//: - (void)addVoiceView{
- (void)item{
    //: _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    _audioBackgroundView = [[UIView alloc] initWithFrame:CGRectZero];
    //: _audioBackgroundView.layer.cornerRadius = 16.f;
    _audioBackgroundView.layer.cornerRadius = 16.f;
    //: _audioBackgroundView.userInteractionEnabled = NO;
    _audioBackgroundView.userInteractionEnabled = NO;
    //: [self addSubview:_audioBackgroundView];
    [self addSubview:_audioBackgroundView];


    //: _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayViewleft = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[OndData sharedInstance].k_showContent]];
    //: [self addSubview:_voicePlayViewleft];
    [self addSubview:_voicePlayViewleft];
    //: _voicePlayViewleft.hidden = YES;
    _voicePlayViewleft.hidden = YES;
    //: _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_voice_play_b"]];
    _voicePlayView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:[OndData sharedInstance].k_showContent]];
    //: [self addSubview:_voicePlayView];
    [self addSubview:_voicePlayView];
    //: _voicePlayView.hidden = YES;
    _voicePlayView.hidden = YES;

    //: UIImage *image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
    UIImage *image = [UIImage imageNamed:[OndData sharedInstance].appTerritoryContent];
    //: _voiceImageView = [[UIImageView alloc] initWithImage:image];
    _voiceImageView = [[UIImageView alloc] initWithImage:image];
    //: NSArray *animateNames = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames = @[[OndData sharedInstance].k_pickupFormat,[OndData sharedInstance].notiQuakeWarId,[OndData sharedInstance].notiContentStr,[OndData sharedInstance].dream_powerContent,[OndData sharedInstance].user_oiSodIdent,[OndData sharedInstance].app_specificIdent,[OndData sharedInstance].m_creaseName,[OndData sharedInstance].userInfluentialMsg,[OndData sharedInstance].app_helpfulMessage,[OndData sharedInstance].noti_messageUrl];
    //: NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    NSMutableArray * animationImages = [[NSMutableArray alloc] initWithCapacity:animateNames.count];
    //: for (NSString * animateName in animateNames) {
    for (NSString * animateName in animateNames) {
        //: UIImage * animateImage = [UIImage imageNamed:animateName];
        UIImage * animateImage = [UIImage imageNamed:animateName];
        //: [animationImages addObject:animateImage];
        [animationImages addObject:animateImage];
    }
    //: _voiceImageView.animationImages = animationImages;
    _voiceImageView.animationImages = animationImages;
    //: _voiceImageView.animationDuration = 1.0;
    _voiceImageView.animationDuration = 1.0;
    //: [self addSubview:_voiceImageView];
    [self addSubview:_voiceImageView];
    //: _voiceImageView.hidden = YES;
    _voiceImageView.hidden = YES;

    //: _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"icon_receiver_voice_playing"]];
    _voiceImageViewleft = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[OndData sharedInstance].userOiPath]];
    //: NSArray *animateNames2 = @[@"icon_receiver_voice_playing_001",@"icon_receiver_voice_playing_002",@"icon_receiver_voice_playing_003",@"icon_receiver_voice_playing_004",@"icon_receiver_voice_playing_005",@"icon_receiver_voice_playing_006",@"icon_receiver_voice_playing_007",@"icon_receiver_voice_playing_008",@"icon_receiver_voice_playing_009",@"icon_receiver_voice_playing_010"];
    NSArray *animateNames2 = @[[OndData sharedInstance].k_pickupFormat,[OndData sharedInstance].notiQuakeWarId,[OndData sharedInstance].notiContentStr,[OndData sharedInstance].dream_powerContent,[OndData sharedInstance].user_oiSodIdent,[OndData sharedInstance].app_specificIdent,[OndData sharedInstance].m_creaseName,[OndData sharedInstance].userInfluentialMsg,[OndData sharedInstance].app_helpfulMessage,[OndData sharedInstance].noti_messageUrl];
    //: NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    NSMutableArray *animationImages2 = [[NSMutableArray alloc] initWithCapacity:animateNames2.count];
    //: for (NSString *animateName2 in animateNames2) {
    for (NSString *animateName2 in animateNames2) {
        //: UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        UIImage *animateImage2 = [UIImage imageNamed:animateName2];
        //: [animationImages2 addObject:animateImage2];
        [animationImages2 addObject:animateImage2];
    }
    //: _voiceImageViewleft.animationImages = animationImages2;
    _voiceImageViewleft.animationImages = animationImages2;
    //: _voiceImageViewleft.animationDuration = 1.0;
    _voiceImageViewleft.animationDuration = 1.0;
    //: [self addSubview:_voiceImageViewleft];
    [self addSubview:_voiceImageViewleft];
    //: _voiceImageViewleft.hidden = YES;
    _voiceImageViewleft.hidden = YES;

    //: _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    _durationLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    //: _durationLabel.backgroundColor = [UIColor clearColor];
    _durationLabel.backgroundColor = [UIColor clearColor];
    //: [self addSubview:_durationLabel];
    [self addSubview:_durationLabel];

}

//: - (void)refresh:(FFFMessageModel *)data {
- (void)name:(PurseModel *)data {
    //: [super refresh:data];
    [super name:data];
    //: NIMAudioObject *object = self.model.message.messageObject;
    NIMAudioObject *object = self.model.message.messageObject;
    //: self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];
    self.durationLabel.text = [NSString stringWithFormat:@"%zd\"",(NSInteger)((object.duration+500)/1000)];//四舍五入

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SchoolbagTaskSurroundingsBlock *setting = [[Secret highlight].config click:data.message];

    //: self.durationLabel.font = setting.font;
    self.durationLabel.font = setting.font;
    //: self.durationLabel.textColor = setting.textColor;
    self.durationLabel.textColor = setting.textColor;
    //: [self.durationLabel sizeToFit];
    [self.durationLabel sizeToFit];

    //: [self setPlaying:self.isPlaying];
    [self setElite:self.language];
    //: [self refreshBackground:data];
    [self titleText:data];
}

//: - (void)refreshBackground:(FFFMessageModel *)data
- (void)titleText:(PurseModel *)data
{
    //: if (data.shouldShowLeft)
    if (data.shouldShowLeft)
    {
        //: _voiceImageViewleft.hidden = NO;
        _voiceImageViewleft.hidden = NO;
        //: _voiceImageView.hidden = YES;
        _voiceImageView.hidden = YES;
        //: _voicePlayViewleft.hidden = NO;
        _voicePlayViewleft.hidden = NO;
        //: _voicePlayView.hidden = YES;
        _voicePlayView.hidden = YES;
    }
    //: else
    else
    {
//        _voiceImageView.image = [UIImage imageNamed:@"icon_receiver_voice_playing_w"];
        //: _voiceImageViewleft.hidden = YES;
        _voiceImageViewleft.hidden = YES;
        //: _voiceImageView.hidden = NO;
        _voiceImageView.hidden = NO;
        //: _voicePlayViewleft.hidden = YES;
        _voicePlayViewleft.hidden = YES;
        //: _voicePlayView.hidden = NO;
        _voicePlayView.hidden = NO;
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case FFFSessionMessageContentViewLayoutLeft: {
        case FFFSessionMessageContentViewLayoutLeft: {
//            _voiceImageView.transform = CGAffineTransformIdentity;
//            self.voiceImageView.left = contentInsets.left * 2;
            //: self.voiceImageViewleft.left = contentInsets.left * 2;
            self.voiceImageViewleft.left = contentInsets.left * 2;
             //: _durationLabel.right = self.width - contentInsets.right * 2;
             _durationLabel.right = self.width - contentInsets.right * 2;
            //: break;
            break;
        }
        //: case FFFSessionMessageContentViewLayoutRight: {
        case FFFSessionMessageContentViewLayoutRight: {
//            _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);
            //: self.voiceImageView.right = self.width - contentInsets.right * 2;
            self.voiceImageView.right = self.width - contentInsets.right * 2;
            //: _durationLabel.left = contentInsets.left;
            _durationLabel.left = contentInsets.left;
            //: break;
            break;
        }
        //: case FFFSessionMessageContentViewLayoutAuto:
        case FFFSessionMessageContentViewLayoutAuto:
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
//                _voiceImageView.transform = CGAffineTransformMakeRotation(M_PI);


                //: self.voicePlayView.left = contentInsets.left;
                self.voicePlayView.left = contentInsets.left;
                //: self.voiceImageView.left = self.voicePlayView.right+10;
                self.voiceImageView.left = self.voicePlayView.right+10;
                //: _durationLabel.left = self.voiceImageView.right+10;
                _durationLabel.left = self.voiceImageView.right+10;

            //: } else {
            } else {
//                _voiceImageView.transform = CGAffineTransformIdentity;
//               self.voiceImageView.left = contentInsets.left;

                //: self.voicePlayViewleft.left = contentInsets.left;
                self.voicePlayViewleft.left = contentInsets.left;
                //: self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                self.voiceImageViewleft.left = self.voicePlayViewleft.right+10;
                //: _durationLabel.left = self.voiceImageViewleft.right+10;
                _durationLabel.left = self.voiceImageViewleft.right+10;
            }
            //: break;
            break;
        }
    }
    //: _voiceImageView.width = 62;
    _voiceImageView.width = 62;
    //: _voiceImageView.height = 18;
    _voiceImageView.height = 18;
    //: _voiceImageView.centerY = self.height * .5f;
    _voiceImageView.centerY = self.height * .5f;

    //: _voiceImageViewleft.width = 62;
    _voiceImageViewleft.width = 62;
    //: _voiceImageViewleft.height = 18;
    _voiceImageViewleft.height = 18;
    //: _voiceImageViewleft.centerY = self.height * .5f;
    _voiceImageViewleft.centerY = self.height * .5f;

    //: _voicePlayView.width = 16;
    _voicePlayView.width = 16;
    //: _voicePlayView.height = 16;
    _voicePlayView.height = 16;
    //: _voicePlayView.centerY = self.height * .5f;
    _voicePlayView.centerY = self.height * .5f;

    //: _voicePlayViewleft.width = 16;
    _voicePlayViewleft.width = 16;
    //: _voicePlayViewleft.height = 16;
    _voicePlayViewleft.height = 16;
    //: _voicePlayViewleft.centerY = self.height * .5f;
    _voicePlayViewleft.centerY = self.height * .5f;

    //: _durationLabel.centerY = _voiceImageView.centerY;
    _durationLabel.centerY = _voiceImageView.centerY;

    //: CGFloat backgroundWidth = 0;
    CGFloat backgroundWidth = 0;
    //: CGFloat backgroundLeft = 0;
    CGFloat backgroundLeft = 0;
    //: switch (self.layoutStyle) {
    switch (self.layoutStyle) {
        //: case FFFSessionMessageContentViewLayoutLeft:
        case FFFSessionMessageContentViewLayoutLeft:
            {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        //: case FFFSessionMessageContentViewLayoutRight:
        case FFFSessionMessageContentViewLayoutRight:
            {
                //: backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            }
            //: break;
            break;
        //: default:
        default:
        {
            //: if (self.model.message.isOutgoingMsg) {
            if (self.model.message.isOutgoingMsg) {
                //: backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                backgroundWidth = self.width - 2 - contentInsets.right * .5f;
                //: backgroundLeft = 2;
                backgroundLeft = 2;
            //: } else {
            } else {
                //: backgroundWidth = self.width - contentInsets.left * .5f - 2;
                backgroundWidth = self.width - contentInsets.left * .5f - 2;
                //: backgroundLeft = contentInsets.left * .5f;
                backgroundLeft = contentInsets.left * .5f;
            }
            //: break;
            break;
        }
    }
    //: _audioBackgroundView.size = CGSizeMake(backgroundWidth,
    _audioBackgroundView.size = CGSizeMake(backgroundWidth,
                                               //: self.height - 4);
                                               self.height - 4);
    //: _audioBackgroundView.left = backgroundLeft;
    _audioBackgroundView.left = backgroundLeft;
    //: _audioBackgroundView.top = 2;
    _audioBackgroundView.top = 2;
}

//: -(void)onTouchUpInside:(id)sender
-(void)played:(id)sender
{
    //: if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
    if ([self.model.message attachmentDownloadState]== NIMMessageAttachmentDownloadStateFailed
        //: || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        || [self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateNeedDownload) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:self.model.message
                                                           //: error:nil];
                                                           error:nil];
        //: return;
        return;
    }
    //: if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {
    if ([self.model.message attachmentDownloadState] == NIMMessageAttachmentDownloadStateDownloaded) {

        //: if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
        if ([[NIMSDK sharedSDK].mediaManager isPlaying]) {
            //: [self stopPlayingUI];
            [self maxDown];
        }

        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        BeforeEvent *event = [[BeforeEvent alloc] init];
        //: event.eventName = FFFKitEventNameTapAudio;
        event.eventName = appAssetIdent;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: [self.delegate onCatchEvent:event];
        [self.delegate parametering:event];

    }
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate

//: - (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)playAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if(filePath && !error) {
    if(filePath && !error) {
        //: if (self.isPlaying && [self.audioUIDelegate respondsToSelector:@selector(startPlayingAudioUI)]) {
        if (self.language && [self.audioUIDelegate respondsToSelector:@selector(memberStatus)]) {
            //: [self.audioUIDelegate startPlayingAudioUI];
            [self.audioUIDelegate memberStatus];
        }
    }
}

//: - (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
- (void)playAudio:(NSString *)filePath didCompletedWithError:(NSError *)error
{
    //: [self stopPlayingUI];
    [self maxDown];
}

//: - (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
- (void)stopPlayAudio:(NSString *)filePath didCompletedWithError:(nullable NSError *)error
{
    //: [self stopPlayingUI];
    [self maxDown];
}

//: #pragma mark - private methods
#pragma mark - private methods
//: - (void)stopPlayingUI
- (void)maxDown
{
    //: [self setPlaying:NO];
    [self setElite:NO];
}

//: - (BOOL)isPlaying
- (BOOL)language
{
    //: BOOL play = [FFFKitAudioCenter instance].currentPlayingMessage == self.model.message; 
    BOOL play = [PushOutCenter colorTemp].currentPlayingMessage == self.model.message; //对比是否是同一条消息，严格同一条，不能是相同ID，防止进了会话又进云端消息界面，导致同一个ID的云消息也在动画
    //: return play;
    return play;
}


//- (NSString *)convertToTimeStringWithTimeInterval:(NSTimeInterval)timeInterval{
//    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"HH:mm"];
//    NSString *dateStsring = [dateFormatter stringFromDate:date];
//    return dateStsring;
//}

//: @end
@end