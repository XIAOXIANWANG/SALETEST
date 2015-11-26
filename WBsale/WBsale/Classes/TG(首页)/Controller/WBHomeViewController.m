//
//  WBHomeViewController.m
//  WBsale
//
//  Created by 王博 on 15/11/24.
//  Copyright © 2015年 王博. All rights reserved.
//

#import "WBHomeViewController.h"
#import "WBTestNavBar.h"
#import "WBMainTableViewCell.h"

@interface WBHomeViewController ()<UITableViewDataSource,UITabBarDelegate,UITableViewDelegate>

@property (nonatomic,strong) WBTestNavBar *navBar;

@property (nonatomic,strong) UITableView *mainTableView;

@property (nonatomic,strong) NSArray *menuDataArray;

@property (nonatomic,strong) NSArray *rushDataArray;


@end

@implementation WBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;

    [self setStyle];
    [self Allviews];
    

}

-(NSArray *)menuDataArray{
    
    if (!_menuDataArray) {
        
        NSArray *tempArray =  [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"menuData.plist" ofType:nil]];
        
        _menuDataArray = tempArray;
    }

    return _menuDataArray;
}

- (void) setStyle
{
    
    [self.navigationController.navigationBar setHidden:YES];
    
}


- (void)Allviews
{
    
    _navBar = [WBTestNavBar dropdown];
    
    self.mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 62, screen_width, screen_height-49-64) style:UITableViewStyleGrouped];
    self.mainTableView.dataSource = self;
    self.mainTableView.delegate=self;
    self.mainTableView.rowHeight =180;
    
    [self.view addSubview:self.mainTableView];
    [self.view addSubview:_navBar];

}

-(BOOL)prefersStatusBarHidden{

    return YES;

}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [self.navBar.midSearchBar resignFirstResponder];

}

//代理方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    
    
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    if (section == 0) {
        return 1;
    }else{
        
        return 4;
        
    }
    
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=nil;
    
    if (indexPath.section==0) {
        cell = [WBMainTableViewCell WBMainTableViewCellinitWithTableView:tableView AndDataArray:self.menuDataArray];
        
    }else{
    
    
    
    static NSString *mainCellID = @"mainCell";
    
    cell = [tableView dequeueReusableCellWithIdentifier:mainCellID];
    
    if (cell ==  nil) {
        cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:mainCellID];
    }
    
    cell.textLabel.text = @"xxxx";
    
    }
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 1;
    }else{
        return 5;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 5;
}

@end
