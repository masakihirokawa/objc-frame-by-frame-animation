//
//  ViewController.m
//  FrameByFrameAnimation
//
//  Created by 廣川政樹 on 2013/04/05.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"
#import "FrameByFrameAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  //アニメーション開始
	[self startAnimationImage];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)startAnimationImage
{
  //画像のサイズと座標を定義
  NSInteger imageWidth = 85;
  NSInteger imageHeight = 120;
  NSInteger imageX = (self.view.frame.size.width / 2) - (imageWidth / 2);
  NSInteger imageY = (self.view.frame.size.height / 2) - (imageHeight / 2);
  CGRect rect = CGRectMake(imageX, imageY, imageWidth, imageHeight);
  //FrameByFrameAnimatonクラス初期化
  FrameByFrameAnimation *fbfAnimation = [[FrameByFrameAnimation alloc] init];
  //imageViewを初期化
  UIImageView *animationImageView = [[UIImageView alloc] initWithFrame:rect];
  //FrameByFrameAnimationクラスの setAnimatingクラス呼び出し
  //UIImageView, 総フレーム数, 画像ファイル名の接頭詞, アニメーション秒数, アニメーションリピート回数の順にパラメータを渡す
  [fbfAnimation setAnimating:animationImageView:14:@"frame":1.0:0];
  //アニメーション開始
  [animationImageView startAnimating];
  //animationImageViewをステージに追加
  [self.view addSubview:animationImageView];
}

@end
