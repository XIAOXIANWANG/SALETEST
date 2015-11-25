//
//  WBHomeViewController.m
//  WBsale
//
//  Created by 王博 on 15/11/24.
//  Copyright © 2015年 王博. All rights reserved.
//

#import "WBHomeViewController.h"
#import "WBHomeNacigationBar.h"
#import "WBTestNavBar.h"

@interface WBHomeViewController ()
@property (nonatomic,strong) UITableView         *homeTableView;
@property (nonatomic,strong) WBHomeNacigationBar *wbhomenavigationbar;


@end

@implementation WBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setStyle];
    
    [self Allviews];
}

- (void) setStyle
{
    
    [self.navigationController.navigationBar setHidden:YES];
    
}

- (void)Allviews
{
//    CGRect myBarFrame = CGRectMake(0, 0,screen_width , 64);
//    
//    
//    _wbhomenavigationbar = [[WBHomeNacigationBar alloc]initWithFrame:myBarFrame];
//
//    [self.view addSubview:_wbhomenavigationbar];
    
    WBTestNavBar *bar = [WBTestNavBar dropdown];
    [self.view addSubview:bar];

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self.wbhomenavigationbar.midSearch resignFirstResponder];


}
@end
