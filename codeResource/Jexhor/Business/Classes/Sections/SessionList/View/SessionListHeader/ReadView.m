
#import <Foundation/Foundation.h>

@interface ToLightData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ToLightData

+ (instancetype)sharedInstance {
    static ToLightData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ToLightDataToCache:(Byte *)data {
    int actor = data[0];
    Byte blueMage = data[1];
    int aspectRough = data[2];
    for (int i = aspectRough; i < aspectRough + actor; i++) {
        int value = data[i] - blueMage;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[aspectRough + actor] = 0;
    return data + aspectRough;
}

- (NSString *)StringFromToLightData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ToLightDataToCache:data]];
}

//: home_fragment_net_error
- (NSString *)dream_resembleVoiceLightStr {
    /* static */ NSString *dream_resembleVoiceLightStr = nil;
    if (!dream_resembleVoiceLightStr) {
        Byte value[] = {23, 2, 5, 123, 136, 106, 113, 111, 103, 97, 104, 116, 99, 105, 111, 103, 112, 118, 97, 112, 103, 118, 97, 103, 116, 116, 113, 116, 172};
        dream_resembleVoiceLightStr = [self StringFromToLightData:value];
    }
    return dream_resembleVoiceLightStr;
}

//: login_activity_login_failed
- (NSString *)userCompleteMessage {
    /* static */ NSString *userCompleteMessage = nil;
    if (!userCompleteMessage) {
        Byte value[] = {27, 56, 5, 80, 120, 164, 167, 159, 161, 166, 151, 153, 155, 172, 161, 174, 161, 172, 177, 151, 164, 167, 159, 161, 166, 151, 158, 153, 161, 164, 157, 156, 174};
        userCompleteMessage = [self StringFromToLightData:value];
    }
    return userCompleteMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListHeader.m
//  NIM
//
//  Created by chris on 15/3/23.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESListHeader.h"
#import "ReadView.h"
//: #import "UIView+NTES.h"
#import "UIView+SearchedTeam.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "NTESClientUtil.h"
#import "MaxAdd.h"

//: @interface NTESListHeader()
@interface ReadView()

//: @end
@end


//: @implementation NTESListHeader
@implementation ReadView

//: - (void)refreshWithType:(NTESListHeaderType)type value:(id)value{
- (void)eigenvalueOfAMatrix:(NTESListHeaderType)type totalervalValue:(id)value{
    //: switch (type) {
    switch (type) {
        //: case ListHeaderTypeCommonText:
        case ListHeaderTypeCommonText:
            //: [self refreshWithCommonText:value];
            [self cover:value];
            //: break;
            break;
        //: case ListHeaderTypeNetStauts:
        case ListHeaderTypeNetStauts:
            //: [self refreshWithNetStatus:[value integerValue]];
            [self record:[value integerValue]];
            //: break;
            break;
        //: case ListHeaderTypeLoginClients:
        case ListHeaderTypeLoginClients:
            //: [self refreshWithClients:value];
            [self message:value];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self sizeToFit];
    [self sizeToFit];
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: CGFloat height = 0;
    CGFloat height = 0;
    //: for (UIView *subView in self.subviews) {
    for (UIView *subView in self.subviews) {
        //: [subView sizeToFit];
        [subView sizeToFit];
        //: height += subView.height;
        height += subView.height;
    }
    //: return CGSizeMake(self.width,height);
    return CGSizeMake(self.width,height);
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat top = 0;
    CGFloat top = 0;
    //: for (UIView *subView in self.subviews) {
    for (UIView *subView in self.subviews) {
        //: subView.top = top;
        subView.top = top;
        //: top = top + subView.height;
        top = top + subView.height;
        //: subView.centerX = self.width * .5f;
        subView.centerX = self.width * .5f;
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshWithClients:(NSArray *)clients{
- (void)message:(NSArray *)clients{
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (clients.count) {
    if (clients.count) {
        //目前的踢人逻辑是web和pc不能共存，移动端不能共存，所以这里取第一个显示就可以了
        //: NIMLoginClient *client = clients.firstObject;
        NIMLoginClient *client = clients.firstObject;
        //: text = [NTESClientUtil clientName:client.type];
        text = [MaxAdd lawyerClientRelationValue:client.type];

//        if (client.customClientType != 0) {
//            text = name.length? [NSString stringWithFormat:@"%@ %@（%@）",
//                                 @"正在使用密聊".ntes_localized,
//                                 name, @(client.customClientType)] : [NSString stringWithFormat:@"正在使用密聊未知版本 (%@)".ntes_localized, @(client.customClientType)];
//        } else {
//            text = name.length? [NSString stringWithFormat:@"%@ %@",
//                                 @"正在使用密聊".ntes_localized,
//                                 name] : @"正在使用密聊未知版本".ntes_localized;
//        }

    }
    //: [self addRow:ListHeaderTypeLoginClients content:text viewClassName:@"NTESMutiClientsHeaderView"];
    [self find:ListHeaderTypeLoginClients holder:text show:@"DoingControl"];
}


//: - (void)refreshWithNetStatus:(NIMLoginStep)step{
- (void)record:(NIMLoginStep)step{
    //: NSString *text = nil;
    NSString *text = nil;
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
        //: case NIMLoginStepLoseConnection:
        case NIMLoginStepLoseConnection:
            //: text = [PushLanguageManager getTextWithKey:@"home_fragment_net_error"];
            text = [BackgroundRandomAttribute content:[[ToLightData sharedInstance] dream_resembleVoiceLightStr]];
            //: break;
            break;
        //: case NIMLoginStepLoginFailed:
        case NIMLoginStepLoginFailed:
            //: text = [PushLanguageManager getTextWithKey:@"login_activity_login_failed"];
            text = [BackgroundRandomAttribute content:[[ToLightData sharedInstance] userCompleteMessage]];
            //: break;
            break;
        //: case NIMLoginStepNetChanged:
        case NIMLoginStepNetChanged:
        {
            //: if ([[Reachability reachabilityForInternetConnection] isReachable])
            if ([[Reachability reachabilityForInternetConnection] isReachable])
            {
//                text = @"网络正在切换,识别中....".ntes_localized;
            }
            //: else
            else
            {
                //: text = [PushLanguageManager getTextWithKey:@"home_fragment_net_error"];
                text = [BackgroundRandomAttribute content:[[ToLightData sharedInstance] dream_resembleVoiceLightStr]];
            }
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self addRow:ListHeaderTypeNetStauts content:text viewClassName:@"NTESTextHeaderView"];
    [self find:ListHeaderTypeNetStauts holder:text show:@"InputControl"];
}

//: - (void)refreshWithCommonText:(NSString *)text{
- (void)cover:(NSString *)text{
    //: [self addRow:ListHeaderTypeCommonText content:text viewClassName:@"NTESTextHeaderView"];
    [self find:ListHeaderTypeCommonText holder:text show:@"InputControl"];
}


//参数viewClassName的Class 必须是UIControl的子类并实现<NTESSessionListHeaderView>协议
//: - (void)addRow:(NTESListHeaderType)type content:(NSString *)content viewClassName:(NSString *)viewClassName{
- (void)find:(NTESListHeaderType)type holder:(NSString *)content show:(NSString *)viewClassName{
    //: UIControl<NTESListHeaderView> *rowView = (UIControl<NTESListHeaderView> *)[self viewWithTag:type];
    UIControl<SessionContainerView> *rowView = (UIControl<SessionContainerView> *)[self viewWithTag:type];
    //: if ([content length])
    if ([content length])
    {
        //: if (!rowView) {
        if (!rowView) {
            //: Class clazz = NSClassFromString(viewClassName);
            Class clazz = NSClassFromString(viewClassName);
            //: rowView = [[clazz alloc] initWithFrame:CGRectMake(0, 0, self.width, 0)];
            rowView = [[clazz alloc] initWithFrame:CGRectMake(0, 0, self.width, 0)];
            //: rowView.backgroundColor = [self fillBackgroundColor:type];
            rowView.backgroundColor = [self inheritanceBackground:type];
            //: __block NSInteger insert = self.subviews.count;
            __block NSInteger insert = self.subviews.count;
            //: [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                //: UIView *view = obj;
                UIView *view = obj;
                //: if (view.tag > type) {
                if (view.tag > type) {
                    //: insert = idx;
                    insert = idx;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
            //: rowView.tag = type;
            rowView.tag = type;
            //: [self insertSubview:rowView atIndex:insert];
            [self insertSubview:rowView atIndex:insert];
            //: [rowView addTarget:self action:@selector(didSelectRow:) forControlEvents:UIControlEventTouchUpInside];
            [rowView addTarget:self action:@selector(chooses:) forControlEvents:UIControlEventTouchUpInside];
        }
        //: [rowView setContentText:content];
        [rowView setView:content];
    }
    //: else
    else
    {
        //: [rowView removeFromSuperview];
        [rowView removeFromSuperview];
    }
}


//: - (void)didSelectRow:(id)sender{
- (void)chooses:(id)sender{
    //: UIControl *view = sender;
    UIControl *view = sender;
    //: if ([self.delegate respondsToSelector:@selector(didSelectRowType:)]) {
    if ([self.delegate respondsToSelector:@selector(hid:)]) {
        //: [self.delegate didSelectRowType:view.tag];
        [self.delegate hid:view.tag];
    }
}


//: - (UIColor *)fillBackgroundColor:(NTESListHeaderType)type{
- (UIColor *)inheritanceBackground:(NTESListHeaderType)type{
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @(ListHeaderTypeNetStauts) : [UIColor colorWithRed:((float)((0xFFE3E3 & 0xFF0000) >> 16))/255.0 green:((float)((0xFFE3E3 & 0x00FF00) >> 8))/255.0 blue:((float)(0xFFE3E3 & 0x0000FF))/255.0 alpha:1.0],
                           @(ListHeaderTypeNetStauts) : [UIColor colorWithRed:((float)((0xFFE3E3 & 0xFF0000) >> 16))/255.0 green:((float)((0xFFE3E3 & 0x00FF00) >> 8))/255.0 blue:((float)(0xFFE3E3 & 0x0000FF))/255.0 alpha:1.0],
                           //: @(ListHeaderTypeCommonText) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0],
                           @(ListHeaderTypeCommonText) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0],
                           //: @(ListHeaderTypeLoginClients) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0]
                           @(ListHeaderTypeLoginClients) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0]
                           //: };
                           };
    //: return dict[@(type)];
    return dict[@(type)];
}

//: @end
@end
