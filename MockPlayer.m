#import "MockPlayer.h"

@implementation MockPlayer

@synthesize scored;

-(void) score
{
  scored = YES;
}

-(void) setCurrentScore:(int)newScore
{
  currentScore = newScore;
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

@end
