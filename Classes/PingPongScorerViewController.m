#import "PingPongScorerViewController.h"

@implementation PingPongScorerViewController
@synthesize playerOneScore, playerTwoScore, playerOne, playerTwo;

-(void) updateScreen
{
  [playerOneScore setTitle:[NSString stringWithFormat:@"%d", playerOne.currentScore] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
  [playerTwoScore setTitle:[NSString stringWithFormat:@"%d", playerTwo.currentScore] forState:UIControlStateNormal & UIControlStateHighlighted & UIControlStateSelected];
}

-(void) scorePlayerOnePoint:(id) sender
{
  [playerOne score];
}

-(void) scorePlayerTwoPoint:(id) sender
{
  [playerTwo score];
}

-(void) viewDidLoad 
{
  [super viewDidLoad];
  [playerOne addObserver:self
              forKeyPath:@"currentScore"
                 options:NSKeyValueObservingOptionNew
                  context:nil];
  [playerTwo addObserver:self
              forKeyPath:@"currentScore"
                 options:NSKeyValueObservingOptionNew
                 context:nil];
}


-(void) observeValueForKeyPath:(NSString *) keyPath
                      ofObject:(id) object
                        change:(NSDictionary *) change
                       context:(void *) context
{
  [self updateScreen];
}

-(void) didReceiveMemoryWarning 
{
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

-(void) viewDidUnload 
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void)dealloc 
{
  [playerOne release];
  [playerTwo release];
  [playerOneScore release];
  [playerTwoScore release];
	[super dealloc];
}

@end
