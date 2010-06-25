#import "MockPlayer.h"


@implementation MockPlayer

@synthesize scored;
@synthesize currentScore;

-(void) score
{
  scored = YES;
}

@end
