#GifView

一个 gif 动画显示组件，允许在指定时间内播放动画序列，无限循环，支持停止、播放。

## 用法

GifView 支持以下属性：

* BOOL stopped：表示动画的播放、停止状态。如果将 stopped 设置为 NO，动画开始，设置为 YES，动画停止。
* CGFloat duration：动图序列播放一次需要的时间周期，秒
* UIImage* pauseImage：暂停时显示的图片