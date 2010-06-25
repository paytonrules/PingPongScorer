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

-(void) testScorePlayerOnePointUpdatesPlayerOneText
{ 
  [controller scorePlayerOnePoint:nil];
	
  STAssertEqualStrings(controller.playerOneScore.titleLabel.text, @"1", nil);
}

-(void) testScoreTwiceUpdatesPlayerOneTextToTwo
{
	[controller scorePlayerOnePoint:nil];
	[controller scorePlayerOnePoint:nil];
	
	STAssertEqualStrings(controller.playerOneScore.titleLabel.text, @"2", nil);
}

-(void) testScorePlayerTwoTwiceUpdatesPlayerTwoTextTwoTwo
{
	[controller scorePlayerTwoPoint:nil];
	[controller scorePlayerTwoPoint:nil];
	
	STAssertEqualStrings(controller.playerTwoScore.titleLabel.text, @"2", nil);
}

-(void) testPlayerOneIsScored
{
  MockPlayer *player = [[[MockPlayer alloc] init] autorelease];
  controller.playerOne = player;
  
  [controller scorePlayerOnePoint:nil];
  
  STAssertTrue(player.scored, @"Player should have scored, but didn't.");
}
  
  
@end
