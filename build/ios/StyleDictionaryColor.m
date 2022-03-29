
//
// StyleDictionaryColor.m
//

// Do not edit directly
// Generated on Tue, 29 Mar 2022 18:21:53 GMT


#import "StyleDictionaryColor.h"

@implementation StyleDictionaryColor

+ (UIColor *)color:(StyleDictionaryColorName)colorEnum{
  return [[self values] objectAtIndex:colorEnum];
}

+ (NSArray *)values {
  static NSArray* colorArray;
  static dispatch_once_t onceToken;

  dispatch_once(&onceToken, ^{
    colorArray = @[
[UIColor colorWithRed:0.898f green:0.161f blue:0.275f alpha:1.000f],
[UIColor colorWithRed:0.925f green:0.541f blue:0.086f alpha:1.000f],
[UIColor colorWithRed:0.631f green:0.678f blue:0.114f alpha:1.000f],
[UIColor colorWithRed:0.153f green:0.180f blue:0.388f alpha:1.000f],
[UIColor colorWithRed:0.314f green:0.706f blue:0.514f alpha:1.000f],
[UIColor colorWithRed:0.780f green:0.176f blue:0.533f alpha:1.000f],
[UIColor colorWithRed:0.000f green:0.541f blue:0.286f alpha:1.000f],
[UIColor colorWithRed:0.431f green:0.267f blue:0.576f alpha:1.000f],
[UIColor colorWithRed:0.980f green:0.980f blue:0.980f alpha:1.000f],
[UIColor colorWithRed:0.286f green:0.294f blue:0.337f alpha:1.000f],
[UIColor colorWithRed:0.565f green:0.576f blue:0.620f alpha:1.000f],
[UIColor colorWithRed:0.725f green:0.733f blue:0.765f alpha:1.000f],
[UIColor colorWithRed:0.820f green:0.824f blue:0.827f alpha:1.000f],
[UIColor colorWithRed:1.000f green:1.000f blue:1.000f alpha:1.000f],
[UIColor colorWithRed:0.890f green:0.220f blue:0.102f alpha:1.000f],
[UIColor colorWithRed:0.976f green:0.596f blue:0.529f alpha:1.000f],
[UIColor colorWithRed:0.788f green:0.631f blue:0.184f alpha:1.000f],
[UIColor colorWithRed:0.173f green:0.627f blue:0.451f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.757f blue:0.000f alpha:1.000f],
[UIColor colorWithRed:0.224f green:0.780f blue:0.565f alpha:1.000f],
[UIColor colorWithRed:0.996f green:0.914f blue:0.655f alpha:1.000f],
[UIColor colorWithRed:0.584f green:0.914f blue:0.784f alpha:1.000f],
[UIColor colorWithRed:0.114f green:0.631f blue:0.949f alpha:1.000f],
[UIColor colorWithRed:0.663f green:0.353f blue:0.831f alpha:1.000f],
[UIColor colorWithRed:1.000f green:0.537f blue:0.153f alpha:1.000f],
[UIColor colorWithRed:0.961f green:0.667f blue:0.427f alpha:1.000f],
[UIColor colorWithRed:0.224f green:0.780f blue:0.565f alpha:1.000f],
[UIColor colorWithRed:0.314f green:0.824f blue:0.624f alpha:1.000f]
    ];
  });

  return colorArray;
}

@end
