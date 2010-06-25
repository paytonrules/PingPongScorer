#import "CurrentPlayerTest.h"
#import "CurrentPlayer.h"

@implementation CurrentPlayerTest

-(void) testPlayerStartsWithZeroScore
{
	NSObject<Player> *player = [[[CurrentPlayer alloc] init] autorelease];
  
  STAssertEquals(player.currentScore, 0, nil); 
}

@end
