
//
// StyleDictionaryColor.m
//

// Do not edit directly
// Generated on Tue, 22 Feb 2022 19:55:47 GMT


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
[UIColor colorWithRed:0.192f green:0.475f blue:0.333f alpha:0.149f],
[UIColor colorWithRed:0.196f green:0.153f blue:0.565f alpha:0.384f],
[UIColor colorWithRed:0.153f green:0.216f blue:0.157f alpha:0.161f],
[UIColor colorWithRed:0.098f green:0.204f blue:0.286f alpha:0.584f],
[UIColor colorWithRed:0.133f green:0.024f blue:0.388f alpha:0.027f],
[UIColor colorWithRed:0.161f green:0.514f blue:0.020f alpha:0.212f],
[UIColor colorWithRed:0.086f green:0.506f blue:0.149f alpha:0.090f],
[UIColor colorWithRed:0.141f green:0.000f blue:0.216f alpha:0.192f],
[UIColor colorWithRed:0.200f green:0.133f blue:0.329f alpha:0.400f],
[UIColor colorWithRed:0.129f green:0.345f blue:0.024f alpha:0.188f],
[UIColor colorWithRed:0.149f green:0.145f blue:0.129f alpha:0.565f],
[UIColor colorWithRed:0.157f green:0.580f blue:0.580f alpha:0.263f],
[UIColor colorWithRed:0.188f green:0.322f blue:0.510f alpha:0.067f],
[UIColor colorWithRed:0.200f green:0.333f blue:0.267f alpha:0.192f],
[UIColor colorWithRed:0.192f green:0.400f blue:0.510f alpha:0.314f],
[UIColor colorWithRed:0.200f green:0.075f blue:0.278f alpha:0.153f],
[UIColor colorWithRed:0.161f green:0.600f blue:0.071f alpha:0.082f],
[UIColor colorWithRed:0.098f green:0.439f blue:0.094f alpha:0.459f],
[UIColor colorWithRed:0.200f green:0.325f blue:0.514f alpha:0.016f],
[UIColor colorWithRed:0.125f green:0.337f blue:0.220f alpha:0.337f],
[UIColor colorWithRed:0.200f green:0.282f blue:0.192f alpha:0.459f],
[UIColor colorWithRed:0.149f green:0.376f blue:0.098f alpha:0.157f],
[UIColor colorWithRed:0.094f green:0.443f blue:0.573f alpha:0.094f],
[UIColor colorWithRed:0.153f green:0.529f blue:0.376f alpha:0.322f],
[UIColor colorWithRed:0.200f green:0.322f blue:0.251f alpha:0.027f],
[UIColor colorWithRed:0.196f green:0.529f blue:0.443f alpha:0.396f],
[UIColor colorWithRed:0.125f green:0.337f blue:0.220f alpha:0.337f],
[UIColor colorWithRed:0.133f green:0.027f blue:0.251f alpha:0.082f]
    ];
  });

  return colorArray;
}

@end
