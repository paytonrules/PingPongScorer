#import <UIKit/UIKit.h>

@interface PingPongScorerViewController : UIViewController 
{
	UILabel *playerOneScore;
	UILabel *playerTwoScore;
}

-(void) scorePlayerOnePoint:(id) sender;
-(void) scorePlayerTwoPoint:(id) sender;
@property(nonatomic, retain) UILabel *playerOneScore;
@property(nonatomic, retain) UILabel *playerTwoScore;

@end

