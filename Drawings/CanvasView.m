//
//  CanvasView.m
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import "CanvasView.h"

@implementation CanvasView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
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

@end
