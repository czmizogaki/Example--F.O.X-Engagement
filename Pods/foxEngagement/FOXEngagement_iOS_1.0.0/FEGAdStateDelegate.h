#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol FEGAdBannerStateDelegate<NSObject>

@optional
-(void) onAdSuccess:(UIView*) view;
-(void) onAdFailed:(UIView*) view;
-(void) onAdClicked:(UIView*) view;
-(BOOL) onAdFallback:(UIView*) view;

@end