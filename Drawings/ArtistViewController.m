//
//  ArtistViewController.m
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import "ArtistViewController.h"
#import "CanvasView.h"
#import "Button.h"

#pragma mark Properties

typedef NS_ENUM(NSInteger, State)
{
    idle = 0,
    draw = 1,
    done = 2
};

@interface ArtistViewController ()
@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, strong) Button *paletteButton;
@property (nonatomic, strong) Button *timerButton;
@property (nonatomic, strong) Button *drawButton;
@property (nonatomic, strong) Button *shareButton;

@property(nonatomic) State state;

@property (nonatomic, strong) CAShapeLayer *drawLayer;
@end

@implementation ArtistViewController

#pragma mark Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor: UIColor.whiteColor];
    [self setupNavigationItem];
    [self setupUI];
}

#pragma mark Navigation Bar Setup

- (void)setupNavigationItem
{
    self.navigationItem.title = @"Artist";
    self.navigationController.navigationBar.barTintColor = UIColor.whiteColor;
    
    UIBarButtonItem *drawingsBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Drawings"
                                                                 style: UIBarButtonItemStylePlain
                                                                 target:self
                                                                 action:@selector(drawingsTapped:)];
    
    drawingsBarButtonItem.tintColor = [[UIColor alloc] initWithRed:33.0/255.0 green:176.0/255 blue:142.0/255.0 alpha:1.0];
    [self.navigationController.navigationBar setTitleTextAttributes:  @{NSForegroundColorAttributeName:[UIColor blackColor],
                                                                        NSFontAttributeName:[UIFont fontWithName:@"Montserrat-Regular" size:17]}];
    
    self.navigationItem.rightBarButtonItem = drawingsBarButtonItem;
}

#pragma mark Navigation
- (void)drawingsTapped:(id)sender {
  
}

#pragma mark UI Setup

- (void)setupUI
{
    self.canvasView = [[CanvasView alloc] init];
    [self.view addSubview: self.canvasView];
    
    [NSLayoutConstraint activateConstraints:@[
            [self.canvasView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
            [self.canvasView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:40.0],
            [self.canvasView.heightAnchor constraintEqualToConstant:300.0],
            [self.canvasView.widthAnchor constraintEqualToConstant:300.0]
        ]];
    
    self.paletteButton = [[Button alloc] initWithTitle: @"Open Palette"];
    [self.view addSubview: self.paletteButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.paletteButton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50.0],
        [self.paletteButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20.0],
    ]];
    
    self.drawButton = [[Button alloc] initWithTitle:@"Draw"];
    [self.view addSubview:self.drawButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.drawButton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50.0],
        [self.drawButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant: -41.0],
    ]];
    
    self.timerButton = [[Button alloc] initWithTitle:@"Open Timer"];
    [self.view addSubview:self.timerButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.timerButton.topAnchor constraintEqualToAnchor:self.paletteButton.bottomAnchor constant:20.0],
        [self.timerButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20.0],
    ]];
    
    self.shareButton = [[Button alloc] initWithTitle:@"Share"];
    [self.view addSubview:self.shareButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.shareButton.topAnchor constraintEqualToAnchor:self.drawButton.bottomAnchor constant:20.0],
        [self.shareButton.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant: -41.0],
    ]];
    
    [self setupIdleState];
}

- (void)setupIdleState
{
    self.state = idle;
    self.paletteButton.alpha = 1.0;
    self.drawButton.alpha = 1.0;
    self.timerButton.alpha = 1.0;
    self.shareButton.alpha = 0.5;
    
    self.shareButton.enabled = FALSE;
}

@end
