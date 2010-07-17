#import "CurrentPlayer.h"

@implementation CurrentPlayer
@synthesize currentScore;

-(void) score
{
  self.currentScore = self.currentScore + 1;
}

@end
