#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "BaseViewController.h"

@interface  MainViewController : BaseViewController

@property (strong, nonatomic) IBOutlet UILabel *messageLabel;

- (IBAction)resetDemo:(id)sender;

@end
