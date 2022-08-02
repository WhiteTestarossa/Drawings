//
//  Button.m
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import "Button.h"

@implementation Button

- (instancetype)initWithTitle:(NSString *)title
{
    self = [super init];
    if (self) {
        [self setup:title];
    }
    return self;
}

-(void)setup:(NSString *)title
{
    [self setTitle:title forState:UIControlStateNormal];
    [self.titleLabel setFont:[UIFont fontWithName:@"Montserrat-Regular" size:18]];
    [self setTitleColor:[UIColor colorWithRed:33.0/255.0 green:176.0/255 blue:142.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    self.backgroundColor = UIColor.whiteColor;
    self.layer.cornerRadius = 10.0;
    self.layer.shadowRadius = 2;
    self.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.layer.shadowOpacity = 1;
    self.layer.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor;
    [self setContentEdgeInsets:UIEdgeInsetsMake(5.0, 21.0, 5.0, 21.0)];
    self.translatesAutoresizingMaskIntoConstraints = FALSE;
}

- (void)setHighlightedState {
    self.layer.shadowColor = [UIColor colorWithRed:33.0/255.0 green:176.0/255 blue:142.0/255.0 alpha:1.0].CGColor;
    self.layer.shadowRadius = 4.0;
}

- (void)setDefaultState {
    self.layer.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor;
    self.layer.shadowRadius = 2.0;
}

- (void)setHighlighted:(BOOL)highlighted
{
    if (highlighted) {
        [self setHighlightedState];
    } else  {
        [self setDefaultState];
    }
}

@end
