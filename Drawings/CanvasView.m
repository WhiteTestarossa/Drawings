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
    self.shapeLayer1.path = Figures.facePath.CGPath;
    self.shapeLayer2 = [CAShapeLayer layer];
    self.shapeLayer2.path = Figures.lipsPath.CGPath;
    self.shapeLayer3 = [CAShapeLayer layer];
    self.shapeLayer3.path = Figures.neckPath.CGPath;
    
    [self.shapeLayer1 setFillColor:UIColor.whiteColor.CGColor];
    self.shapeLayer1.strokeStart = 0;
    self.shapeLayer1.strokeEnd = 0;
    self.shapeLayer1.strokeColor = [UIColor orangeColor].CGColor;
    self.shapeLayer1.lineWidth   = 2.0;
    self.shapeLayer1.lineCap = kCALineCapRound;
    
    [self.shapeLayer2 setFillColor:UIColor.whiteColor.CGColor];
    self.shapeLayer2.strokeStart = 0;
    self.shapeLayer2.strokeEnd = 0;
    self.shapeLayer2.strokeColor = [UIColor blueColor].CGColor;
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

-(void)drawAtLayer
{
    if (self.shapeLayer1.strokeEnd < 1 && self.shapeLayer2.strokeEnd <1 && self.shapeLayer3.strokeEnd < 1) {
        self.shapeLayer1.strokeEnd += (1.0 / (60.0 * 2.0));
        self.shapeLayer2.strokeEnd += (1.0 / (60.0 * 2.0));
        self.shapeLayer3.strokeEnd += (1.0 / (60.0 * 2.0));
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

-(void)drawWithTimer
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0/60.0 target:self selector:@selector(drawAtLayer) userInfo:nil repeats:YES];
}

@end
