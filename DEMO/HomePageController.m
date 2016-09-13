//
//  HomePageController.m
//  DEMO
//
//  Created by BearClawr on 16/9/13.
//  Copyright © 2016年 范涛. All rights reserved.
//

#import "HomePageController.h"
#import "AddView.h"

@interface HomePageController ()
{
    AddView *_addView;
}
@end

@implementation HomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor grayColor];
    
    [self setupNavigationBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- 导航条设置
- (void)setupNavigationBar{
    self.navigationItem.title=@"首页";
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                             target:self
                             action:@selector(barButtonSystemItemAdd)];
}

#pragma mark- 导航条按钮绑定的方法
- (void)barButtonSystemItemAdd{
    NSLog(@"导航条add响应");
    _addView=[[AddView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UIWindow *window=[[UIApplication sharedApplication] delegate].window;
    [window addSubview:_addView];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
