//
//  Figures.h
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Figures : UIBezierPath

@property (nonatomic, strong) UIBezierPath *path1;
@property (nonatomic, strong) UIBezierPath *path2;
@property (nonatomic, strong) UIBezierPath *path3;

- (void)setupFacePath;
- (void)setupTreePath;
- (void)setupPlanetPath;
- (void)setupLandscapePath;

- (UIBezierPath *)facePath;
- (UIBezierPath *)leavesPath;
- (UIBezierPath *)planetPath;
- (UIBezierPath *)skyPath;

@end

NS_ASSUME_NONNULL_END
