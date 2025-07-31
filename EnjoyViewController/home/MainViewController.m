//
//  ViewController.m
//  EnjoyViewController
//
//  Created by didi on 2025/7/27.
//

#import "MainViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"MainViewController:: viewDidLoad()");
    
    // 1. 创建一个 UIImageView
       UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 300, 200)];
       imageView.contentMode = UIViewContentModeScaleAspectFill;
       imageView.clipsToBounds = YES;
       imageView.backgroundColor = [UIColor lightGrayColor]; // 加载前的灰底背景
       [self.view addSubview:imageView];

       // 2. 使用 SDWebImage 加载网络图片
       NSURL *imageURL = [NSURL URLWithString:@"https://image.xunyou.com/image/201907/1563850242247.jpg"];
       [imageView sd_setImageWithURL:imageURL
                    placeholderImage:[UIImage imageNamed:@"placeholder"]
                             options:SDWebImageRetryFailed | SDWebImageLowPriority
                           completed:^(UIImage * _Nullable image, NSError * _Nullable error,
                                      SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
           if (error) {
               NSLog(@"图片加载失败: %@", error);
           } else {
               NSLog(@"图片加载成功，来自缓存类型: %ld", (long)cacheType);
           }
       }];
    
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"MainViewController:: viewDidAppear()");
}

- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"MainViewController:: viewDidDisappear()");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"MainViewController:: viewWillLayoutSubviews()");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"MainViewController:: viewDidLayoutSubviews()");
}


@end
