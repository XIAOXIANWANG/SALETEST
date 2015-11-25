//
//  WBHomeNacigationBar.m
//  WBsale
//
//  Created by 王博 on 15/11/25.
//  Copyright © 2015年 王博. All rights reserved.
//

#import "WBHomeNacigationBar.h"

@implementation WBHomeNacigationBar

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        [self addAllView];
        
    }
    return self;
}

- (void)addAllView{
    
    self.backgroundColor = xnavigationBarColor;
    
     CGFloat margin     = 26;
    

     CGFloat  X2leftView   = 0;
     CGFloat  Y2leftView   = 0;
     CGFloat  W2leftView   = 100;
     CGFloat  H2leftView   = 64;
    
    CGRect fram2leftView = CGRectMake(X2leftView, Y2leftView, W2leftView, H2leftView);
    
    self.leftView = [[UIView alloc]initWithFrame:fram2leftView];
    

    CGFloat  X2leftTextLabel   = 0;
    CGFloat  Y2leftTextLabel   = margin;
    CGFloat  W2leftTextLabel   = 60;
    CGFloat  H2leftTextLabel   = 25;
    CGRect frame2LeftTextLabel = CGRectMake(X2leftTextLabel, Y2leftTextLabel, W2leftTextLabel, H2leftTextLabel);
    
  self.leftTextLabel = [[UILabel alloc]initWithFrame:frame2LeftTextLabel];
  self.leftTextLabel.text= @"哈尔滨";
  self.leftTextLabel.textColor = [UIColor whiteColor];
  self.leftTextLabel.textAlignment = NSTextAlignmentCenter;
    self.leftTextLabel.font = [UIFont boldSystemFontOfSize:15];
    
    
    CGFloat  X2leftImageView = CGRectGetMaxX(self.leftTextLabel.frame) ;
    CGFloat  H2leftImageView = 10 ;
    CGFloat  Y2leftImageView = (self.frame.size.height -  H2leftImageView)*0.5+ H2leftImageView *0.5;
    CGFloat  W2leftImageView = 13 ;
   
    
    CGRect fram2leftImageView =CGRectMake(X2leftImageView, Y2leftImageView, W2leftImageView, H2leftImageView);
  
    self.leftImageView = [[UIImageView alloc]initWithFrame:fram2leftImageView];
    self.leftImageView.image  = [UIImage imageNamed:@"icon_homepage_downArrow"];
    
    
    [self.leftView addSubview:self.leftImageView];
    [self.leftView addSubview:self.leftTextLabel];
    
    CGFloat  W2rightMapBtn = 42;
    CGFloat  H2rightMapBtn = 30;
    CGFloat  X2rightMapBtn = screen_width-W2rightMapBtn;
    CGFloat  Y2rightMapBtn = (self.frame.size.height -  H2rightMapBtn)*0.5+ H2rightMapBtn *0.5;
    
    
    self.rightMapBtn  =  [UIButton buttonWithType:UIButtonTypeCustom];
    self.rightMapBtn.frame = CGRectMake(X2rightMapBtn, 24, W2rightMapBtn, H2rightMapBtn);
    
    [self.rightMapBtn setImage:[UIImage imageNamed:@"icon_homepage_map_old"] forState:UIControlStateNormal];
    
    
    self.midSearch =[[UISearchBar alloc]initWithFrame:CGRectMake(120, 26, 200, 30)];
    self.midSearch. backgroundColor =xnavigationBarColor;
    
    
    UIImage* img=[UIImage imageNamed:@"bg_login_textfield"];//原图
    UIEdgeInsets edge=UIEdgeInsetsMake(10, 10, 10,10);
//    UIImageResizingModeStretch：拉伸模式，通过拉伸UIEdgeInsets指定的矩形区域来填充图片
//    UIImageResizingModeTile：平铺模式，通过重复显示UIEdgeInsets指定的矩形区域来填充图
   img= [img resizableImageWithCapInsets:edge resizingMode:UIImageResizingModeStretch];
    self.midSearch.backgroundImage = img;
     self.midSearch.placeholder = @"输入需要搜索的城市";
    
    
    self.midSearch.backgroundColor=xnavigationBarColor;
//    self.midSearch.barStyle =UIBarStyleBlack;
    
    

    [self addSubview:self.rightMapBtn];
    [self addSubview:self.leftView];
    [self addSubview:self.midSearch];


}



@end
