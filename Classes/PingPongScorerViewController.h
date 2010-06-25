#import <UIKit/UIKit.h>
#import "Player.h"

@interface PingPongScorerViewController : UIViewController 
{
	UIButton *playerOneScore;
	UIButton *playerTwoScore;
  NSObject<Player> *playerOne;
}

-(void) scorePlayerOnePoint:(id) sender;
-(void) scorePlayerTwoPoint:(id) sender;
@property(nonatomic, retain) NSObject<Player> *playerOne;
@property(nonatomic, retain) UIButton *playerOneScore;
@property(nonatomic, retain) UIButton *playerTwoScore;

@end

