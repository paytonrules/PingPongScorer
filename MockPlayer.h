#import <Foundation/Foundation.h>
#import "Player.h"

@interface MockPlayer : NSObject<Player> {
  BOOL scored;
}

@property BOOL scored;
-(void) score;

@end
