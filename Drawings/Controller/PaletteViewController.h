//
//  PaletteViewController.h
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaletteViewDelegate <NSObject>

- (void)didTappedSave:(NSMutableArray <UIColor *> *) colors;

@end

@interface PaletteViewController : UIViewController
@property (nonatomic, weak) id <PaletteViewDelegate> delegate;
@property (nonatomic, strong) NSMutableArray<UIColor *> *selectedColors;
@end

NS_ASSUME_NONNULL_END
