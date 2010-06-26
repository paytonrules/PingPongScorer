#import "PingPongScorerViewControllerTest.h"
#import "MockPlayer.h"

@implementation PingPongScorerViewControllerTest

-(void) assertOwnedObjectisReleased: (NSObject *) object
{
  [object retain];  // Retain the object to guarantee we own it
  NSUInteger expectedRetainCount =  [object retainCount] - 1;
  
  [controller release];
  controller = nil;
  
  STAssertEquals([object retainCount], expectedRetainCount, nil);
  
  [object release];
} 

-(void) setUp
{
	controller = [[PingPongScorerViewController alloc] init];
  controller.playerOneScore = [[[UIButton alloc] init] autorelease];
  controller.playerTwoScore = [[[UIButton alloc] init] autorelease];
  controller.playerOne = [[[MockPlayer alloc] init] autorelease];
  controller.playerTwo = [[[MockPlayer alloc] init] autorelease];
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
	
  STAssertEqualStrings(controller.playerOneScore.currentTitle, @"10", nil);
}

-(void) testScorePlayerTwoPointUpdatesPlayerTwoText
{
  MockPlayer *player = [[[MockPlayer alloc] init] autorelease];
  [player setCurrentScore: 6];
  controller.playerTwo = player;
  
  [controller scorePlayerTwoPoint:nil];
	
	STAssertEqualStrings(controller.playerTwoScore.currentTitle, @"6", nil);
}

-(void) testPlayerOneIsReleasedWhenTheControllerIsReleased
{
  [self assertOwnedObjectisReleased: controller.playerOne];
}

-(void) testPlayerTwoIsReleasedWhenTheControllerIsReleased
{
  [self assertOwnedObjectisReleased: controller.playerTwo];
}

-(void) testUIButtonPlayerOneIsReleasedWhenTheControllerIsReleased
{
  [self assertOwnedObjectisReleased: controller.playerOneScore];
}

-(void) testUIButtonPlayerTwoIsReleasedWhenTheControllerIsReleased
{
  [self assertOwnedObjectisReleased: controller.playerTwoScore];
} 
@end
