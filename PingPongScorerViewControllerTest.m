#import "PingPongScorerViewControllerTest.h"

@implementation PingPongScorerViewControllerTest

-(void) setUp
{
	controller = [[PingPongScorerViewController alloc] init];
}

-(void) tearDown
{
	//[controller release];
}

-(void) testScorePlayerOnePointUpdatesPlayerOneText
{
	controller.playerOneScore = [[UILabel alloc] init];

	[controller scorePlayerOnePoint:nil];
	
	STAssertEqualStrings(controller.playerOneScore.text, @"1", nil);
}

-(void) testScoreTwiceUpdatesPlayerOneTextToTwo
{
	controller.playerOneScore = [[UILabel alloc] init];
	
	[controller scorePlayerOnePoint:nil];
	[controller scorePlayerOnePoint:nil];
	
	STAssertEqualStrings(controller.playerOneScore.text, @"2", nil);
}

-(void) testScorePlayerTwoTwiceUpdatesPlayerTwoTextTwoTwo
{
	controller.playerTwoScore = [[UILabel alloc] init];
	
	[controller scorePlayerTwoPoint:nil];
	[controller scorePlayerTwoPoint:nil];
	
	STAssertEqualStrings(controller.playerTwoScore.text, @"2", nil);
}

@end
