#import "PingPongScorerViewController.h"

@implementation PingPongScorerViewController
@synthesize playerOneScore, playerTwoScore, playerOne, playerTwo;

-(void) updateScreen
{
  playerOneScore.titleLabel.text = [NSString stringWithFormat:@"%d", playerOne.currentScore];
  playerTwoScore.titleLabel.text = [NSString stringWithFormat:@"%d", playerTwo.currentScore];
}

-(void) scorePlayerOnePoint:(id) sender
{
  [playerOne score];
  [self updateScreen];
}

-(void) scorePlayerTwoPoint:(id) sender
{
  [playerTwo score];
  [self updateScreen];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

-(void) didReceiveMemoryWarning 
{
	// Releases the view if it doesn't have a superview.
	[super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload 
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
