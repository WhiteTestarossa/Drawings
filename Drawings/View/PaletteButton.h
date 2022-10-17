//
//  PaletteButton.h
//  Drawings
//
//  Created by Daniel Belokursky on 12.08.22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PaletteButton : UIControl

- (instancetype)initWithColor:(UIColor *)color;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) BOOL isChosen;
- (void)toggleButton;

@end

NS_ASSUME_NONNULL_END
