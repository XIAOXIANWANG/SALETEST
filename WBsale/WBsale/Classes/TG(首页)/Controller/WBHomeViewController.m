//
//  WBHomeViewController.m
//  WBsale
//
//  Created by 王博 on 15/11/24.
//  Copyright © 2015年 王博. All rights reserved.
//

#import "WBHomeViewController.h"
#import "WBTestNavBar.h"

@interface WBHomeViewController ()
@property (nonatomic,strong) UITableView         *homeTableView;


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
    
    WBTestNavBar *bar = [WBTestNavBar dropdown];
    [self.view addSubview:bar];

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{



}
@end
