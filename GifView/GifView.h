//
//  GifView.h
//  GifView
//
//  Created by qq on 2017/5/4.
//  Copyright © 2017年 qq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GifView : UIView

@property(assign,nonatomic)BOOL stopped;
@property(assign,nonatomic)CGFloat duration;// 动图执行周期
@property(copy,nonatomic)NSArray<UIImage*> *gifArray;// 要播放的动画序列
@property(strong,nonatomic)UIImage* pauseImage;// 暂停时显示的图片
@end
