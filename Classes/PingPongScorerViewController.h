#import <UIKit/UIKit.h>

@interface PingPongScorerViewController : UIViewController 
{
	UIButton *playerOneScore;
	UIButton *playerTwoScore;
}

-(void) scorePlayerOnePoint:(id) sender;
-(void) scorePlayerTwoPoint:(id) sender;
@property(nonatomic, retain) UIButton *playerOneScore;
@property(nonatomic, retain) UIButton *playerTwoScore;

@end

