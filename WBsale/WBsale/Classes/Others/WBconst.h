//
//  WBconst.h
//  WBsale
//
//  Created by 王博 on 15/11/25.
//  Copyright © 2015年 王博. All rights reserved.

/**
 *  获得RGB颜色
 *
 */
#define RGBA(r, g, b, a)                    [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r, g, b)                        RGBA(r, g, b, 1.0f)

#define xnavigationBarColor RGB(33, 192, 174)
#define separaterColor RGB(200, 199, 204)

/**
 *  屏幕大小尺寸
 */
#define screen_width [UIScreen mainScreen].bounds.size.width
#define screen_height [UIScreen mainScreen].bounds.size.height
