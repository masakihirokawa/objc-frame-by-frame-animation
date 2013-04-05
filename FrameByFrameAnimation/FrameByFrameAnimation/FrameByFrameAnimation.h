//
//  FrameByFrameAnimation.h
//  FrameByFrameAnimation
//
//  Created by 廣川政樹 on 2013/04/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FrameByFrameAnimation : UIImageView

- (NSArray *)animationImages:(NSMutableArray *)animationImageNameList;
- (void)setAnimating:(UIImageView *)animationImageView :(int)animationImageNum :(NSString *)animationImageSuffix :(float)animationDuration :(int)animationRepeatCount;
+ (UIImage *)getUIImageFromResources:(NSString*)fileName ext:(NSString*)ext;

@end
