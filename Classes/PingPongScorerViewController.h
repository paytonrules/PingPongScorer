#import <UIKit/UIKit.h>
#import "Player.h"

@interface PingPongScorerViewController : UIViewController 
{
	IBOutlet UIButton *playerOneScore;
	IBOutlet UIButton *playerTwoScore;
  IBOutlet NSObject<Player> *playerOne;
  IBOutlet NSObject<Player> *playerTwo;
}

-(IBAction) scorePlayerOnePoint:(id) sender;
-(IBAction) scorePlayerTwoPoint:(id) sender;
@property(nonatomic, retain) NSObject<Player> *playerOne;
@property(nonatomic, retain) NSObject<Player> *playerTwo;
@property(nonatomic, retain) UIButton *playerOneScore;
@property(nonatomic, retain) UIButton *playerTwoScore;

@end

