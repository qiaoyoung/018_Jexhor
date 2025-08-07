
#import <Foundation/Foundation.h>

@interface MaxStatusData : NSObject

+ (instancetype)sharedInstance;

//: head_default
@property (nonatomic, copy) NSString *kImageEnableContent;

//: #000000
@property (nonatomic, copy) NSString *noti_completeMsg;

@end

@implementation MaxStatusData

+ (instancetype)sharedInstance {
    static MaxStatusData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)MaxStatusDataToCache:(Byte *)data {
    int openicer = data[0];
    Byte edge = data[1];
    int fallFor = data[2];
    for (int i = fallFor; i < fallFor + openicer; i++) {
        int value = data[i] - edge;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[fallFor + openicer] = 0;
    return data + fallFor;
}

- (NSString *)StringFromMaxStatusData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MaxStatusDataToCache:data]];
}

//: head_default
- (NSString *)kImageEnableContent {
    if (!_kImageEnableContent) {
        Byte value[] = {12, 90, 3, 194, 191, 187, 190, 185, 190, 191, 192, 187, 207, 198, 206, 50};
        _kImageEnableContent = [self StringFromMaxStatusData:value];
    }
    return _kImageEnableContent;
}

//: #000000
- (NSString *)noti_completeMsg {
    if (!_noti_completeMsg) {
        Byte value[] = {7, 15, 8, 22, 88, 42, 76, 100, 50, 63, 63, 63, 63, 63, 63, 195};
        _noti_completeMsg = [self StringFromMaxStatusData:value];
    }
    return _noti_completeMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldReusableView.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "ShouldReusableView.h"

//: @implementation TeamMemberNormalCollectionViewCell
@implementation ShouldReusableView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self tool];

    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)tool
{
    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30)/3;
    //: self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    self.ImageView = [[UIImageView alloc] initWithFrame:CGRectMake((width-48)/2, 0, 48, 48)];
    //: self.ImageView.layer.cornerRadius = 24;
    self.ImageView.layer.cornerRadius = 24;
    //: self.ImageView.layer.masksToBounds = YES;
    self.ImageView.layer.masksToBounds = YES;
    //: [self.contentView addSubview:self.ImageView];
    [self.contentView addSubview:self.ImageView];

    //: self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.ImageView.bottom+2, width, 20)];
    //: self.titleLabel.textColor = [UIColor colorWithHexString:@"#000000"];
    self.titleLabel.textColor = [UIColor user:[MaxStatusData sharedInstance].noti_completeMsg];
    //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //: self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];

}

//: - (void)refreshWithModel:(NIMTeamMember *)member
- (void)enableView:(NIMTeamMember *)member
{
    //: PushKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    DataTeam *info = [[Secret highlight] infoAndStraddleOption:member.userId item:nil];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[MaxStatusData sharedInstance].kImageEnableContent]];
}


//: -(void)prepareForReuse
-(void)prepareForReuse
{
    //: [super prepareForReuse];
    [super prepareForReuse];
//    [self.logoImageView sd_cancelCurrentAnimationImagesLoad];
    //: self.ImageView.image = nil;
    self.ImageView.image = nil;
}


//: @end
@end
