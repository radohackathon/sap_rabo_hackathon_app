#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import "BaseViewController.h"

@interface GeoLocationManager : BaseViewController
        
@property (weak, nonatomic) id delegate;

+ (GeoLocationManager *)singleton;

@end