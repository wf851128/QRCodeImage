//
//  UIImage+QRCodeImage.m
//  二维码
//
//  Created by 王菲 on 16/1/26.
//  Copyright © 2016年 WangFei. All rights reserved.
//

#import "UIImage+QRCodeImage.h"

@implementation UIImage (QRCodeImage)

/**
 *  将信息转换成二维码
 *
 *  @param rect   输出UI View的尺寸
 *  @param string 需要转换的信息
 *
 *  @return 二维码图形
 */

+(UIImage *)imageCreatQRCodeImageWithFrame:(CGRect) rect String:(NSString *)string{
    
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    
    [filter setDefaults];
    
    [filter setValue:[string dataUsingEncoding:NSUTF8StringEncoding] forKey:@"inputMessage"];
    
    CIImage *ciImage = [filter outputImage];
    
    CIImage *clearImage = [self trainCIImageTo5TimesClearCIImage:ciImage];;
    
    return  [UIImage imageWithCIImage:clearImage];
}

/**
 *  将CIImage图片放大5倍
 *
 *  @param image 原CIImage文件
 *
 *  @return 放大5倍后的CIImage文件
 */

+(CIImage *) trainCIImageTo5TimesClearCIImage:(CIImage *) image{
    CIFilter *filter = [CIFilter filterWithName:@"CIFalseColor"];
    
    [filter setDefaults];
    
    [filter setValue:image forKey:@"inputImage"];
    
    [filter setValue:[CIColor colorWithRed:0.3 green:0.6 blue:0.8 alpha:1] forKey:@"inputColor0"];
    
    [filter setValue:[CIColor colorWithRed:1 green:1 blue:1 alpha:1] forKey:@"inputColor1"];
    
    CGAffineTransform affineTransform = CGAffineTransformMakeScale(5, 5);
    
    return [[filter outputImage] imageByApplyingTransform:affineTransform];
}

@end
