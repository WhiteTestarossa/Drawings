//
//  PaletteViewController.m
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import "PaletteViewController.h"
#import "Button.h"
#import "PaletteButton.h"

@interface PaletteViewController ()
@property (nonatomic, strong) Button *saveButton;
@property (nonatomic, strong) NSArray<UIColor *> *colorsArray;
@property (nonatomic, strong) UIStackView *topStackView;
@property (nonatomic, strong) UIStackView *bottomStackView;
@property (nonatomic, strong) NSTimer *timer;
@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
    [self fillColorsArray];
    [self setupPalette];
}

- (void)setupUI
{
    [self.view setBackgroundColor:UIColor.whiteColor];
    self.view.layer.cornerRadius = 40;
    self.view.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    self.view.layer.shadowColor = [[UIColor alloc] initWithRed:0.0 green:0.0 blue:0.0 alpha:0.25].CGColor;
    self.view.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.view.layer.shadowOpacity = 1.0;
    self.view.layer.shadowRadius = 8.0;
    
    self.saveButton = [[Button alloc] initWithTitle:@"Save"];
    self.saveButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.saveButton addTarget:self action:@selector(saveButtonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: self.saveButton];
    [NSLayoutConstraint activateConstraints:@[
       [self.saveButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:250.0],
       [self.saveButton.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:20.0],
       [self.saveButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-40.0],
       [self.saveButton.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-281.5]
    ]];
}

- (void)fillColorsArray
{
    UIColor *color1 = [[UIColor alloc] initWithRed:226.0/255.0 green:27.0/255.0 blue:44.0/255.0 alpha:1.0];
    UIColor *color2 = [[UIColor alloc] initWithRed:62.0/255.0 green:23.0/255.0 blue:204.0/255.0 alpha:1.0];
    UIColor *color3 = [[UIColor alloc] initWithRed:0.0/255.0 green:124.0/255.0 blue:55.0/255.0 alpha:1.0];
    UIColor *color4 = [[UIColor alloc] initWithRed:128.0/255.0 green:128.0/255.0 blue:128.0/255.0 alpha:1.0];
    UIColor *color5 = [[UIColor alloc] initWithRed:157.0/255.0 green:94.0/255.0 blue:234.0/255.0 alpha:1.0];
    UIColor *color6 = [[UIColor alloc] initWithRed:255.0/255.0 green:122.0/255.0 blue:104.0/255.0 alpha:1.0];
    
    UIColor *color7 = [[UIColor alloc] initWithRed:255.0/255.0 green:173.0/255.0 blue:84.0/255.0 alpha:1.0];
    UIColor *color8 = [[UIColor alloc] initWithRed:0.0/255.0 green:174.0/255.0 blue:237.0/255.0 alpha:1.0];
    UIColor *color9 = [[UIColor alloc] initWithRed:255.0/255.0 green:119.0/255.0 blue:162.0/255.0 alpha:1.0];
    UIColor *color10 = [[UIColor alloc] initWithRed:0.0/255.0 green:46.0/255.0 blue:60.0/255.0 alpha:1.0];
    UIColor *color11 = [[UIColor alloc] initWithRed:14.0/255.0 green:55.0/255.0 blue:24.0/255.0 alpha:1.0];
    UIColor *color12 = [[UIColor alloc] initWithRed:97.0/255.0 green:15.0/255.0 blue:16.0/255.0 alpha:1.0];
    
    self.colorsArray = [[NSArray alloc] initWithObjects:color1, color2, color3, color4, color5, color6, color7, color8, color9, color10, color11, color12, nil];
    self.selectedColors = [[NSMutableArray alloc] init];
}

- (void)setupPalette
{
    self.topStackView = [[UIStackView alloc] init];
    self.topStackView.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.topStackView.axis = UILayoutConstraintAxisHorizontal;
    self.topStackView.distribution = UIStackViewDistributionFillEqually;
    self.topStackView.spacing = 20;
    
    
    self.bottomStackView = [[UIStackView alloc] init];
    self.bottomStackView.translatesAutoresizingMaskIntoConstraints = FALSE;
    self.bottomStackView.axis = UILayoutConstraintAxisHorizontal;
    self.bottomStackView.distribution = UIStackViewDistributionFillEqually;
    self.bottomStackView.spacing = 20;
    
    [self.view addSubview: self.topStackView];
    [self.view addSubview: self.bottomStackView];
    
    for (int i = 0; i < 6; i++)
    {
        UIColor *color = [self.colorsArray objectAtIndex:i];
        PaletteButton *button = [self createButton:color];
        [self.topStackView addArrangedSubview:button];
    }
    
    for (int i = 6; i < 12; i++)
    {
        UIColor *color = [self.colorsArray objectAtIndex:i];
        PaletteButton *button = [self createButton:color];
        [self.bottomStackView addArrangedSubview:button];
    }
    
    [NSLayoutConstraint activateConstraints:@[
        [self.topStackView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:17.0],
        [self.topStackView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-18.0],
        [self.topStackView.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:92.0],
        [self.topStackView.heightAnchor constraintEqualToConstant:40.0],
        
        [self.bottomStackView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:17.0],
        [self.bottomStackView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-18.0],
        [self.bottomStackView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor constant:-141.5],
        [self.bottomStackView.heightAnchor constraintEqualToConstant:40.0]
    ]];
}

- (PaletteButton *)createButton:(UIColor *)color
{
    PaletteButton *button = [[PaletteButton alloc] initWithColor:color];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    return button;
}

- (void)buttonTapped:(PaletteButton *)button
{
    if (button.isChosen)
    {
        [self.selectedColors removeObject:button.color];
    } else {
        if (self.selectedColors.count <= 2)
        {
            [self.selectedColors addObject:button.color];
        } else {
            UIColor *color = self.selectedColors.firstObject;
            NSArray *buttonsArray = [self.topStackView.arrangedSubviews arrayByAddingObjectsFromArray:self.bottomStackView.arrangedSubviews];
            
            for (PaletteButton *b in buttonsArray)
            {
                if ([b.color isEqual:color])
                {
                    [b toggleButton];
                }
            }
            [self.selectedColors removeObjectAtIndex:0];
            [self.selectedColors addObject:button.color];
            
        }
        
        self.view.backgroundColor = button.color;
        [self.timer invalidate];
        [self timerForButton];
    }
}

- (void)saveButtonTapped
{
    [self.delegate didTappedSave: self.selectedColors];
}

- (void)timerForButton
{
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:false block:^(NSTimer * _Nonnull timer) {
        self.view.backgroundColor = UIColor.whiteColor;
        [self.timer invalidate];
    }];
}

@end
