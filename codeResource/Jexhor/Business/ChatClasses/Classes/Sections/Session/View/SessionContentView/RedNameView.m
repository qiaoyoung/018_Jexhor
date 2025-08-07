
#import <Foundation/Foundation.h>

NSString *StringFromAppearData(Byte *data);


//: personCardId
Byte show_sackTitle[] = {57, 12, 13, 21, 195, 243, 11, 103, 131, 30, 207, 123, 155, 100, 73, 100, 114, 97, 67, 110, 111, 115, 114, 101, 112, 179};

//: data
Byte userRemoveHemeVariationData[] = {52, 4, 3, 97, 116, 97, 100, 226};

//: type
Byte k_cigData[] = {28, 4, 7, 42, 9, 252, 82, 101, 112, 121, 116, 194};

//: head_default
Byte kAntGrandNameValue[] = {21, 12, 7, 185, 207, 244, 200, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 201};

//: head_default_group
Byte m_atName[] = {95, 18, 13, 98, 76, 92, 66, 84, 196, 119, 142, 125, 123, 112, 117, 111, 114, 103, 95, 116, 108, 117, 97, 102, 101, 100, 95, 100, 97, 101, 104, 149};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RedNameView.m
// MessageContent
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionShareCardContentView.h"
#import "RedNameView.h"
//: #import "FFFMessageModel.h"
#import "ShowModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFLoadProgressView.h"
#import "ButtonLoadView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "MyUserKit.h"
#import "MessageContent.h"
//: #import "FFFKitDataProviderImpl.h"
#import "ColumnLine.h"
//: #import "FFFKitInfoFetchOption.h"
#import "RangeOption.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+MessageContent.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+MessageContent.h"
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import <objc/message.h>
#import <objc/message.h>

//: @interface FFFSessionShareCardContentView()
@interface RedNameView()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;
//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @end
@end

//: @implementation FFFSessionShareCardContentView
@implementation RedNameView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initViewKey{
    //: self = [super initSessionMessageContentView];
    self = [super initViewKey];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _imageView.backgroundColor = [UIColor whiteColor];
        _imageView.backgroundColor = [UIColor whiteColor];
        //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        //: _imageView.layer.cornerRadius = 18;
        _imageView.layer.cornerRadius = 18;
        //: _imageView.layer.masksToBounds = YES;
        _imageView.layer.masksToBounds = YES;
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.textColor = [UIColor blackColor];
        _nameLabel.textColor = [UIColor blackColor];
        //: [self addSubview:_nameLabel];
        [self addSubview:_nameLabel];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)panorama:(ShowModel *)data
{
    //: [super refresh:data];
    [super panorama:data];
    //: _imageView.image = nil;
    _imageView.image = nil;
    //: self.nameLabel.text = @"";
    self.nameLabel.text = @"";
    //: NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:StringFromAppearData(k_cigData)] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:StringFromAppearData(userRemoveHemeVariationData)];
            //: if (type == 105) {
            if (type == 105) {

                //: NSString *cardid = [datatyl stringValueForKey:@"personCardId" defaultValue:@""];
                NSString *cardid = [datatyl canValue:StringFromAppearData(show_sackTitle) background:@""];

                //: if ([[datatyl stringValueForKey:@"type" defaultValue:@"0"] boolValue]) {
                if ([[datatyl canValue:StringFromAppearData(k_cigData) background:@"0"] boolValue]) {
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    //: if (team.teamName.length>0) {
                    if (team.teamName.length>0) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:StringFromAppearData(m_atName)]];
                        //: self.nameLabel.text = team.teamName;
                        self.nameLabel.text = team.teamName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                        [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                            //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                            [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:StringFromAppearData(m_atName)]];
                            //: self.nameLabel.text = team.teamName;
                            self.nameLabel.text = team.teamName;
                        //: }];
                        }];
                    }
                //: } else {
                } else {
                    @
                     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                                  ;
                    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    //: if (user.userInfo.nickName) {
                    if (user.userInfo.nickName) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:StringFromAppearData(kAntGrandNameValue)]];
                        //: self.nameLabel.text = user.userInfo.nickName;
                        self.nameLabel.text = user.userInfo.nickName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                        [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                            //: if (users.count) {
                            if (users.count) {
                                @
                                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                                ;
                                //: NIMUser *user = users.firstObject;
                                NIMUser *user = users.firstObject;
                                //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                                [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:StringFromAppearData(kAntGrandNameValue)]];
                                //: self.nameLabel.text = user.userInfo.nickName;
                                self.nameLabel.text = user.userInfo.nickName;
                            }
                        //: }];
                        }];
                    }


                }
            }
        }
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
    //: self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
    self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
}


//: - (void)onTouchUpInside:(id)sender
- (void)recorded:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    WrittenAccountLab *event = [[WrittenAccountLab alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = userTopData;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate aboveImage:event];
}

//: @end
@end

Byte * AppearDataToCache(Byte *data) {
    int digitalFederal = data[0];
    int signCharacter = data[1];
    int predominant = data[2];
    if (!digitalFederal) return data + predominant;
    for (int i = 0; i < signCharacter / 2; i++) {
        int begin = predominant + i;
        int end = predominant + signCharacter - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[predominant + signCharacter] = 0;
    return data + predominant;
}

NSString *StringFromAppearData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)AppearDataToCache(data)];
}  
