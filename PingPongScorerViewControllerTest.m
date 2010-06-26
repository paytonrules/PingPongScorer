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
  if (controller != nil) {
    [controller release];
  }
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

-(void) testPlayerOneIsReleasedWhenTheControllerIsReleased
{
  NSUInteger expectedRetainCount = 1;
  MockPlayer *player = [[MockPlayer alloc] init];
  controller.playerOne = player;
  
  [controller release];
  controller = nil;
  
  STAssertEquals([player retainCount], expectedRetainCount, nil);
  
  [player release];
}

-(void) testPlayerTwoIsReleasedWhenTheControllerIsReleased
{
  NSUInteger expectedRetainCount = 1;
  MockPlayer *player = [[MockPlayer alloc] init];
  controller.playerTwo = player;
  
  [controller release];
  controller = nil;
  
  STAssertEquals([player retainCount], expectedRetainCount, nil);
  
  [player release];
}

-(void) testUIButtonPlayerOneIsReleasedWhenTheControllerIsReleased
{
  NSUInteger expectedRetainCount = 1;
  UIButton *player = [[UIButton alloc] init];
  controller.playerOneScore = player;
  
  [controller release];
  controller = nil;
  
  STAssertEquals([player retainCount], expectedRetainCount, nil);
  
  [player release];
} 

-(void) testUIButtonPlayerTwoIsReleasedWhenTheControllerIsReleased
{
  NSUInteger expectedRetainCount = 1;
  UIButton *player = [[UIButton alloc] init];
  controller.playerTwoScore = player;
  
  [controller release];
  controller = nil;
  
  STAssertEquals([player retainCount], expectedRetainCount, nil);
  
  [player release];
} 
@end
