
#import <Foundation/Foundation.h>

typedef struct {
    Byte companyContent;
    Byte *titleDeadDelicate;
    unsigned int yinBorn;
	int practitioner;
	int purchase;
	int delimit;
} StructCollectionData;

@interface CollectionData : NSObject

+ (instancetype)sharedInstance;

//: #D6D6D6
@property (nonatomic, copy) NSString *notiHolderData;

//: #C7E8CA
@property (nonatomic, copy) NSString *kDistinctionKey;

//: icon_redpackage_close
@property (nonatomic, copy) NSString *noti_laverStr;

//: icon_redpackage_money
@property (nonatomic, copy) NSString *userTermsTitle;

//: #333333
@property (nonatomic, copy) NSString *noti_aspectFormat;

//: activity_pay_psw_input
@property (nonatomic, copy) NSString *dreamPermitData;

//: amount
@property (nonatomic, copy) NSString *mAdviserTitle;

//: change
@property (nonatomic, copy) NSString *user_hospitalFormat;

//: red_packet
@property (nonatomic, copy) NSString *user_sessionChiefUrl;

//: #888888
@property (nonatomic, copy) NSString *app_lightDisappointedFormat;

@end

@implementation CollectionData

+ (instancetype)sharedInstance {
    static CollectionData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CollectionDataToByte:(StructCollectionData *)data {
    for (int i = 0; i < data->yinBorn; i++) {
        data->titleDeadDelicate[i] ^= data->companyContent;
    }
    data->titleDeadDelicate[data->yinBorn] = 0;
	if (data->yinBorn >= 3) {
		data->practitioner = data->titleDeadDelicate[0];
		data->purchase = data->titleDeadDelicate[1];
		data->delimit = data->titleDeadDelicate[2];
	}
    return data->titleDeadDelicate;
}

- (NSString *)StringFromCollectionData:(StructCollectionData *)data {
    return [NSString stringWithUTF8String:(char *)[self CollectionDataToByte:data]];
}

//: #C7E8CA
- (NSString *)kDistinctionKey {
    if (!_kDistinctionKey) {
        StructCollectionData value = (StructCollectionData){32, (Byte []){3, 99, 23, 101, 24, 99, 97, 45}, 7, 126, 188, 135};
        _kDistinctionKey = [self StringFromCollectionData:&value];
    }
    return _kDistinctionKey;
}

//: activity_pay_psw_input
- (NSString *)dreamPermitData {
    if (!_dreamPermitData) {
        StructCollectionData value = (StructCollectionData){71, (Byte []){38, 36, 51, 46, 49, 46, 51, 62, 24, 55, 38, 62, 24, 55, 52, 48, 24, 46, 41, 55, 50, 51, 106}, 22, 48, 112, 76};
        _dreamPermitData = [self StringFromCollectionData:&value];
    }
    return _dreamPermitData;
}

//: #D6D6D6
- (NSString *)notiHolderData {
    if (!_notiHolderData) {
        StructCollectionData value = (StructCollectionData){96, (Byte []){67, 36, 86, 36, 86, 36, 86, 4}, 7, 126, 67, 157};
        _notiHolderData = [self StringFromCollectionData:&value];
    }
    return _notiHolderData;
}

//: amount
- (NSString *)mAdviserTitle {
    if (!_mAdviserTitle) {
        StructCollectionData value = (StructCollectionData){254, (Byte []){159, 147, 145, 139, 144, 138, 102}, 6, 27, 148, 221};
        _mAdviserTitle = [self StringFromCollectionData:&value];
    }
    return _mAdviserTitle;
}

//: icon_redpackage_money
- (NSString *)userTermsTitle {
    if (!_userTermsTitle) {
        StructCollectionData value = (StructCollectionData){237, (Byte []){132, 142, 130, 131, 178, 159, 136, 137, 157, 140, 142, 134, 140, 138, 136, 178, 128, 130, 131, 136, 148, 141}, 21, 177, 218, 99};
        _userTermsTitle = [self StringFromCollectionData:&value];
    }
    return _userTermsTitle;
}

//: change
- (NSString *)user_hospitalFormat {
    if (!_user_hospitalFormat) {
        StructCollectionData value = (StructCollectionData){23, (Byte []){116, 127, 118, 121, 112, 114, 129}, 6, 172, 128, 19};
        _user_hospitalFormat = [self StringFromCollectionData:&value];
    }
    return _user_hospitalFormat;
}

//: #888888
- (NSString *)app_lightDisappointedFormat {
    if (!_app_lightDisappointedFormat) {
        StructCollectionData value = (StructCollectionData){92, (Byte []){127, 100, 100, 100, 100, 100, 100, 146}, 7, 75, 231, 122};
        _app_lightDisappointedFormat = [self StringFromCollectionData:&value];
    }
    return _app_lightDisappointedFormat;
}

//: red_packet
- (NSString *)user_sessionChiefUrl {
    if (!_user_sessionChiefUrl) {
        StructCollectionData value = (StructCollectionData){89, (Byte []){43, 60, 61, 6, 41, 56, 58, 50, 60, 45, 191}, 10, 159, 99, 35};
        _user_sessionChiefUrl = [self StringFromCollectionData:&value];
    }
    return _user_sessionChiefUrl;
}

//: #333333
- (NSString *)noti_aspectFormat {
    if (!_noti_aspectFormat) {
        StructCollectionData value = (StructCollectionData){215, (Byte []){244, 228, 228, 228, 228, 228, 228, 177}, 7, 244, 227, 140};
        _noti_aspectFormat = [self StringFromCollectionData:&value];
    }
    return _noti_aspectFormat;
}

//: icon_redpackage_close
- (NSString *)noti_laverStr {
    if (!_noti_laverStr) {
        StructCollectionData value = (StructCollectionData){32, (Byte []){73, 67, 79, 78, 127, 82, 69, 68, 80, 65, 67, 75, 65, 71, 69, 127, 67, 76, 79, 83, 69, 197}, 21, 108, 101, 76};
        _noti_laverStr = [self StringFromCollectionData:&value];
    }
    return _noti_laverStr;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  MenorrheaReddishView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESRedPackagePaySheet.h"
#import "MenorrheaReddishView.h"
//: #import "PushAvatarImageView.h"
#import "ImageView.h"
//: #import "TPPasswordTextView.h"
#import "TapBeforeView.h"

//: @interface NTESRedPackagePaySheet ()
@interface MenorrheaReddishView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UITextField *textfield;
@property (nonatomic,strong) UITextField *textfield;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @end
@end

//: @implementation NTESRedPackagePaySheet
@implementation MenorrheaReddishView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithShared:(CGRect)frame inheritance:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: [self addSubview:b];
        [self addSubview:b];

        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(valuePress)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:[CollectionData sharedInstance].noti_laverStr] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(marginBubble) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.top.mas_offset(7.5);
            make.top.mas_offset(7.5);
            //: make.width.mas_equalTo(35);
            make.width.mas_equalTo(35);
            //: make.height.mas_equalTo(35);
            make.height.mas_equalTo(35);
        //: }];
        }];



        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor colorWithHexString:@"#333333"];
        titleLabel_1.textColor = [UIColor user:[CollectionData sharedInstance].noti_aspectFormat];
        //: titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        //: titleLabel_1.text = [PushLanguageManager getTextWithKey:@"activity_pay_psw_input"];
        titleLabel_1.text = [BackgroundRandomAttribute content:[CollectionData sharedInstance].dreamPermitData];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.left.mas_offset(100);
            make.left.mas_offset(100);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

        //: UIView *line = [[UIView alloc] init];
        UIView *line = [[UIView alloc] init];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#C7E8CA"];
        line.backgroundColor = [UIColor user:[CollectionData sharedInstance].kDistinctionKey];
        //: [_backView addSubview:line];
        [_backView addSubview:line];
        //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.height.mas_equalTo(1);
            make.height.mas_equalTo(1);
        //: }];
        }];

        //: UILabel *title = [[UILabel alloc] init];
        UILabel *title = [[UILabel alloc] init];
        //: title.textAlignment = NSTextAlignmentCenter;
        title.textAlignment = NSTextAlignmentCenter;
        //: title.textColor = [UIColor blackColor];
        title.textColor = [UIColor blackColor];
        //: title.font = [UIFont systemFontOfSize:15];
        title.font = [UIFont systemFontOfSize:15];
        //: title.text = [PushLanguageManager getTextWithKey:@"red_packet"];
        title.text = [BackgroundRandomAttribute content:[CollectionData sharedInstance].user_sessionChiefUrl];
        //: [_backView addSubview:title];
        [_backView addSubview:title];
        //: [title mas_makeConstraints:^(MASConstraintMaker *make) {
        [title mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(60);
            make.top.mas_offset(60);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentCenter;
        amountLabel.textAlignment = NSTextAlignmentCenter;
        //: amountLabel.textColor = [UIColor blackColor];
        amountLabel.textColor = [UIColor blackColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:30];
        amountLabel.font = [UIFont boldSystemFontOfSize:30];
        //: amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary newStringValueForKey:@"amount"]];
        amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary index:[CollectionData sharedInstance].mAdviserTitle]];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
        //: }];
        }];

        //: UIView *blackLine = [[UIView alloc] init];
        UIView *blackLine = [[UIView alloc] init];
        //: blackLine.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine.backgroundColor = [UIColor user:[CollectionData sharedInstance].notiHolderData];
        //: [_backView addSubview:blackLine];
        [_backView addSubview:blackLine];
        //: [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(150);
            make.top.mas_offset(150);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];

        //: UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        //: iconImage.image = [UIImage imageNamed:@"icon_redpackage_money"];
        iconImage.image = [UIImage imageNamed:[CollectionData sharedInstance].userTermsTitle];
        //: [_backView addSubview:iconImage];
        [_backView addSubview:iconImage];

        //: UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        //: lingq.textColor = [UIColor colorWithHexString:@"#888888"];
        lingq.textColor = [UIColor user:[CollectionData sharedInstance].app_lightDisappointedFormat];
        //: lingq.font = [UIFont systemFontOfSize:15];
        lingq.font = [UIFont systemFontOfSize:15];
        //: lingq.text = @"change";
        lingq.text = [CollectionData sharedInstance].user_hospitalFormat;
        //: [_backView addSubview:lingq];
        [_backView addSubview:lingq];


        //: UIView *blackLine_2 = [[UIView alloc] init];
        UIView *blackLine_2 = [[UIView alloc] init];
        //: blackLine_2.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine_2.backgroundColor = [UIColor user:[CollectionData sharedInstance].notiHolderData];
        //: [_backView addSubview:blackLine_2];
        [_backView addSubview:blackLine_2];
        //: [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(200);
            make.top.mas_offset(200);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];


        //: CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        //: TPPasswordTextView *view1 = [[TPPasswordTextView alloc] initWithFrame:rect];
        TapBeforeView *view1 = [[TapBeforeView alloc] initWithFrame:rect];
        //: view1.elementCount = 6;
        view1.elementCount = 6;
        //: view1.elementBorderColor = [UIColor lightGrayColor];
        view1.elementBorderColor = [UIColor lightGrayColor];
        //: [_backView addSubview:view1];
        [_backView addSubview:view1];
        //: view1.passwordDidChangeBlock = ^(NSString *password) {
        view1.passwordDidChangeBlock = ^(NSString *password) {

            //: if (password.length == 6) {
            if (password.length == 6) {
                //: _block(password);
                _block(password);
                //: [self dismissPicker];
                [self marginBubble];
            }
        //: };
        };

        //: [self reloadHeader];
        [self success];
    }
    //: return self;
    return self;
}


//: -(void)reloadHeader{
-(void)success{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: PushKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:userID item:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
}

//: -(void)handleSingleTapFrom{
-(void)valuePress{
    //: [self dismissPicker];
    [self marginBubble];
}

//: - (void)show{
- (void)tap{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
        [self->_backView setClick:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice title]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)marginBubble{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setClick:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: -(void)finshInputPassword:(PayPasswordBlock)block{
-(void)removeMessage:(PayPasswordBlock)block{
    //: _block = block;
    _block = block;
}

//: @end
@end
