//
//  CanvasView.h
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CanvasViewDelegate <NSObject>

- (void)didFinishDrawing;

@end

@interface CanvasView : UIView

-(void)drawWithTimer;
@property (nonatomic, weak) id <CanvasViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
