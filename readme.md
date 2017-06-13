# GifView

一个 gif 动画显示组件，允许在指定时间内播放动画序列，无限循环，支持停止、播放。

## 用法

```swift

// 创建 GifView实例
    self.gifView = [[GifView alloc]initWithFrame:CGRectMake(100, 200, 104, 11)];
    [self.view addSubview:self.gifView];
    
    // 加载动画图片序列
    self.gifView.gifArray = [NSArray arrayWithObjects:
                 [UIImage imageNamed:@"1"],
                 [UIImage imageNamed:@"2"],
                 [UIImage imageNamed:@"3"],
                 [UIImage imageNamed:@"4"],
                 [UIImage imageNamed:@"5"],
                 [UIImage imageNamed:@"6"],
                 [UIImage imageNamed:@"7"],
                 [UIImage imageNamed:@"8"],
                 [UIImage imageNamed:@"9"],
                 [UIImage imageNamed:@"10"],
                 nil];
    // 设置动画时长
    self.gifView.duration=0.85;
    // 开始播动画
    self.gifView.stopped = NO;// YES 暂停
```