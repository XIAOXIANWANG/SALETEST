//
//  WBMainTableViewCell.h
//  WBsale
//
//  Created by 王博 on 15/11/25.
//  Copyright © 2015年 王博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WBMainTableViewCell : UITableViewCell<UIScrollViewDelegate>

@property (nonatomic,strong) NSArray *menuDataArray;

@property (nonatomic,strong) UIView *fristView;

@property (nonatomic,strong) UIView *secView;

@property (nonatomic,strong) UIScrollView *mainScrollView;

@property (nonatomic,strong) UIPageControl *pageControl;

+ (instancetype)WBMainTableViewCellinitWithTableView:(UITableView*)tableView AndDataArray:(NSArray*)dataArray;
@end
