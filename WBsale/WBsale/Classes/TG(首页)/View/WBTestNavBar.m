//
//  WBTestNavBar.m
//  WBsale
//
//  Created by 王博 on 15/11/25.
//  Copyright © 2015年 王博. All rights reserved.
//

#import "WBTestNavBar.h"

@implementation WBTestNavBar

+ (instancetype)dropdown
{
    return [[[NSBundle mainBundle] loadNibNamed:@"WBnavBar" owner:nil options:nil] firstObject];
}

- (void)awakeFromNib
{
    self.backgroundColor = xnavigationBarColor;
}

@end
