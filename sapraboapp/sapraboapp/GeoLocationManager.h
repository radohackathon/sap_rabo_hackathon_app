#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "BaseViewController.h"
#import "MainViewController.h"
#import "MyConstants.h"
#import "SecondViewController.h"

@interface GeoLocationManager : BaseViewController
        
@property (weak, nonatomic) id delegate;

+ (GeoLocationManager *)singleton;

@end