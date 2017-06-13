//
//  GifView.m
//  GifView
//
//  Created by qq on 2017/5/4.
//  Copyright © 2017年 qq. All rights reserved.
//

#import "GifView.h"

@interface GifView(){
    UIImageView* imageView;
}

@end

@implementation GifView

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        [self setup];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self setup];
    }
    return self;
}
-(instancetype)init{
    CGRect rect = CGRectMake(0, 0, 104, 11);
    self = [self initWithFrame:rect];
    return self;
}

-(void)setup{    
    _duration = 1.5;// 执行一次完整动画所需的时长
    self.backgroundColor = [UIColor clearColor];
    
    _gifArray = [NSArray arrayWithObjects:
                [UIImage imageNamed:@"1"],
                nil];
    
    _pauseImage = _gifArray[0];
    
    imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    
    imageView.image = _pauseImage;
    
    [self addSubview:imageView];
    
    self.stopped = YES;// YES: 没有播放，NO：正在播放
}
-(void)setStopped:(BOOL)stopped{
    _stopped = stopped;
    if(!stopped) { //  YES - 停止；NO - 播放
        imageView.animationImages = _gifArray; //动画图片数组
        imageView.animationDuration = _duration;
        imageView.animationRepeatCount = 0;  //动画重复次数，无限循环
        [imageView startAnimating];
    }else{
        [imageView stopAnimating];
        imageView.image = _pauseImage;

    }
}
@end
