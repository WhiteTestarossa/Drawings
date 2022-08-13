//
//  PaletteButton.m
//  Drawings
//
//  Created by Daniel Belokursky on 12.08.22.
//

#import "PaletteButton.h"
@interface PaletteButton ()

@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) UIView *innerView;
@property (nonatomic, strong) NSLayoutConstraint *heightConstraint;
@property (nonatomic, strong) NSLayoutConstraint *widthConstraint;
@property (nonatomic, assign) BOOL isChosen;
@end

@implementation PaletteButton

- (instancetype)initWithColor:(UIColor *)color
{
    self = [super init];
    if (self) {
        self.color = color;
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    self.backgroundColor = UIColor.whiteColor;
    self.layer.cornerRadius = 10.0;
    self.layer.shadowRadius = 2;
    self.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.layer.shadowOpacity = 1;
    self.layer.shadowColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor;
    self.translatesAutoresizingMaskIntoConstraints = FALSE;
    
    self.innerView = [[UIView alloc] init];
    self.innerView.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.innerView.backgroundColor = self.color;
    self.innerView.layer.cornerRadius = 6.0;
    [self.innerView setUserInteractionEnabled:FALSE];
    [self addSubview:self.innerView];

    self.heightConstraint = [self.innerView.heightAnchor constraintEqualToConstant:24.0];
    self.widthConstraint = [self.innerView.widthAnchor constraintEqualToConstant:24.0];

    [NSLayoutConstraint activateConstraints:@[
       self.heightConstraint,
       self.widthConstraint,
       [self.innerView.centerXAnchor constraintEqualToAnchor:self.centerXAnchor],
       [self.innerView.centerYAnchor constraintEqualToAnchor:self.centerYAnchor]
    ]];
    
    self.isChosen = FALSE;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    
    if (self.isChosen == FALSE) {
        [self selectColor];
    } else {
        [self cancelColor];
    }
   
}

- (void)selectColor
{
    self.isChosen = TRUE;
    
    [NSLayoutConstraint deactivateConstraints:@[
        self.heightConstraint,
        self.widthConstraint
    ]];
    
    self.heightConstraint = [self.innerView.heightAnchor constraintEqualToConstant:36.0];
    self.widthConstraint = [self.innerView.widthAnchor constraintEqualToConstant:36.0];
    
    [NSLayoutConstraint activateConstraints:@[
        self.heightConstraint,
        self.widthConstraint
    ]];
    self.innerView.layer.cornerRadius = 8.0;
    
    [UIView animateWithDuration:0.2 animations:^{
        [self layoutIfNeeded];
    }];
}

- (void)cancelColor
{
    self.isChosen = FALSE;
    
    [NSLayoutConstraint deactivateConstraints:@[
       self.heightConstraint,
       self.widthConstraint
    ]];
    
    self.heightConstraint = [self.innerView.heightAnchor constraintEqualToConstant:24.0];
    self.widthConstraint = [self.innerView.widthAnchor constraintEqualToConstant:24.0];
    
    [NSLayoutConstraint activateConstraints:@[
        self.heightConstraint,
        self.widthConstraint
    ]];
    self.innerView.layer.cornerRadius = 6.0;
    
    [UIView animateWithDuration:0.2 animations:^{
        [self layoutIfNeeded];
    }];
}


@end
