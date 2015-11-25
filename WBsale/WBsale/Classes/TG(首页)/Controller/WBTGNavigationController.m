//
//  WBTGNavigationController.m
//  WBsale
//
//  Created by 王博 on 15/11/24.
//  Copyright © 2015年 王博. All rights reserved.
//
#define RGBA(r, g, b, a)                    [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r, g, b)                        RGBA(r, g, b, 1.0f)

#import "WBTGNavigationController.h"

@interface WBTGNavigationController ()

@end

@implementation WBTGNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self Style2Nav];
    

}

- (void) Style2Nav{
    
   
    self.tabBarItem.selectedImage = [[UIImage imageNamed:@"icon_tabbar_homepage_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.tabBarItem.image = [[UIImage imageNamed:@"icon_tabbar_homepage"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.tabBarItem.title = @"首页";
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
