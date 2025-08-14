// __DEBUG__
// __CLOSE_PRINT__
//
//  CollectionView.h
//  Kitalker
//
//  Created by 刘 波 on 12-8-9.
//
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @class KICropImageMaskView;
@class ImaginationImageView;
//: @interface KICropImageView : UIView <UIScrollViewDelegate> {
@interface CollectionView : UIView <UIScrollViewDelegate> {
    //: @private
    @private
    //: UIScrollView *_scrollView;
    UIScrollView *_scrollView;
    //: UIImageView *_imageView;
    UIImageView *_imageView;
    //: KICropImageMaskView *_maskView;
    ImaginationImageView *_maskView;
    //: UIImage *_image;
    UIImage *_image;
    //: UIEdgeInsets _imageInset;
    UIEdgeInsets _imageInset;
    //: CGSize _cropSize;
    CGSize _cropSize;
}

//: - (void)setImage:(UIImage *)image;
- (void)setComment:(UIImage *)image;
//: - (void)setCropSize:(CGSize)size;
- (void)setInfo:(CGSize)size;

//: - (UIImage *)cropImage;
- (UIImage *)userOf;

//: @end
@end