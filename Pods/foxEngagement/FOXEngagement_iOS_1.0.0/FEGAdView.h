//
//  FEGBannerView.h
//  BigBenCore
//
//  Created by 呉 維 on 2016/02/10.
//  Copyright © 2016年 CyberZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FEGAdStateDelegate.h"

typedef NS_ENUM (NSUInteger, FEG_ADVIEW_SIZE) {
    FEG_ADVIEW_SIZE_112x112 = 1,
    FEG_ADVIEW_SIZE_300x250,
    FEG_ADVIEW_SIZE_320x50,
    FEG_ADVIEW_SIZE_320x100,
    FEG_ADVIEW_SIZE_336x280,
};

@interface FEGAdView : UIView

@property NSString* _Nonnull placementId;
@property FEG_ADVIEW_SIZE size;
@property (weak) id<FEGAdBannerStateDelegate> _Nullable adStateDelegate;

// public
-(void) show;

@end
