
#import <Foundation/Foundation.h>

typedef struct {
    Byte undertake;
    Byte *lengthEnd;
    unsigned int texts;
	int infoDrugQuick;
	int slice;
} StructPremiumWithData;

@interface PremiumWithData : NSObject

@end

@implementation PremiumWithData

+ (Byte *)PremiumWithDataToByte:(StructPremiumWithData *)data {
    for (int i = 0; i < data->texts; i++) {
        data->lengthEnd[i] ^= data->undertake;
    }
    data->lengthEnd[data->texts] = 0;
	if (data->texts >= 2) {
		data->infoDrugQuick = data->lengthEnd[0];
		data->slice = data->lengthEnd[1];
	}
    return data->lengthEnd;
}

+ (NSString *)StringFromPremiumWithData:(StructPremiumWithData *)data {
    return [NSString stringWithUTF8String:(char *)[self PremiumWithDataToByte:data]];
}

//: head_default
+ (NSString *)noti_lengthText {
    /* static */ NSString *noti_lengthText = nil;
    if (!noti_lengthText) {
        StructPremiumWithData value = (StructPremiumWithData){208, (Byte []){184, 181, 177, 180, 143, 180, 181, 182, 177, 165, 188, 164, 80}, 12, 92, 89};
        noti_lengthText = [self StringFromPremiumWithData:&value];
    }
    return noti_lengthText;
}

//: #000000
+ (NSString *)showNameSizeImageValue {
    /* static */ NSString *showNameSizeImageValue = nil;
    if (!showNameSizeImageValue) {
        StructPremiumWithData value = (StructPremiumWithData){48, (Byte []){19, 0, 0, 0, 0, 0, 0, 48}, 7, 70, 164};
        showNameSizeImageValue = [self StringFromPremiumWithData:&value];
    }
    return showNameSizeImageValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  SameViewCell.m
//  Riverla
//
//  Created by mac on 2025/4/15.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TeamMemberNormalCollectionViewCell.h"
#import "SameViewCell.h"

//: @implementation TeamMemberNormalCollectionViewCell
@implementation SameViewCell

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self setUp];
        [self managerAcross];

    }
    //: return self;
    return self;
}

//: - (void)setUp
- (void)managerAcross
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
    self.titleLabel.textColor = [UIColor ground:[PremiumWithData showNameSizeImageValue]];
    //: self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //: self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [self.contentView addSubview:self.titleLabel];
    [self.contentView addSubview:self.titleLabel];

}

//: - (void)refreshWithModel:(NIMTeamMember *)member
- (void)smartDataModel:(NIMTeamMember *)member
{
    //: WorkKitInfo *info = [[MyUserKit sharedKit] infoByUser:member.userId option:nil];
    ConfirmationInfo *info = [[MessageContent secretResolution] recent:member.userId blue:nil];
    //: self.titleLabel.text = info.showName;
    self.titleLabel.text = info.showName;
    //: [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:@"head_default"]];
    [self.ImageView sd_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:[UIImage imageNamed:[PremiumWithData noti_lengthText]]];
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
