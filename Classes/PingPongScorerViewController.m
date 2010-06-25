#import "PingPongScorerViewController.h"

@implementation PingPongScorerViewController
@synthesize playerOneScore, playerTwoScore, playerOne;

-(void) scorePlayerOnePoint:(id) sender
{
  int newValue = [playerOneScore.titleLabel.text intValue] + 1;
  playerOneScore.titleLabel.text = [NSString stringWithFormat:@"%d", newValue];
  [playerOne score];
}

-(void) scorePlayerTwoPoint:(id) sender
{
	int newValue = [playerTwoScore.titleLabel.text intValue] + 1;
	playerTwoScore.titleLabel.text = [NSString stringWithFormat:@"%d", newValue];
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
	[super dealloc];
}

@end
