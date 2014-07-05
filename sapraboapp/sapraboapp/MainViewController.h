#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "BaseViewController.h"

@interface  MainViewController : UIViewController

    @property (nonatomic, strong) IBOutlet UILabel *messageLabel;
    @property (nonatomic, strong) NSString *receivedData;


@end
