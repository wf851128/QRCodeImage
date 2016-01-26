//
//  UIImage+QRCodeImage.h
//  二维码
//
//  Created by 王菲 on 16/1/26.
//  Copyright © 2016年 WangFei. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QRCodeImage)
/**
 *  将信息转换成二维码
 *
 *  @param rect   输出UI View的尺寸
 *  @param string 需要转换的信息
 *
 *  @return 二维码图形
 */
+(UIImage *)imageCreatQRCodeImageWithFrame:(CGRect) rect String:(NSString *)string;

@end
