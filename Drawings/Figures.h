//
//  Figures.h
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Figures : UIBezierPath

+(UIBezierPath *)facePath;
+(UIBezierPath *)lipsPath;
+(UIBezierPath *)neckPath;

+(UIBezierPath *)leavesPath;
+(UIBezierPath *)trunkPath;
+(UIBezierPath *)groundPath;

+(UIBezierPath *)skyPath;
+(UIBezierPath *)hillPath;
+(UIBezierPath *)mountainPath;

+(UIBezierPath *)planetPath;
+(UIBezierPath *)surfacePath;
+(UIBezierPath *)asteroidsPath;

@end

NS_ASSUME_NONNULL_END
