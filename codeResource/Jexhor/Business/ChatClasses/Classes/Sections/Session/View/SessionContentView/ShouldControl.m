// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldControl.h
// Secret
//
//  Created by chris on 15/3/9.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PushSessionUnknowContentView.h"
#import "ShouldControl.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "InsertView+Secret.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "PushMessageModel.h"
#import "PurseModel.h"
//: #import "MyUserKit.h"
#import "Secret.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Secret.h"
//: #import "PushGlobalMacro.h"
#import "PushGlobalMacro.h"

//: @interface PushSessionUnknowContentView()
@interface ShouldControl()

//: @property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UILabel *label;

//: @end
@end

//: @implementation PushSessionUnknowContentView
@implementation ShouldControl

//: -(instancetype)initSessionMessageContentView
-(instancetype)initAssemblage
{
    //: if (self = [super initSessionMessageContentView]) {
    if (self = [super initAssemblage]) {
        //: _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _label.backgroundColor = [UIColor clearColor];
        _label.backgroundColor = [UIColor clearColor];
        //: _label.userInteractionEnabled = NO;
        _label.userInteractionEnabled = NO;
        //: [self addSubview:_label];
        [self addSubview:_label];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(PushMessageModel *)data{
- (void)name:(PurseModel *)data{
    //: [super refresh:data];
    [super name:data];
    //: NSString *text = @"";
    NSString *text = @"";
//    NSString *text = @"未知类型消息".nim_localized;
    //: PushKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SchoolbagTaskSurroundingsBlock *setting = [[Secret highlight].config click:data.message];

    //: self.label.textColor = setting.textColor;
    self.label.textColor = setting.textColor;
    //: self.label.font = setting.font;
    self.label.font = setting.font;
    //: [self.label setText:text];
    [self.label setText:text];
    //: [self.label sizeToFit];
    [self.label sizeToFit];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _label.nim_centerX = self.nim_width * .5f;
    _label.nim_centerX = self.nim_width * .5f;
    //: _label.nim_centerY = self.nim_height * .5f;
    _label.nim_centerY = self.nim_height * .5f;
}

//: @end
@end
