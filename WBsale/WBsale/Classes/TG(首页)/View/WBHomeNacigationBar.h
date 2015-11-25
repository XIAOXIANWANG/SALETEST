//
//  WBHomeNacigationBar.h
//  WBsale
//
//  Created by 王博 on 15/11/25.
//  Copyright © 2015年 王博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WBHomeNacigationBar : UIView
/**
 *  地点
 */
@property (nonatomic,strong) UILabel *leftTextLabel;
/**
 *  下拉箭头
 */
@property (nonatomic,strong) UIImageView *leftImageView;
/**
 *  左侧父控件
 */
@property (nonatomic,strong) UIView *leftView;
/**
 *  中间搜索框
 */
@property (nonatomic,strong) UISearchBar *midSearch;
/**
 *  右侧地图定位
 */
@property (nonatomic,strong) UIButton *rightMapBtn;

@end
