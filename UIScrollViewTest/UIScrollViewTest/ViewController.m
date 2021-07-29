//
//  ViewController.m
//  UIScrollViewTest
//
//  Created by apple on 16/2/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView * scrollView = [[UIScrollView alloc]initWithFrame:self.view.frame];
    UIImageView * imageView = [[UIImageView alloc]initWithFrame:CGRectMake(40, 50, 240, 400)];
    imageView.image = [UIImage imageNamed:@"image"];
    [scrollView addSubview:imageView];
    scrollView.contentSize=CGSizeMake(self.view.frame.size.width*2, self.view.frame.size.height*2);
    scrollView.bounces=YES;
    scrollView.alwaysBounceHorizontal=YES;
    scrollView.alwaysBounceVertical =YES;
    scrollView.pagingEnabled=YES;
    scrollView.showsHorizontalScrollIndicator=YES;
    scrollView.showsVerticalScrollIndicator=YES;
    scrollView.indicatorStyle=UIScrollViewIndicatorStyleBlack;
    scrollView.scrollsToTop=YES;
    scrollView.delegate=self;
    
    
    scrollView.minimumZoomScale =0.5;
    scrollView.maximumZoomScale =2.0;
    scrollView.bouncesZoom  =YES;
    [self.view addSubview:scrollView];
}

//滚动视图将要滑动到顶端时触发的方法
-(BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    return YES;
}
//滚动视图已经滚动到顶端时触发的方法
-(void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    
}
//将要开始拖动滚动视图时触发的方法
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
}
//滚动视图将要结束拖动时触发的方法
-(void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    
}
//滚动视图将要减速时触发的方法
-(void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    
}
//滚动视图将要缩放时触发的方法
-(void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view{
    
}
//滚动视图已经缩放时触发的方法
-(void)scrollViewDidZoom:(UIScrollView *)scrollView{
    
}
//滚动视图已经结束拖拽时触发的方法
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
}
//滚动视图已经结束减速时触发的方法
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
}
//滚动视图滚动动画结束时调用
-(void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    
}
//滚动视图开始滚动时调用
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
}
//设置进行缩放的子视图
-(UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    return scrollView.subviews.firstObject;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
