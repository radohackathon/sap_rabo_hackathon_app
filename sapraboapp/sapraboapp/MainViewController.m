#import "MainViewController.h"
#import "AppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(processNotificationCenterForBeacon:)
                                                 name:@"BEACONS_NOTIF_CENTER"
                                               object:nil];
}

- (void) processNotificationCenterForBeacon:(NSNotification *) notification{
    NSDictionary *notificationCenterMessage = notification.userInfo;
       NSString *msg = [NSString stringWithFormat:@"%@, %@, %@, %@", notificationCenterMessage [@"ALERT_BODY"],  notificationCenterMessage[UUID_STRING] , notificationCenterMessage[MAJOR_STRING] , notificationCenterMessage [MINOR_STRING]];
    
    self.messageLabel.text = msg;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)resetDemo:(id)sender {
    
    self.messageLabel.text = @"";
    [self performSelector:@selector(reset) withObject:nil afterDelay:5];

}

-(void) reset{
    AppDelegate *appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    [appDelegate resetDemo];
}

@end
