#import <Foundation/Foundation.h>
#import "Player.h"

@interface MockPlayer : NSObject<Player> {
  BOOL scored;
  int currentScore;
}

@property BOOL scored;
-(void) score;

@end
