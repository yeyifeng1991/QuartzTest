//
//  cyImageView.m
//  Quarztz2DTest
//
//  Created by 叶子 on 2018/1/5.
//  Copyright © 2018年 叶义峰. All rights reserved.
//

#import "cyImageView.h"

@implementation cyImageView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
// 在view的drawRect:方法中,才能正确的获取这个view的layer的图形上下文。
- (void)drawRect:(CGRect)rect {
    
    [self.image drawInRect:rect];
}

// 如果必须要进行一次重新绘制,那么也不要直接调用drawRect:方法,而是去调用setNeedsDisplay或者setNeedsDisplayInRect:。这两个方法内部会先创建一个图形上下文对象,然后调用drawRect:方法。
- (void)setImage:(UIImage *)image
{
    _image = image ;
    [self setNeedsDisplay];
}
@end
