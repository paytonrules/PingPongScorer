#import "PingPongScorerViewControllerTest.h"
#import "PingPongScorerViewController.h"

@implementation PingPongScorerViewControllerTest

-(void) testScorePlayerOnePointUpdatesPlayerOneText
{
	PingPongScorerViewController *controller = [[[PingPongScorerViewController alloc] init] autorelease];
	controller.playerOneScore = [[UILabel alloc] init];

	[controller scorePlayerOnePoint:nil];
	
	STAssertEqualStrings(controller.playerOneScore.text, @"1", nil);
}

-(void) testScoreTwiceUpdatesPlayerOneTextToTwo
{
	PingPongScorerViewController *controller = [[[PingPongScorerViewController alloc] init] autorelease];
	controller.playerOneScore = [[UILabel alloc] init];
	
	[controller scorePlayerOnePoint:nil];
	[controller scorePlayerOnePoint:nil];
	
	STAssertEqualStrings(controller.playerOneScore.text, @"2", nil);
}	

@end
