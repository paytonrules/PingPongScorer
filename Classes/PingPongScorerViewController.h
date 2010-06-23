#import <UIKit/UIKit.h>

@interface PingPongScorerViewController : UIViewController 
{
	UILabel *playerOneScore;
}

-(void) scorePlayerOnePoint:(id) sender;
@property(nonatomic, retain) UILabel *playerOneScore;

@end

