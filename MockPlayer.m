#import "MockPlayer.h"

@implementation MockPlayer

@synthesize scored;
@synthesize currentScore;

-(void) score
{
  scored = YES;
}

-(int) currentScore
{
  if (scored) {
    return currentScore;
  }
  else {
    return 0;
  }
}

-(void) setCurrentScore:(int) newScore
{
  currentScore = newScore;
  [self didChangeValueForKey:@"currentScore"];
}

@end
