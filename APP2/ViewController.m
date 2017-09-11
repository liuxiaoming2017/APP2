//
//  ViewController.m
//  APP2
//
//  Created by 黄柳姣 on 16/11/8.
//  Copyright © 2016年 Obally. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"跳转" forState:UIControlStateNormal];
    btn.frame=CGRectMake(150, 300, 100, 100);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    self.view.backgroundColor=[UIColor redColor];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)btnAction
{
     NSURL *url=[NSURL URLWithString:@"itms-services://?action=download-manifest&url=https://eoffice.zjtlcb.com:10444/nqsky-meap-front/plistservlet/8a83579057fbeee4015843c37d593abf.plist"];
    if([[UIApplication sharedApplication] canOpenURL:url]){
        //NSDictionary *options = @{UIApplicationOpenURLOptionUniversalLinksOnly : @NO};
       
        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:^(BOOL success) {
            if(success){
                NSLog(@"haha");
            }else{
                NSLog(@"失败了");
            }
        }];
       // [[UIApplication sharedApplication] openURL:url];
    }else{
        NSLog(@"失败");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
