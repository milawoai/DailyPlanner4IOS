//
//  UIImage+helpers.h
//  DailyPlanner
//
//  Created by zhou on 16/6/13.
//  Copyright © 2016年 zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (helpers)

+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color havingSize:(CGSize)size;
+ (UIImage *)screenshot;
- (UIImage *)bluredImage;
- (void)bluerdImageWithCompletion:(void(^)(UIImage *bluerdImage))completion;

@end
