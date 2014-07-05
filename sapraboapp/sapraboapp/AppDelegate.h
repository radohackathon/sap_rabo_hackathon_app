#import <UIKit/UIKit.h>
#import "GeoLocationManager.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GeoLocationManager *geoLocManagerSingleton;;

- (void) resetDemo;

@end
