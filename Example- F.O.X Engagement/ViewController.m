//
//  ViewController.m
//  Example- F.O.X Engagement
//
//  Created by MMizogaki on 2016/05/18.
//  Copyright © 2016年 MMizogaki. All rights reserved.
//

#import "ViewController.h"
#import "FEGAdStateDelegate.h"
#import "FEGAdView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* placementId = @"";
    CGRect frame = CGRectMake(self.view.frame.size.width - 320,self.view.frame.size.height/2, 0, 0);
    FEGAdView* adView = [[FEGAdView alloc] initWithFrame:frame];
    adView.placementId = placementId;
    adView.size = FEG_ADVIEW_SIZE_320x50;
    [self.view addSubview:adView];
    [adView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void) onAdSuccess:(UIView *) view {
    NSLog(@"onAdSuccess delegate implement");
}

-(void) onAdFailed:(UIView *) view {
    NSLog(@"onAdFailed delegate implement");
}
-(void) onAdClicked:(UIView*) view {
    NSLog(@"onAdClicked delegate implement");
}
-(BOOL) onAdFallback:(UIView*) view {
    NSLog(@"onAdFallback delegate implement");
    return NO;
}

@end
