//
//  ArtistViewController.m
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//
#import "Drawings-Swift.h"
#import "ArtistViewController.h"
#import "PaletteViewController.h"
#import "CanvasView.h"
#import "Button.h"
#import "Figures.h"

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
//FIX: CHANGE FONT OF RIGHT BAR BUTTON ITEM
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
    DrawingsViewController *drawingsVC = [[DrawingsViewController alloc] init];
    drawingsVC.canvas = self.canvasView;
    [drawingsVC setDelegate: (id)self];
    [self.navigationController pushViewController:drawingsVC animated:true];
}

- (void)paletteTapped:(id)sender {
    PaletteViewController *paletteVC = [[PaletteViewController alloc] init];
    [self presentViewController:paletteVC animated:true completion:nil];
}

#pragma mark UI Setup

- (void)setupUI
{
    self.canvasView = [[CanvasView alloc] init];
    [self.canvasView setDelegate: (id)self];
    [self.view addSubview: self.canvasView];
    
    [NSLayoutConstraint activateConstraints:@[
            [self.canvasView.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
            [self.canvasView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor constant:40.0],
            [self.canvasView.heightAnchor constraintEqualToConstant:300.0],
            [self.canvasView.widthAnchor constraintEqualToConstant:300.0]
        ]];
    
    self.paletteButton = [[Button alloc] initWithTitle: @"Open Palette"];
    [self.paletteButton addTarget:self action:@selector(paletteTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: self.paletteButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.paletteButton.topAnchor constraintEqualToAnchor:self.canvasView.bottomAnchor constant:50.0],
        [self.paletteButton.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:20.0],
    ]];
    
    self.drawButton = [[Button alloc] initWithTitle:@"Draw"];
    [self.drawButton addTarget:self action:@selector(drawFigureAtCanvasView:) forControlEvents:UIControlEventTouchUpInside];
    
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
    self.paletteButton.enabled = TRUE;
    self.timerButton.enabled = TRUE;
    [self.drawButton setTitle:@"Draw" forState:UIControlStateNormal];
    
    for (CAShapeLayer *layer in [self.canvasView.layer.sublayers reverseObjectEnumerator])
    {
        layer.strokeEnd = 0;
    }
}

- (void)setupDrawState
{
    self.state = draw;
    
    self.drawButton.alpha = 0.5;
    self.paletteButton.alpha = 0.5;
    self.timerButton.alpha = 0.5;
    
    
    self.drawButton.enabled = FALSE;
    self.paletteButton.enabled = FALSE;
    self.timerButton.enabled = FALSE;
}

- (void)setupDoneState
{
    self.state = done;
    self.paletteButton.alpha = 0.5;
    self.drawButton.alpha = 1.0;
    self.timerButton.alpha = 0.5;
    self.shareButton.alpha = 1.0;
    
    [self.drawButton setTitle:@"Reset" forState:UIControlStateNormal];
    self.shareButton.enabled = TRUE;
    self.paletteButton.enabled = FALSE;
    self.drawButton.enabled = TRUE;
    self.timerButton.enabled = FALSE;
    
}

- (void)drawFigureAtCanvasView:(Button *)sender
{
    if (self.state == 0)
    {
        [self setupDrawState];
        [self.canvasView drawWithTimer];
    } else if (self.state == 2){
        self.state = 0;
        [self setupIdleState];
    }
}
@end

#pragma mark Category

@interface ArtistViewController (CanvasViewDelegateMethods) <CanvasViewDelegate, DrawingsVCDelegate>

- (void)didFinishDrawing;

- (void)didChoseHead;
- (void)didChoseTree;
- (void)didChosePlanet;
- (void)didChoseLandscape;

@end

@implementation ArtistViewController (CanvasViewDelegateMethods)

- (void)didFinishDrawing
{
    [self setupDoneState];
}

- (void)didChoseHead
{
    self.canvasView.shapeLayer1.path = Figures.facePath.CGPath;
    self.canvasView.shapeLayer2.path = Figures.neckPath.CGPath;
    self.canvasView.shapeLayer3.path = Figures.lipsPath.CGPath;
}

- (void)didChosePlanet
{
    self.canvasView.shapeLayer1.path = Figures.planetPath.CGPath;
    self.canvasView.shapeLayer2.path = Figures.asteroidsPath.CGPath;
    self.canvasView.shapeLayer3.path = Figures.surfacePath.CGPath;
}

- (void)didChoseTree {
    self.canvasView.shapeLayer1.path = Figures.leavesPath.CGPath;
    self.canvasView.shapeLayer2.path = Figures.trunkPath.CGPath;
    self.canvasView.shapeLayer3.path = Figures.groundPath.CGPath;
}

- (void)didChoseLandscape
{
    self.canvasView.shapeLayer1.path = Figures.skyPath.CGPath;
    self.canvasView.shapeLayer2.path = Figures.hillPath.CGPath;
    self.canvasView.shapeLayer3.path = Figures.mountainPath.CGPath;
}

@end
