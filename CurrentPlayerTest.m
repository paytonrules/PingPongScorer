#import "CurrentPlayerTest.h"
#import "CurrentPlayer.h"

@implementation CurrentPlayerTest

-(void) testPlayerStartsWithZeroScore
{
	NSObject<Player> *player = [[[CurrentPlayer alloc] init] autorelease];
  
  STAssertEquals(player.currentScore, 0, nil); 
}

-(void) testPlayerCurrentScoreGoesUpOneOnAScore
{
  NSObject<Player> *player = [[[CurrentPlayer alloc] init] autorelease];
  
  [player score];
  
  STAssertEquals(player.currentScore, 1, nil);
}

-(void) testScoringPlayerTwiceIncrementsTwice
{
  NSObject<Player> *player = [[[CurrentPlayer alloc] init] autorelease];
  
  [player score];
  [player score];
  
  STAssertEquals(player.currentScore, 2, nil);
}
@end
