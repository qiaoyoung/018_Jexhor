
#import <Foundation/Foundation.h>

@interface SoleData : NSObject

@end

@implementation SoleData

+ (Byte *)SoleDataToCache:(Byte *)data {
    int withMyth = data[0];
    Byte floorCovering = data[1];
    int circuitCasual = data[2];
    for (int i = circuitCasual; i < circuitCasual + withMyth; i++) {
        int value = data[i] - floorCovering;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[circuitCasual + withMyth] = 0;
    return data + circuitCasual;
}

+ (NSString *)StringFromSoleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SoleDataToCache:data]];
}

//: file
+ (NSString *)appUncleText {
    /* static */ NSString *appUncleText = nil;
    if (!appUncleText) {
        Byte value[] = {4, 65, 13, 208, 236, 145, 177, 30, 216, 96, 40, 40, 80, 167, 170, 173, 166, 148};
        appUncleText = [self StringFromSoleData:value];
    }
    return appUncleText;
}

//: .zip
+ (NSString *)kMessageName {
    /* static */ NSString *kMessageName = nil;
    if (!kMessageName) {
        Byte value[] = {4, 11, 13, 178, 230, 134, 18, 55, 71, 137, 24, 63, 185, 57, 133, 116, 123, 69};
        kMessageName = [self StringFromSoleData:value];
    }
    return kMessageName;
}

//: %@.png
+ (NSString *)mTareName {
    /* static */ NSString *mTareName = nil;
    if (!mTareName) {
        Byte value[] = {6, 40, 11, 49, 195, 26, 180, 59, 20, 40, 100, 77, 104, 86, 152, 150, 143, 134};
        mTareName = [self StringFromSoleData:value];
    }
    return mTareName;
}

//: StableBehindSuper
+ (NSString *)show_suicideHandleTitle {
    /* static */ NSString *show_suicideHandleTitle = nil;
    if (!show_suicideHandleTitle) {
        Byte value[] = {17, 20, 8, 229, 36, 122, 243, 38, 103, 136, 117, 118, 128, 121, 86, 121, 124, 125, 130, 120, 103, 137, 132, 121, 134, 69};
        show_suicideHandleTitle = [self StringFromSoleData:value];
    }
    return show_suicideHandleTitle;
}

//: %@.imageset
+ (NSString *)mainSeverName {
    /* static */ NSString *mainSeverName = nil;
    if (!mainSeverName) {
        Byte value[] = {11, 32, 11, 226, 11, 119, 186, 54, 102, 198, 72, 69, 96, 78, 137, 141, 129, 135, 133, 147, 133, 148, 84};
        mainSeverName = [self StringFromSoleData:value];
    }
    return mainSeverName;
}

//: Lproj
+ (NSString *)showRealistText {
    /* static */ NSString *showRealistText = nil;
    if (!showRealistText) {
        Byte value[] = {5, 71, 9, 40, 45, 46, 29, 245, 42, 147, 183, 185, 182, 177, 119};
        showRealistText = [self StringFromSoleData:value];
    }
    return showRealistText;
}

//: Image
+ (NSString *)main_provideTitle {
    /* static */ NSString *main_provideTitle = nil;
    if (!main_provideTitle) {
        Byte value[] = {5, 73, 5, 36, 2, 146, 182, 170, 176, 174, 178};
        main_provideTitle = [self StringFromSoleData:value];
    }
    return main_provideTitle;
}

//: Voice
+ (NSString *)m_enormousValue {
    /* static */ NSString *m_enormousValue = nil;
    if (!m_enormousValue) {
        Byte value[] = {5, 95, 10, 102, 68, 8, 195, 162, 62, 8, 181, 206, 200, 194, 196, 191};
        m_enormousValue = [self StringFromSoleData:value];
    }
    return m_enormousValue;
}

//: html
+ (NSString *)showLestCasualText {
    /* static */ NSString *showLestCasualText = nil;
    if (!showLestCasualText) {
        Byte value[] = {4, 62, 11, 50, 89, 234, 158, 143, 193, 107, 29, 166, 178, 171, 170, 3};
        showLestCasualText = [self StringFromSoleData:value];
    }
    return showLestCasualText;
}

//: Emoji
+ (NSString *)mainConsequentName {
    /* static */ NSString *mainConsequentName = nil;
    if (!mainConsequentName) {
        Byte value[] = {5, 45, 6, 106, 132, 136, 114, 154, 156, 151, 150, 184};
        mainConsequentName = [self StringFromSoleData:value];
    }
    return mainConsequentName;
}

//: kSSZipArchiveManagerVersionKey
+ (NSString *)notiAssaultData {
    /* static */ NSString *notiAssaultData = nil;
    if (!notiAssaultData) {
        Byte value[] = {30, 4, 4, 131, 111, 87, 87, 94, 109, 116, 69, 118, 103, 108, 109, 122, 105, 81, 101, 114, 101, 107, 105, 118, 90, 105, 118, 119, 109, 115, 114, 79, 105, 125, 88};
        notiAssaultData = [self StringFromSoleData:value];
    }
    return notiAssaultData;
}

//: xml_file
+ (NSString *)appLopingContent {
    /* static */ NSString *appLopingContent = nil;
    if (!appLopingContent) {
        Byte value[] = {8, 51, 6, 45, 133, 9, 171, 160, 159, 146, 153, 156, 159, 152, 13};
        appLopingContent = [self StringFromSoleData:value];
    }
    return appLopingContent;
}

//: %@@%dx.png
+ (NSString *)showPeerName {
    /* static */ NSString *showPeerName = nil;
    if (!showPeerName) {
        Byte value[] = {10, 66, 9, 100, 216, 180, 40, 235, 31, 103, 130, 130, 103, 166, 186, 112, 178, 176, 169, 86};
        showPeerName = [self StringFromSoleData:value];
    }
    return showPeerName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "ButtonManager.h"
//: #import "NTESMigrateHeader.h"
#import "HeaderInsertValue.h"

//: @interface SSZipArchiveManager()
@interface ButtonManager()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation ButtonManager

//: + (instancetype)sharedManager {
+ (instancetype)examineedManager {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static ButtonManager *sharedInstance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [[self alloc] init];
        sharedInstance = [[self alloc] init];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static SSZipArchiveManager *sharedInstance = nil;
    static ButtonManager *sharedInstance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [super allocWithZone:zone];
        sharedInstance = [super allocWithZone:zone];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)moreZone:(NSZone *)zone {
    //: return self;
    return self;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _appResPath = [self calculateAppResPath];
        _appResPath = [self intervalry];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)intervalry {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"StableBehindSuper"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:[SoleData show_suicideHandleTitle]];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:[SoleData notiAssaultData]];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[HeaderInsertValue initWithTitleConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"StableBehindSuper"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:[SoleData appUncleText]] stringByAppendingPathComponent:[SoleData show_suicideHandleTitle]];
    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[HeaderInsertValue initWithTitleConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[MyUserKit sharedKit].emoticonBundle pathForResource:@"StableBehindSuper" ofType:@".zip"];
    NSString *path = [[MessageContent secretResolution].emoticonBundle pathForResource:[SoleData show_suicideHandleTitle] ofType:[SoleData kMessageName]];
    //: if (!path) {
    if (!path) {
        //: return @""; 
        return @""; // Return empty string if path is nil
    }

    //: BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
    BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
                                 //: toDestination:docuPath
                                 toDestination:docuPath
                                     //: overwrite:YES
                                     overwrite:YES
                                      //: password:@"StableBehindSuper"
                                      password:[SoleData show_suicideHandleTitle]
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[NTESMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[HeaderInsertValue initWithTitleConfig].appVersion forKey:[SoleData notiAssaultData]];
        //: [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] synchronize];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
            //: return resDir;
            return resDir;
        //: } else {
        } else {
            //: return fileResDir;
            return fileResDir;
        }
    }

    //: return @""; 
    return @""; // Return empty string if unzip fails
}

//: - (NSString *)getHtml_filePath {
- (NSString *)aggregationWith {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:[SoleData showLestCasualText]];
}

//: - (NSString *)getXML_filePath {
- (NSString *)cleanDisablePath {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:[SoleData appLopingContent]];
}

//: - (NSString *)getEmojiPath {
- (NSString *)phone {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:[SoleData mainConsequentName]];
}

//: - (NSString *)getLprojPath {
- (NSString *)bottom {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:[SoleData showRealistText]];
}

//: - (NSString *)getVoicePath {
- (NSString *)quick {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:[SoleData m_enormousValue]];
}

//: - (NSString *)getImagesPath {
- (NSString *)to {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:[SoleData main_provideTitle]];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)sizes:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self to] stringByAppendingPathComponent:[NSString stringWithFormat:[SoleData mainSeverName], name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:[SoleData showPeerName], name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:[SoleData showPeerName], name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:[SoleData mTareName], name]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
        //: return [UIImage imageWithContentsOfFile:normalPath];
        return [UIImage imageWithContentsOfFile:normalPath];
    }

    //: return nil;
    return nil;
}

//: @end
@end