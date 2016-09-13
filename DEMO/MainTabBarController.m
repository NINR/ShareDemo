//
//  MainTabBarController.m
//  DEMO
//
//  Created by BearClawr on 16/9/13.
//  Copyright © 2016年 范涛. All rights reserved.
//

#import "MainTabBarController.h"
#import "HomePageController.h"
#import "PersonController.h"


@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- 创建子视图控制器对象
- (void)createViewController{
    HomePageController *homePageController =[[HomePageController alloc]init];
    NSDictionary *homePageDic=[NSDictionary dictionaryWithTitleValue:@"首页"
                                                           WithImage:[UIImage imageNamed:@"homepage_unselected.png"]
                                                     WithSelectImage:[UIImage imageNamed:@"homepage_selected.png"]];
    [self setupChildrenViewControllerOfItem:homePageController
                             WithDictionary:homePageDic];
    
    PersonController *personController=[[PersonController alloc]init];
    NSDictionary *personDic=[NSDictionary dictionaryWithTitleValue:@"个人中心"
                                                         WithImage:[UIImage imageNamed:@"personal _unselected.png"]
                                                   WithSelectImage:[UIImage imageNamed:@"personal _selected.png"]];
    [self setupChildrenViewControllerOfItem:personController
                             WithDictionary:personDic];
}

#pragma mark- 设置子视图控制的tabBarItem
- (void)setupChildrenViewControllerOfItem:(UIViewController *)controller WithDictionary:(NSDictionary *)itemDic{
    UINavigationController *navigationController=[[UINavigationController alloc]initWithRootViewController:controller];
    navigationController.tabBarItem.title=[itemDic objectForKey:@"title"];
    navigationController.tabBarItem.image=[itemDic objectForKey:@"image"];
    navigationController.tabBarItem.selectedImage=[itemDic objectForKey:@"selectImage"];
    [self addChildViewController:navigationController];
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
