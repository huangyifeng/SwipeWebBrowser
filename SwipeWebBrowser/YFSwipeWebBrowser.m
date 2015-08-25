//
//  YFSwipeWebBrowser.m
//  SwipeWebBrowser
//
//  Created by huang yifeng on 15/8/25.
//  Copyright (c) 2015年 hyf. All rights reserved.
//

#import "YFSwipeWebBrowser.h"

@interface YFSwipeWebBrowser ()

@property(nonatomic, strong)UIImageView *currentShot;


- (void)edgePanHandler:(UIScreenEdgePanGestureRecognizer *)edgePan;
- (void)initViewComponent;

@end

@implementation YFSwipeWebBrowser

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self initViewComponent];
    }
    return self;
}

#pragma mark - private

- (void)initViewComponent
{
    UIScreenEdgePanGestureRecognizer *edgePan = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(edgePanHandler:)];
    [self addGestureRecognizer:edgePan];
}


@end
