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

-(void)drawWithTimer:(float)time;
@property (nonatomic, weak) id <CanvasViewDelegate> delegate;
@property (nonatomic, strong) CAShapeLayer *shapeLayer1;
@property (nonatomic, strong) CAShapeLayer *shapeLayer2;
@property (nonatomic, strong) CAShapeLayer *shapeLayer3;
- (void)assignPath1:(UIBezierPath *)path1 Path2:(UIBezierPath *)path2  Path3:(UIBezierPath *)path3;
- (void)assignColors:(NSMutableArray <UIColor *> *)colors;

@end

NS_ASSUME_NONNULL_END
