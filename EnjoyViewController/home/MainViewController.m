//
//  ViewController.m
//  EnjoyViewController
//
//  Created by didi on 2025/7/27.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"MainViewController:: viewDidLoad()");
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
