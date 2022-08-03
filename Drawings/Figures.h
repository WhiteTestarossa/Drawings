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

@end

NS_ASSUME_NONNULL_END