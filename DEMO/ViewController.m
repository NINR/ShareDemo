//
//  ViewController.m
//  DEMO
//
//  Created by 123 on 16/9/12.
//  Copyright © 2016年 范涛. All rights reserved.
//

#import "ViewController.h"
#import <ShareSDK/ShareSDK.h>
#import <ShareSDKUI/ShareSDK+SSUI.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *sinaButton=[UIButton buttonWithType:UIButtonTypeSystem];
    sinaButton.bounds=CGRectMake(0, 0, 40, 20);
    sinaButton.center=CGPointMake(self.view.center.x, self.view.center.y);
    [sinaButton setTitle:@"Sina" forState:UIControlStateNormal];
    [sinaButton addTarget:self action:@selector(shareSina) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sinaButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- sinaButton Method
- (void)shareSina{
    NSLog(@"shareSina");
    NSMutableDictionary *shareParams=[NSMutableDictionary dictionary];
    [shareParams SSDKSetupShareParamsByText:_shareParamsText
                                     images:_shareParamsImage
                                        url:_shareParemsURL
                                      title:_shareParamsTitle
                                       type:SSDKContentTypeAuto];
    //进行分享
    [ShareSDK showShareActionSheet:nil
                             items:nil
                       shareParams:shareParams
               onShareStateChanged:^(SSDKResponseState state, SSDKPlatformType platformType, NSDictionary *userData, SSDKContentEntity *contentEntity, NSError *error, BOOL end) {
                   switch (state) {
                       case SSDKResponseStateSuccess:
                       {
                           //分享成功
                       }
                           break;
                       case SSDKResponseStateFail:
                       {
                           //分享失败
                       }
                           break;
                           
                       default:
                           break;
                   }
    }];
}
@end
