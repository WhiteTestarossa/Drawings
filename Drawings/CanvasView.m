//
//  CanvasView.m
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import "CanvasView.h"
#import "Figures.h"

@interface CanvasView ()
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation CanvasView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
        [self addDrawLayer];
        
    }
    return self;
}

- (void)setup {
    self.layer.cornerRadius = 8.0;
    self.layer.borderWidth = 1.0;
    self.layer.borderColor = [[UIColor alloc] initWithRed:0.0 green:178.0/255.0 blue:255.0/255.0 alpha:0.25].CGColor;
    self.backgroundColor = UIColor.whiteColor;
    
    self.layer.shadowColor =  [[UIColor alloc] initWithRed:0.0 green:178.0/255.0 blue:255.0/255.0 alpha:0.25].CGColor;
    self.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 8.0;
    self.translatesAutoresizingMaskIntoConstraints = FALSE;
}

-(void)addDrawLayer
{
    self.shapeLayer1 = [CAShapeLayer layer];
    self.shapeLayer2 = [CAShapeLayer layer];
    self.shapeLayer3 = [CAShapeLayer layer];
    
    [self.shapeLayer1 setFillColor:UIColor.whiteColor.CGColor];
    self.shapeLayer1.strokeStart = 0;
    self.shapeLayer1.strokeEnd = 0;
    self.shapeLayer1.strokeColor = [UIColor blackColor].CGColor;
    self.shapeLayer1.lineWidth   = 2.0;
    self.shapeLayer1.lineCap = kCALineCapRound;
    
    [self.shapeLayer2 setFillColor:UIColor.whiteColor.CGColor];
    self.shapeLayer2.strokeStart = 0;
    self.shapeLayer2.strokeEnd = 0;
    self.shapeLayer2.strokeColor = [UIColor blackColor].CGColor;
    self.shapeLayer2.lineWidth   = 2.0;
    self.shapeLayer2.lineCap = kCALineCapRound;
    
    [self.shapeLayer3 setFillColor:UIColor.whiteColor.CGColor];
    self.shapeLayer3.strokeStart = 0;
    self.shapeLayer3.strokeEnd = 0;
    self.shapeLayer3.strokeColor = [UIColor blackColor].CGColor;
    self.shapeLayer3.lineWidth   = 2.0;
    self.shapeLayer3.lineCap = kCALineCapRound;
    
    [self.layer addSublayer: self.shapeLayer1];
    [self.layer addSublayer: self.shapeLayer2];
    [self.layer addSublayer: self.shapeLayer3];
}

-(void)drawAtLayer:(NSTimer *)timer
{
    if (self.shapeLayer1.strokeEnd < 1 && self.shapeLayer2.strokeEnd <1 && self.shapeLayer3.strokeEnd < 1) {
        float time = [timer.userInfo floatValue];
        self.shapeLayer1.strokeEnd += (CGFloat)(1.0 / (60.0 * time));
        self.shapeLayer2.strokeEnd += (CGFloat)(1.0 / (60.0 * time));
        self.shapeLayer3.strokeEnd += (CGFloat)(1.0 / (60.0 * time));
    } else {
        [self.timer invalidate];
        [self setTimer: nil];
        if ([self.delegate respondsToSelector:@selector(didFinishDrawing)])
        {
            [self.delegate didFinishDrawing];
        } else {
            NSLog(@"NOT RESPONDING");
        }
    }
}

-(void)drawWithTimer:(float)time
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0/60.0 target:self selector:@selector(drawAtLayer:) userInfo:[NSNumber numberWithFloat:time] repeats:YES];
}

- (void)assignPath1:(UIBezierPath *)path1 Path2:(UIBezierPath *)path2  Path3:(UIBezierPath *)path3
{
    self.shapeLayer1.path = path1.CGPath;
    self.shapeLayer2.path = path2.CGPath;
    self.shapeLayer3.path = path3.CGPath;
}

- (void)assignColors:(NSMutableArray<UIColor *> *)colors
{
    NSMutableArray<UIColor *> *tempColors = [[NSMutableArray alloc] initWithArray:colors];
    while (tempColors.count < 3) {
        [tempColors addObject: UIColor.blackColor];
    }
    
    self.shapeLayer1.strokeColor = tempColors.firstObject.CGColor;
    self.shapeLayer2.strokeColor = [tempColors objectAtIndex:1].CGColor;
    self.shapeLayer3.strokeColor = tempColors.lastObject.CGColor;
}

- (NSData *)shareImageFromCanvas
{
    UIGraphicsImageRenderer *renderer = [[UIGraphicsImageRenderer alloc] initWithBounds:self.bounds];
    NSData *jpegData = [renderer JPEGDataWithCompressionQuality:1.0 actions:^(UIGraphicsImageRendererContext *rendererContext) {
        [self.shapeLayer1 renderInContext:rendererContext.CGContext];
        [self.shapeLayer2 renderInContext:rendererContext.CGContext];
        [self.shapeLayer3 renderInContext:rendererContext.CGContext];
    }];
    return jpegData;
}

@end
