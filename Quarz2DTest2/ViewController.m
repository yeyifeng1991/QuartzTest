//
//  ViewController.m
//  Quarz2DTest2
//
//  Created by 叶子 on 2018/1/5.
//  Copyright © 2018年 叶义峰. All rights reserved.
//

#import "ViewController.h"

#import "ViewController.h"
#import "cyImageView.h"
@interface ViewController ()

@property (assign, nonatomic) UIImageView *iView;
@property (assign, nonatomic) cyImageView *cyiView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
     
     // 系统的图片视图
     UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
     imageView.image = [UIImage imageNamed:@"1.jpg"];
     [self.view addSubview:imageView];
     
     self.iView = imageView;
     */
    
    // 自定义的图片视图
    cyImageView * imageView = [[cyImageView alloc]init];
    imageView.image=[UIImage imageNamed:@"1.jpg"];
    imageView.frame=CGRectMake(100, 100, 100, 100);
    [self.view addSubview:imageView];
    self.cyiView=imageView;
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.backgroundColor = [UIColor cyanColor];
    [btn setTitle:@"切换图片" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 200, 100, 20);
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)btnClick
{
    UIImage * image = [UIImage imageNamed:@"2.jpg"];
    //    self.iView.image = image ;
    // 系统的UIimage可以替换。而自定义imageview不会变换，因为自定义的view要想换图片，需要重新绘制并渲染一次图片。所以在拿到替换图片的时候，需要重新绘制一次图片，重写setimage方法。
    self.cyiView.image = image;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


