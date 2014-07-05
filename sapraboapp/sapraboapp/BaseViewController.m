#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma notifs


-(void) pushSystemNotification:(NSDictionary *) beacon{
    NSLog(@"pushLocalNotification");
    
    UILocalNotification * localNotif = [[UILocalNotification alloc] init];
    localNotif.alertAction = @"to see the offer";
    localNotif.applicationIconBadgeNumber = 1;
    localNotif.alertBody = @"Buy at our store and get 20% off for your wife's birthday gift";
    localNotif.soundName = UILocalNotificationDefaultSoundName;
    localNotif.fireDate = [NSDate dateWithTimeIntervalSinceNow:1];
    
    localNotif.userInfo = beacon;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotif];
    
}

- (void) consumeSystemNotification:(UILocalNotification *)notification{
    NSLog(@"consumeNotification");
    
    if(!notification){
        NSLog(@"Notification nil");
        return;
    }
    
    if(![notification.userInfo objectForKey:UUID_STRING] || ![notification.userInfo objectForKey:MAJOR_STRING] || ![notification.userInfo objectForKey:MINOR_STRING]){
        NSLog(@"some of uuid or major or minor are not valid");
        return;
    }
   
    //navigate to the screen showing the notification

    //MainViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"mainViewController"];
    //viewController.receivedData = @"yahoooooo!";
    //[self.navigationController pushViewController:viewController animated:YES];
    
    NSString *msg = [NSString stringWithFormat:@"%@, %@, %@, %@", notification.alertBody, [notification.userInfo objectForKey:UUID_STRING] , [notification.userInfo objectForKey:MAJOR_STRING] , [notification.userInfo objectForKey:MINOR_STRING]];
    
    UIAlertView *myAlertView = [[UIAlertView alloc] initWithTitle:nil message:msg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [myAlertView show];
    
}

#pragma clean

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
