#import "PingPongScorerViewControllerTest.h"
#import "MockPlayer.h"

@implementation PingPongScorerViewControllerTest

-(void) setUp
{
	controller = [[PingPongScorerViewController alloc] init];
  controller.playerOneScore = [[[UIButton alloc] init] autorelease];
  controller.playerTwoScore = [[[UIButton alloc] init] autorelease];
}

-(void) tearDown
{
	[controller release];
}

-(void) testPlayerOneIsScored
{
  MockPlayer *player = [[[MockPlayer alloc] init] autorelease];
  controller.playerOne = player;
  
  [controller scorePlayerOnePoint:nil];
  
  STAssertTrue(player.scored, @"Player should have scored, but didn't.");
}

-(void) testScorePlayerOnePointUpdatesPlayerOneText
{ 
  MockPlayer *player = [[[MockPlayer alloc] init] autorelease];
  [player setCurrentScore: 10];
  controller.playerOne = player;
  
  [controller scorePlayerOnePoint:nil];
	
  STAssertEqualStrings(controller.playerOneScore.titleLabel.text, @"10", nil);
}

-(void) testScorePlayerTwoPointUpdatesPlayerTwoText
{
  MockPlayer *player = [[[MockPlayer alloc] init] autorelease];
  [player setCurrentScore: 6];
  controller.playerTwo = player;
  
  [controller scorePlayerTwoPoint:nil];
	
	STAssertEqualStrings(controller.playerTwoScore.titleLabel.text, @"6", nil);
}  
  
@end
