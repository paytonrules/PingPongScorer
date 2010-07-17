#import <Foundation/Foundation.h>
#import "Player.h"

@interface CurrentPlayer : NSObject<Player> {
  int currentScore;
}

@property int currentScore;

@end
