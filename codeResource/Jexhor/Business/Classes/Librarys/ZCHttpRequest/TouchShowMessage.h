// __DEBUG__
// __CLOSE_PRINT__
//
//  TouchShowMessage.h
//  ZCBusinessCar
//
//  Created by peng on 2021/2/24.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <AFNetworking/AFNetworking.h>
#import <AFNetworking/AFNetworking.h>
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>

/**
 *  是否开启https SSL 验证
 *  @return YES为开启，NO为关闭
 */


/**
 *  SSL 证书名称，仅支持cer格式。“app.bishe.com.cer”,则填“app.bishe.com”
 */


//请求成功的回调block
//: typedef void(^ResponseSuccess)(id responseObject);
typedef void(^ResponseSuccess)(id responseObject);

//请求失败的回调block
//: typedef void(^ResponseFailed)(id responseObject ,NSError *error);
typedef void(^ResponseFailed)(id responseObject ,NSError *error);

//文件下载的成功回调block
//: typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);
typedef void(^DownloadSuccess)(NSURLResponse *response, NSURL *filePath);

//文件下载的失败回调block
//: typedef void(^DownloadFailed)( NSError *error);
typedef void(^DownloadFailed)( NSError *error);

//文件上传下载的进度block
//: typedef void (^HttpProgress)(NSProgress *progress);
typedef void (^HttpProgress)(NSProgress *progress);


//: @interface ZCHttpManager : NSObject
@interface TouchShowMessage : NSObject

/**
 管理者单例
 */
//: + (instancetype)sharedManager;
+ (instancetype)top;

//: @property (nonatomic, copy) NSString *lastLang;
@property (nonatomic, copy) NSString *lastLang;


/**
 get请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */

//: + (void)getWithUrl:(NSString *)urlStr
+ (void)gestureMessage:(NSString *)urlStr
            //: params:(NSDictionary *)params
            view:(NSDictionary *)params
            //: isShow:(BOOL)isShow
            fort:(BOOL)isShow
           //: success:(ResponseSuccess)success
           generate:(ResponseSuccess)success
            //: failed:(ResponseFailed)failed;
            file:(ResponseFailed)failed;

//: + (void)getWithUrl: (NSString *)urlStr
+ (void)status: (NSString *)urlStr
            //: params: (NSDictionary *)params
            comment: (NSDictionary *)params
            //: isShow: (BOOL)isShow
            object: (BOOL)isShow
         //: cacheTime: (int)cacheDuration
         rangeFailed: (int)cacheDuration
       //: mustResrush: (BOOL)mustResrush
       forwardBack: (BOOL)mustResrush
           //: success: (ResponseSuccess)success
           image: (ResponseSuccess)success
            //: failed: (ResponseFailed)failed;
            cacheState: (ResponseFailed)failed;




/**
 post请求

 @param urlStr 请求url
 @param params 参数
 @param success 成功回调
 @param failed 失败回调
 */
//: + (void)postWithUrl: (NSString *)urlStr
+ (void)at: (NSString *)urlStr
             //: params: (NSDictionary *)params
             length: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             information: (BOOL)isShow
            //: success: (ResponseSuccess)success
            object: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             touch: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)image: (NSString *)urlStr
             //: params: (NSDictionary *)params
             exhibit: (NSDictionary *)params
             //: isShow: (BOOL)isShow
             selected: (BOOL)isShow
          //: cacheTime: (int)cacheDuration
          chromatic: (int)cacheDuration
        //: mustResrush: (BOOL)mustResrush
        arrayOff: (BOOL)mustResrush
            //: success: (ResponseSuccess)success
            by: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             standardCell: (ResponseFailed)failed;

//: + (void)postWithUrl: (NSString *)urlStr
+ (void)session: (NSString *)urlStr
           //: checksum: (NSString *)checksum
           tab: (NSString *)checksum
              //: nonce: (NSString *)nonce
              color: (NSString *)nonce
            //: CurTime: (NSString *)CurTime
            beggarMyNeighborPolicy: (NSString *)CurTime
             //: params: (NSDictionary *)params
             genitor: (NSDictionary *)params
            //: success: (ResponseSuccess)success
            show: (ResponseSuccess)success
             //: failed: (ResponseFailed)failed;
             message: (ResponseFailed)failed;

/**
 * 上传文件
 *  @param URL 请求地址
 *  @param parameters 请求参数
 *  @param name              文件对应服务器上的字段
 *  @param filePath     文件本地的沙盒路径
 *  @param progress     上传进度信息
 *  @param success       请求成功的回调
 *  @param failed    请求失败的回调
 */
//: + (void)uploadFileWithURL:(NSString *)URL
+ (void)time:(NSString *)URL
               //: parameters:(id)parameters
               can:(id)parameters
                     //: name:(NSString *)name
                     pathShadow:(NSString *)name
                 //: filePath:(NSURL *)filePath
                 provider:(NSURL *)filePath
                 //: progress:(HttpProgress)progress
                 send:(HttpProgress)progress
                  //: success:(ResponseSuccess)success
                  view:(ResponseSuccess)success
                   //: failed:(ResponseFailed)failed;
                   diagonal:(ResponseFailed)failed;


/**
 * 上传单/多张图片
 * 注意：多张图片需要接口支持，有的服务接口只支持数组的第一个数据
 * @param URL  请求地址
 * @param parameters 请求参数
 * @param images 图片数组
 * @param progress 上传进度信息
 * @param success 请求成功的回调
 * @param failed 请求失败的回调
 */
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)item:(NSString *)URL
                 //: parameters:(id)parameters
                 progress:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     boundaryPhase:(NSArray<NSData *> *)images
                   //: progress:(HttpProgress)progress
                   textualMatter:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    with:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     button:(ResponseFailed)failed;



/**
 *  上传单/多张图片
 *
 *  @param URL        请求地址
 *  @param parameters 请求参数
 *  @param name       图片对应服务器上的字段
 *  @param images     图片数组
 *  @param fileNames  图片文件名数组, 可以为nil, 数组内的文件名默认为当前日期时间"yyyyMMddHHmmss"
 *  @param imageScale 图片文件压缩比 范围 (0.f ~ 1.f)
 *  @param imageType  图片文件的类型,例:png、jpg(默认类型)....
 *  @param progress   上传进度信息
 *  @param success    请求成功的回调
 *  @param failed    请求失败的回调
 *
 */

//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)progress:(NSString *)URL
                 //: parameters:(id)parameters
                 kind:(id)parameters
                       //: name:(NSString *)name
                       smart:(NSString *)name
                     //: images:(NSArray<UIImage *> *)images
                     visibleFailed:(NSArray<UIImage *> *)images
                  //: fileNames:(NSArray<NSString *> *)fileNames
                  appellative:(NSArray<NSString *> *)fileNames
                 //: imageScale:(CGFloat)imageScale
                 key:(CGFloat)imageScale
                  //: imageType:(NSString *)imageType
                  image:(NSString *)imageType
                   //: progress:(HttpProgress)progress
                   size:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    uploadViewFailed:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     signaling:(ResponseFailed)failed;



/// 新增
//: + (void)uploadImagesWithURL:(NSString *)URL
+ (void)imageAdd:(NSString *)URL
                 //: parameters:(id)parameters
                 ting:(id)parameters
                     //: images:(NSArray<NSData *> *)images
                     stateFailed:(NSArray<NSData *> *)images
                 //: imageNames:(NSArray<NSString *> *)imageNames
                 userRecent:(NSArray<NSString *> *)imageNames
                   //: progress:(HttpProgress)progress
                   behindAddFailed:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    recording:(ResponseSuccess)success
                     //: failed:(ResponseFailed)failed;
                     retention:(ResponseFailed)failed;




//: + (void)uploadVideoWithURL:(NSString *)URL
+ (void)numericalNumber:(NSString *)URL
                 //: parameters:(id)parameters
                 at:(id)parameters
                     //: images:(NSData *)videoData
                     stigmatizeProvider:(NSData *)videoData
                 //: coverImage:(NSData *)coverData
                 textAcross:(NSData *)coverData
                   //: progress:(HttpProgress)progress
                   tv:(HttpProgress)progress
                    //: success:(ResponseSuccess)success
                    nameIn:(ResponseSuccess)success
                    //: failed:(ResponseFailed)failed;
                    uploadCanTabFailed:(ResponseFailed)failed;


/**
 *  下载文件
 *
 *  @param URL      请求地址
 *  @param fileDir  文件存储目录(默认存储目录为Download)
 *  @param progress 文件下载的进度信息
 *  @param success  下载成功的回调(回调参数filePath:文件的路径)
 *  @param failed  下载失败的回调
 *
 *   返回NSURLSessionDownloadTask实例，可用于暂停继续，暂停调用suspend方法，开始下载调用resume方法
 */
//: + (void)downloadWithURL:(NSString *)URL
+ (void)smart:(NSString *)URL
                //: fileDir:(NSString *)fileDir
                imageLabel:(NSString *)fileDir
               //: progress:(HttpProgress)progress
               fixing:(HttpProgress)progress
                //: success:(void(^)(NSString *filePath))success
                hide:(void(^)(NSString *filePath))success
                 //: failed:(ResponseFailed)failed;
                 oPushailed:(ResponseFailed)failed;

//: @end
@end
