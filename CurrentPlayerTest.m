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

@end
