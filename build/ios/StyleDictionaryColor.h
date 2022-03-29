
//
// StyleDictionaryColor.h
//

// Do not edit directly
// Generated on Tue, 29 Mar 2022 18:21:53 GMT


#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, StyleDictionaryColorName) {
ColorGameficationEsforcado,
ColorGameficationNerd,
ColorGameficationVeterano,
ColorGameficationNinja,
ColorGameficationMestre,
ColorGameficationPhd,
ColorGameficationAlien,
ColorGameficationOrCulo,
ColorBgBgLight,
ColorNeutralNeutralDark,
ColorNeutralNeutralNotNamed,
ColorNeutralNeutralLight,
ColorNeutralNeutralLighter,
ColorNeutralNeutralLightest,
ColorSupportSupportAttentionMd,
ColorSupportSupportAttentionLight,
ColorSupportSupportWarningDark,
ColorSupportSupportSuccessDark,
ColorSupportSupportWarningMd,
ColorSupportSupportSuccessMd,
ColorSupportSupportWarningLight,
ColorSupportSupportSuccessLight,
ColorVerifiedVerifiedMd,
ColorQuestionContentQuestionLight,
ColorBrandBrandPrimaryLight,
ColorBrandBrandPrimaryLighter,
ColorBrandBrandSecondary,
ColorBrandBrandSecondaryLight
};

@interface StyleDictionaryColor : NSObject
+ (NSArray *)values;
+ (UIColor *)color:(StyleDictionaryColorName)color;
@end
