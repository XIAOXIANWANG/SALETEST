//
//  WBMainTableViewCell.m
//  WBsale
//
//  Created by 王博 on 15/11/25.
//  Copyright © 2015年 王博. All rights reserved.
//

#import "WBMainTableViewCell.h"
#import "JZMTBtnView.h"

@implementation WBMainTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier AndDataArray:(NSArray*)dataArray{
    
    if (self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.menuDataArray = dataArray;
        
        [self AddallViews];
        
    }
    return self;
}

+ (instancetype)WBMainTableViewCellinitWithTableView:(UITableView*)tableView AndDataArray:(NSArray*)dataArray{
    
    static NSString *ID=@"maincell_ID";
    
    WBMainTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
    
    
    if (cell == nil) {
        
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID AndDataArray:(NSArray*)dataArray];
    }
    
    return cell;
    
}

- (void)AddallViews{
    

    _pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(screen_width/2-80, 160, 40, 20)];
    _pageControl.currentPage = 0;
    _pageControl.numberOfPages = 2;
    [self addSubview:_pageControl];
    
    [_pageControl setCurrentPageIndicatorTintColor:xnavigationBarColor];
    [_pageControl setPageIndicatorTintColor:[UIColor grayColor]];
    
    self.fristView  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 160)];
    self.secView  = [[UIView alloc] initWithFrame:CGRectMake(screen_width, 0, screen_width, 160)];
    
    self.mainScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, screen_width, 180)];
    self.mainScrollView.contentSize = CGSizeMake(2*screen_width, 180);
    self.mainScrollView.pagingEnabled = YES;
    self.mainScrollView.delegate = self;
    self.mainScrollView.showsHorizontalScrollIndicator = NO;
    
    [self.mainScrollView addSubview:self.fristView];
    [self.mainScrollView addSubview:self.secView];
    [self addSubview:self.mainScrollView];
    
    
    
    
    for (int i = 0; i < 16; i++) {
        if (i < 4) {
            CGRect frame = CGRectMake(i*screen_width/4, 0, screen_width/4, 80);
            NSString *title = [self.menuDataArray[i] objectForKey:@"title"];
            NSString *imageStr = [self.menuDataArray[i] objectForKey:@"image"];
            JZMTBtnView *btnView = [[JZMTBtnView alloc] initWithFrame:frame title:title imageStr:imageStr];
            btnView.tag = 10+i;
            [self.fristView addSubview:btnView];
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(OnTapBtnView:)];
            [btnView addGestureRecognizer:tap];
            
        }else if(i<8){
            CGRect frame = CGRectMake((i-4)*screen_width/4, 80, screen_width/4, 80);
            NSString *title = [self.menuDataArray[i] objectForKey:@"title"];
            NSString *imageStr = [self.menuDataArray[i] objectForKey:@"image"];
            JZMTBtnView *btnView = [[JZMTBtnView alloc] initWithFrame:frame title:title imageStr:imageStr];
            btnView.tag = 10+i;
            [self.fristView addSubview:btnView];
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(OnTapBtnView:)];
            [btnView addGestureRecognizer:tap];
        }else if(i < 12){
            CGRect frame = CGRectMake((i-8)*screen_width/4, 0, screen_width/4, 80);
            NSString *title = [self.menuDataArray[i] objectForKey:@"title"];
            NSString *imageStr = [self.menuDataArray[i] objectForKey:@"image"];
            JZMTBtnView *btnView = [[JZMTBtnView alloc] initWithFrame:frame title:title imageStr:imageStr];
            btnView.tag = 10+i;
            [self.secView addSubview:btnView];
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(OnTapBtnView:)];
            [btnView addGestureRecognizer:tap];
        }else{
            CGRect frame = CGRectMake((i-12)*screen_width/4, 80, screen_width/4, 80);
            NSString *title = [self.menuDataArray[i] objectForKey:@"title"];
            NSString *imageStr = [self.menuDataArray[i] objectForKey:@"image"];
            JZMTBtnView *btnView = [[JZMTBtnView alloc] initWithFrame:frame title:title imageStr:imageStr];
            btnView.tag = 10+i;
            [self.secView addSubview:btnView];
            UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(OnTapBtnView:)];
            [btnView addGestureRecognizer:tap];
        }
    }
    
    
    
    
    
}

#pragma mark - UIScrollViewDelegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat scrollViewW = scrollView.frame.size.width;
    CGFloat x = scrollView.contentOffset.x;
    int page = (x + scrollViewW/2)/scrollViewW;
    _pageControl.currentPage = page;
}

-(void)OnTapBtnView:(UITapGestureRecognizer *)sender{
    NSLog(@"tag:%ld",sender.view.tag);
}

@end
