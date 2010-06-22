#import <UIKit/UIKit.h>

@class PingPongScorerViewController;

@interface PingPongScorerAppDelegate : NSObject <UIApplicationDelegate>
{
	UIWindow *window;
	PingPongScorerViewController *viewController;
}

@property(nonatomic, retain) IBOutlet UIWindow *window;
@property(nonatomic, retain) IBOutlet PingPongScorerViewController *viewController;

@end

