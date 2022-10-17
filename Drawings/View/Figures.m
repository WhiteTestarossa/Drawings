//
//  Figures.m
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import "Figures.h"

@implementation Figures

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupFacePath];
    }
    
    return self;
}

- (void)setupFacePath
{
    self.path1 = [self facePath];
    self.path2 = [self lipsPath];
    self.path3 = [self neckPath];
}

- (void)setupTreePath
{
    self.path1 = [self leavesPath];
    self.path2 = [self trunkPath];
    self.path3 = [self groundPath];
}

- (void)setupPlanetPath
{
    self.path1 = [self planetPath];
    self.path2 = [self surfacePath];
    self.path3 = [self asteroidsPath];
}

- (void)setupLandscapePath
{
    self.path1 = [self skyPath];
    self.path2 = [self hillPath];
    self.path3 = [self mountainPath];
}

#pragma mark Face

- (UIBezierPath*)facePath
{
    UIBezierPath *face = [UIBezierPath bezierPath];
    
    [face moveToPoint: CGPointMake(61.5, 29)];
    [face addLineToPoint:  CGPointMake(77, 89)];
    [face addLineToPoint:  CGPointMake(89, 112)];
    [face addLineToPoint:  CGPointMake(106.5, 131.5)];
    [face addLineToPoint:  CGPointMake(133.5, 154)];
    [face addLineToPoint:  CGPointMake(157, 159.5)];
    [face addLineToPoint:  CGPointMake(193, 142)];
    [face addLineToPoint:  CGPointMake(220, 112)];
    [face addLineToPoint:  CGPointMake(228.5, 100)];
    [face addLineToPoint:  CGPointMake(230.5, 50.5)];
    [face addLineToPoint:  CGPointMake(218.5, 40.5)];
    [face addLineToPoint:  CGPointMake(202, 43.5)];
    [face addLineToPoint:  CGPointMake(191, 60.5)];
    [face addLineToPoint:  CGPointMake(189, 83.5)];
    [face addLineToPoint:  CGPointMake(193, 96)];
        
    return face;
}

- (UIBezierPath*)lipsPath {
    UIBezierPath *lips = [UIBezierPath bezierPath];
    
    [lips moveToPoint: CGPointMake(184, 100)];
    [lips addLineToPoint:  CGPointMake(175.5, 98.5)];
    [lips addLineToPoint:  CGPointMake(166, 100.5)];
    [lips addLineToPoint:  CGPointMake(158, 101.5)];
    [lips addLineToPoint:  CGPointMake(148.5, 100.5)];
    [lips addLineToPoint:  CGPointMake(140, 99)];
    [lips addLineToPoint:  CGPointMake(133.5, 98.5)];
    [lips addLineToPoint:  CGPointMake(126, 100)];
    [lips addLineToPoint:  CGPointMake(121.5, 102)];
    [lips addLineToPoint:  CGPointMake(127.5, 104.5)];
    [lips addLineToPoint:  CGPointMake(132, 108)];
    [lips addLineToPoint:  CGPointMake(136.5, 113)];
    [lips addLineToPoint:  CGPointMake(142.5, 115.5)];
    [lips addLineToPoint:  CGPointMake(150, 116.5)];
    [lips addLineToPoint:  CGPointMake(157, 115.5)];
    [lips addLineToPoint:  CGPointMake(164.5, 116.5)];
    [lips addLineToPoint:  CGPointMake(170.5, 115.5)];
    [lips addLineToPoint:  CGPointMake(177, 111.5)];
    [lips addLineToPoint:  CGPointMake(184, 103.5)];
    [lips addLineToPoint:  CGPointMake(188.5, 97.5)];
    [lips addLineToPoint:  CGPointMake(180.5, 96.5)];
    [lips addLineToPoint:  CGPointMake(171.5, 95.5)];
    [lips addLineToPoint:  CGPointMake(162.5, 93.5)];
    [lips addLineToPoint:  CGPointMake(154, 93)];
    [lips addLineToPoint:  CGPointMake(144, 94.5)];
    [lips addLineToPoint:  CGPointMake(135, 96.5)];
    [lips addLineToPoint:  CGPointMake(125, 97.5)];
    [lips addLineToPoint:  CGPointMake(118, 97)];
    [lips addLineToPoint:  CGPointMake(127.5, 91)];
    [lips addLineToPoint:  CGPointMake(136.5, 84.5)];
    [lips addLineToPoint:  CGPointMake(142.5, 81)];
    [lips addLineToPoint:  CGPointMake(147.5, 82.5)];
    [lips addLineToPoint:  CGPointMake(153, 84.5)];
    [lips addLineToPoint:  CGPointMake(159.5, 83.5)];
    [lips addLineToPoint:  CGPointMake(166, 82.5)];
    [lips addLineToPoint:  CGPointMake(174.5, 84.5)];
    [lips addLineToPoint:  CGPointMake(179.5, 89.5)];
    [lips addLineToPoint:  CGPointMake(187, 94)];

    return lips;
}

-(UIBezierPath*)neckPath {
    UIBezierPath *head = [UIBezierPath bezierPath];

    [head moveToPoint: CGPointMake(189.5, 102.5)];
    [head addLineToPoint:  CGPointMake(194, 108.5)];
    [head addLineToPoint:  CGPointMake(196.5, 115)];
    [head addLineToPoint:  CGPointMake(193, 124)];
    [head addLineToPoint:  CGPointMake(186, 132.5)];
    [head addLineToPoint:  CGPointMake(177, 139.5)];
    [head addLineToPoint:  CGPointMake(167.5, 132.5)];
    [head addLineToPoint:  CGPointMake(157, 128.5)];
    [head addLineToPoint:  CGPointMake(135.5, 132.5)];
    [head addLineToPoint:  CGPointMake(127.5, 142)];
    [head addLineToPoint:  CGPointMake(121, 154.5)];
    [head addLineToPoint:  CGPointMake(109.5, 147.5)];
    [head addLineToPoint:  CGPointMake(101.5, 137.5)];
    [head addLineToPoint:  CGPointMake(93, 128.5)];
    [head addLineToPoint:  CGPointMake(86, 199)];
    [head addLineToPoint:  CGPointMake(74.5, 207.5)];
    [head addLineToPoint:  CGPointMake(63.5, 214.5)];
    [head addLineToPoint:  CGPointMake(81, 221)];
    [head addLineToPoint:  CGPointMake(94.5, 229.5)];
    [head addLineToPoint:  CGPointMake(105, 243.5)];
    [head addLineToPoint:  CGPointMake(119, 261)];
    [head addLineToPoint:  CGPointMake(138, 279)];
    [head addLineToPoint:  CGPointMake(157, 285.5)];
    [head addLineToPoint:  CGPointMake(186, 277.5)];
    [head addLineToPoint:  CGPointMake(199.5, 261)];
    [head addLineToPoint:  CGPointMake(209.5, 239.5)];
    [head addLineToPoint:  CGPointMake(219, 223.5)];
    [head addLineToPoint:  CGPointMake(233.5, 217)];
    [head addLineToPoint:  CGPointMake(230.5, 201.5)];
    [head addLineToPoint:  CGPointMake(221, 173)];
    [head addLineToPoint:  CGPointMake(219, 150)];
    [head addLineToPoint:  CGPointMake(212, 137.5)];
    [head addLineToPoint:  CGPointMake(204, 145.5)];
    [head addLineToPoint:  CGPointMake(196.5, 154.5)];
    [head addLineToPoint:  CGPointMake(180, 170.5)];
    [head addLineToPoint:  CGPointMake(170, 185)];
    [head addLineToPoint:  CGPointMake(161.5, 206.5)];
    [head addLineToPoint:  CGPointMake(158.5, 232.5)];
    [head addLineToPoint:  CGPointMake(160, 261)];
    [head addLineToPoint:  CGPointMake(160, 279)];

    return head;
}

#pragma mark Tree

- (UIBezierPath*)leavesPath {

    UIBezierPath *leaves = [UIBezierPath bezierPath];
    
    [leaves moveToPoint:CGPointMake(233.19,85.76)];
    [leaves addCurveToPoint:CGPointMake(220.5,62) controlPoint1: CGPointMake(237,68.49) controlPoint2: CGPointMake(229.61,62)];
    [leaves addCurveToPoint:CGPointMake(215.97,62.55) controlPoint1: CGPointMake(218.93,62) controlPoint2: CGPointMake(217.41,62.19)];
    [leaves addCurveToPoint:CGPointMake(199.5,49) controlPoint1: CGPointMake(215.41,54.99) controlPoint2: CGPointMake(208.25,49)];
    [leaves addCurveToPoint:CGPointMake(191.6,50.77) controlPoint1: CGPointMake(196.64,49) controlPoint2: CGPointMake(193.94,49.64)];
    [leaves addCurveToPoint:CGPointMake(180.5,47) controlPoint1: CGPointMake(188.67,48.43) controlPoint2: CGPointMake(184.77,47)];
    [leaves addCurveToPoint:CGPointMake(175.97,47.55) controlPoint1: CGPointMake(178.93,47) controlPoint2: CGPointMake(177.41,47.19)];
    [leaves addCurveToPoint:CGPointMake(159.5,34) controlPoint1: CGPointMake(175.41,39.99) controlPoint2: CGPointMake(168.25,34)];
    [leaves addCurveToPoint:CGPointMake(145.59,40.7) controlPoint1: CGPointMake(153.65,34) controlPoint2: CGPointMake(148.52,36.67)];
    [leaves addCurveToPoint:CGPointMake(140.5,40) controlPoint1: CGPointMake(143.98,40.25) controlPoint2: CGPointMake(142.28,40)];
    [leaves addCurveToPoint:CGPointMake(130.81,42.77) controlPoint1: CGPointMake(136.88,40) controlPoint2: CGPointMake(133.53,41.03)];
    [leaves addCurveToPoint:CGPointMake(125.5,42) controlPoint1: CGPointMake(129.14,42.27) controlPoint2: CGPointMake(127.36,42)];
    [leaves addCurveToPoint:CGPointMake(111.59,48.7) controlPoint1: CGPointMake(119.65,42) controlPoint2: CGPointMake(114.52,44.67)];
    [leaves addCurveToPoint:CGPointMake(106.5,48) controlPoint1: CGPointMake(109.98,48.25) controlPoint2: CGPointMake(108.28,48)];
    [leaves addCurveToPoint:CGPointMake(90,62.5) controlPoint1: CGPointMake(97.39,48) controlPoint2: CGPointMake(90,54.49)];
    [leaves addCurveToPoint:CGPointMake(90.01,63.02) controlPoint1: CGPointMake(90,62.68) controlPoint2: CGPointMake(90,62.85)];
    [leaves addCurveToPoint:CGPointMake(88.59,64.7) controlPoint1: CGPointMake(89.49,63.55) controlPoint2: CGPointMake(89.02,64.11)];
    [leaves addCurveToPoint:CGPointMake(83.5,64) controlPoint1: CGPointMake(86.98,64.25) controlPoint2: CGPointMake(85.28,64)];
    [leaves addCurveToPoint:CGPointMake(67,78.5) controlPoint1: CGPointMake(74.39,64) controlPoint2: CGPointMake(67,70.49)];
    [leaves addCurveToPoint:CGPointMake(68.58,84.71) controlPoint1: CGPointMake(67,80.72) controlPoint2: CGPointMake(67.57,82.83)];
    [leaves addCurveToPoint:CGPointMake(66,92.5) controlPoint1: CGPointMake(66.95,86.96) controlPoint2: CGPointMake(66,89.63)];
    [leaves addCurveToPoint:CGPointMake(67.19,97.92) controlPoint1: CGPointMake(66,94.42) controlPoint2: CGPointMake(66.42,96.25)];
    [leaves addCurveToPoint:CGPointMake(64,106.5) controlPoint1: CGPointMake(65.19,100.33) controlPoint2: CGPointMake(64,103.29)];
    [leaves addCurveToPoint:CGPointMake(65.58,112.71) controlPoint1: CGPointMake(64,108.72) controlPoint2: CGPointMake(64.57,110.83)];
    [leaves addCurveToPoint:CGPointMake(63,120.5) controlPoint1: CGPointMake(63.95,114.96) controlPoint2: CGPointMake(63,117.63)];
    [leaves addCurveToPoint:CGPointMake(79.5,135) controlPoint1: CGPointMake(63,128.51) controlPoint2: CGPointMake(70.39,135)];
    [leaves addCurveToPoint:CGPointMake(81.68,134.88) controlPoint1: CGPointMake(80.24,135) controlPoint2: CGPointMake(80.96,134.96)];
    [leaves addCurveToPoint:CGPointMake(96.5,143) controlPoint1: CGPointMake(84.36,139.69) controlPoint2: CGPointMake(89.99,143)];
    [leaves addCurveToPoint:CGPointMake(104.35,141.26) controlPoint1: CGPointMake(99.34,143) controlPoint2: CGPointMake(102.02,142.37)];
    [leaves addCurveToPoint:CGPointMake(119.5,150) controlPoint1: CGPointMake(106.89,146.4) controlPoint2: CGPointMake(112.72,150)];
    [leaves addCurveToPoint:CGPointMake(121.68,149.88) controlPoint1: CGPointMake(120.24,150) controlPoint2: CGPointMake(120.96,149.96)];
    [leaves addCurveToPoint:CGPointMake(136.5,158) controlPoint1: CGPointMake(124.36,154.69) controlPoint2: CGPointMake(129.99,158)];
    [leaves addCurveToPoint:CGPointMake(145,155.93) controlPoint1: CGPointMake(139.61,158) controlPoint2: CGPointMake(142.52,157.24)];
    [leaves addCurveToPoint:CGPointMake(149.66,157.6) controlPoint1: CGPointMake(146.43,156.69) controlPoint2: CGPointMake(147.99,157.26)];
    [leaves addCurveToPoint:CGPointMake(162.5,163) controlPoint1: CGPointMake(152.68,160.9) controlPoint2: CGPointMake(157.31,163)];
    [leaves addCurveToPoint:CGPointMake(170.35,161.26) controlPoint1: CGPointMake(165.34,163) controlPoint2: CGPointMake(168.02,162.37)];
    [leaves addCurveToPoint:CGPointMake(185.5,170) controlPoint1: CGPointMake(172.89,166.4) controlPoint2: CGPointMake(178.72,170)];
    [leaves addCurveToPoint:CGPointMake(187.68,169.88) controlPoint1: CGPointMake(186.24,170) controlPoint2: CGPointMake(186.96,169.96)];
    [leaves addCurveToPoint:CGPointMake(202.5,178) controlPoint1: CGPointMake(190.36,174.69) controlPoint2: CGPointMake(195.99,178)];
    [leaves addCurveToPoint:CGPointMake(211,175.93) controlPoint1: CGPointMake(205.61,178) controlPoint2: CGPointMake(208.52,177.24)];
    [leaves addCurveToPoint:CGPointMake(219.5,178) controlPoint1: CGPointMake(213.48,177.24) controlPoint2: CGPointMake(216.39,178)];
    [leaves addCurveToPoint:CGPointMake(236,163.5) controlPoint1: CGPointMake(228.61,178) controlPoint2: CGPointMake(236,171.51)];
    [leaves addCurveToPoint:CGPointMake(235.99,162.99) controlPoint1: CGPointMake(236,163.33) controlPoint2: CGPointMake(236,163.16)];
    [leaves addCurveToPoint:CGPointMake(236.5,163) controlPoint1: CGPointMake(236.16,163) controlPoint2: CGPointMake(236.33,163)];
    [leaves addCurveToPoint:CGPointMake(245,160.93) controlPoint1: CGPointMake(239.61,163) controlPoint2: CGPointMake(242.52,162.24)];
    [leaves addCurveToPoint:CGPointMake(253.5,163) controlPoint1: CGPointMake(247.48,162.24) controlPoint2: CGPointMake(250.39,163)];
    [leaves addCurveToPoint:CGPointMake(270,148.5) controlPoint1: CGPointMake(262.61,163) controlPoint2: CGPointMake(270,156.51)];
    [leaves addCurveToPoint:CGPointMake(269.66,145.56) controlPoint1: CGPointMake(270,147.49) controlPoint2: CGPointMake(269.88,146.51)];
    [leaves addCurveToPoint:CGPointMake(277,133.5) controlPoint1: CGPointMake(274.09,142.96) controlPoint2: CGPointMake(277,138.53)];
    [leaves addCurveToPoint:CGPointMake(273.19,124.24) controlPoint1: CGPointMake(277,129.98) controlPoint2: CGPointMake(275.57,126.75)];
    [leaves addCurveToPoint:CGPointMake(280,112.5) controlPoint1: CGPointMake(277.32,121.6) controlPoint2: CGPointMake(280,117.33)];
    [leaves addCurveToPoint:CGPointMake(263.5,98) controlPoint1: CGPointMake(280,104.49) controlPoint2: CGPointMake(272.61,98)];
    [leaves addCurveToPoint:CGPointMake(258.96,98.55) controlPoint1: CGPointMake(261.93,98) controlPoint2: CGPointMake(260.41,98.19)];
    [leaves addCurveToPoint:CGPointMake(242.5,85) controlPoint1: CGPointMake(258.41,90.99) controlPoint2: CGPointMake(251.25,85)];
    [leaves addCurveToPoint:CGPointMake(234.6,86.77) controlPoint1: CGPointMake(239.64,85) controlPoint2: CGPointMake(236.94,85.64)];
    [leaves addCurveToPoint:CGPointMake(233.19,85.76) controlPoint1: CGPointMake(234.15,86.41) controlPoint2: CGPointMake(233.68,86.08)];
    

    return leaves;
}


- (UIBezierPath*)trunkPath {
    
    UIBezierPath *trunk = [UIBezierPath bezierPath];

    [trunk moveToPoint: CGPointMake(102, 270.5)];
    [trunk addCurveToPoint: CGPointMake(163.5, 207.5) controlPoint1: CGPointMake(121.83, 264.67) controlPoint2: CGPointMake(161.9, 243.9)];
    [trunk addCurveToPoint: CGPointMake(153.5, 160.5) controlPoint1: CGPointMake(165.1, 171.1) controlPoint2: CGPointMake(157.5, 161)];
    [trunk moveToPoint: CGPointMake(245.5, 276)];
    [trunk addCurveToPoint: CGPointMake(192, 247) controlPoint1: CGPointMake(227.17, 275) controlPoint2: CGPointMake(190.8, 267.8)];
    [trunk addCurveToPoint: CGPointMake(203, 188.5) controlPoint1: CGPointMake(193.2, 226.2) controlPoint2: CGPointMake(199.83, 199.33)];
    [trunk addCurveToPoint: CGPointMake(212.5, 176.5) controlPoint1: CGPointMake(205.17, 184.17) controlPoint2: CGPointMake(210.1, 175.7)];
    [trunk moveToPoint: CGPointMake(178.5, 185)];
    [trunk addCurveToPoint: CGPointMake(171, 234) controlPoint1: CGPointMake(177, 200.17) controlPoint2: CGPointMake(173.4, 231.2)];
    [trunk moveToPoint: CGPointMake(183.5, 259.5)];
    [trunk addCurveToPoint: CGPointMake(188.5, 188.5) controlPoint1: CGPointMake(183.5, 251.5) controlPoint2: CGPointMake(182.5, 203)];
    [trunk moveToPoint: CGPointMake(165, 227.5)];
    [trunk addCurveToPoint: CGPointMake(144.5, 256.5) controlPoint1: CGPointMake(152, 246.5) controlPoint2: CGPointMake(150.5, 251)];
   
    return trunk;
}


- (UIBezierPath*)groundPath {
    
    UIBezierPath *ground = [UIBezierPath bezierPath];

    [ground moveToPoint: CGPointMake(119.5, 263.5)];
    [ground addCurveToPoint: CGPointMake(86, 268.81) controlPoint1: CGPointMake(111.5, 255) controlPoint2: CGPointMake(96.4, 255.61)];
    [ground moveToPoint: CGPointMake(59.5, 275)];
    [ground addCurveToPoint: CGPointMake(83.5, 268) controlPoint1: CGPointMake(62.83, 271.17) controlPoint2: CGPointMake(72.3, 264.4)];
    [ground addCurveToPoint: CGPointMake(94, 272) controlPoint1: CGPointMake(94.7, 271.6) controlPoint2: CGPointMake(95.17, 272.17)];
    [ground moveToPoint: CGPointMake(198, 260.5)];
    [ground addCurveToPoint: CGPointMake(221.5, 260.5) controlPoint1: CGPointMake(203, 257.73) controlPoint2: CGPointMake(214.7, 253.85)];
    [ground addCurveToPoint: CGPointMake(226.74, 266.5) controlPoint1: CGPointMake(223.78, 262.73) controlPoint2: CGPointMake(225.48, 264.74)];
    [ground moveToPoint: CGPointMake(230, 273.5)];
    [ground addCurveToPoint: CGPointMake(226.74, 266.5) controlPoint1: CGPointMake(230, 272.46) controlPoint2: CGPointMake(229.25, 269.99)];
    [ground moveToPoint: CGPointMake(226.74, 266.5)];
    [ground addCurveToPoint: CGPointMake(261.5, 268) controlPoint1: CGPointMake(238.33, 263.33) controlPoint2: CGPointMake(261.5, 259.2)];
    [ground addCurveToPoint: CGPointMake(244.5, 276) controlPoint1: CGPointMake(261.5, 276.8) controlPoint2: CGPointMake(245.83, 275.17)];
  
    return ground;
}

#pragma mark Landscape

- (UIBezierPath*)skyPath {
    
    UIBezierPath *sky = [UIBezierPath bezierPath];
    
    [sky moveToPoint: CGPointMake(249, 134)];
    [sky addLineToPoint:  CGPointMake(255.5, 143.5)];
    [sky addLineToPoint:  CGPointMake(268, 156)];
    [sky addLineToPoint:  CGPointMake(267, 139.5)];
    [sky addLineToPoint:  CGPointMake(264.5, 124)];
    [sky addLineToPoint:  CGPointMake(259.5, 110.5)];
    [sky addLineToPoint:  CGPointMake(255.5, 102)];
    [sky addLineToPoint:  CGPointMake(251.5, 94.5)];
    [sky addLineToPoint:  CGPointMake(245.5, 86)];
    [sky addLineToPoint:  CGPointMake(240.5, 85.5)];
    [sky addLineToPoint:  CGPointMake(238, 85.5)];
    [sky addLineToPoint:  CGPointMake(234, 86)];
    [sky addLineToPoint:  CGPointMake(230, 87.5)];
    [sky addLineToPoint:  CGPointMake(226.5, 85.5)];
    [sky addLineToPoint:  CGPointMake(223.5, 84.5)];
    [sky addLineToPoint:  CGPointMake(219.5, 85.5)];
    [sky addLineToPoint:  CGPointMake(214.5, 85.5)];
    [sky addLineToPoint:  CGPointMake(210, 87.5)];
    [sky addLineToPoint:  CGPointMake(207, 86)];
    [sky addLineToPoint:  CGPointMake(203, 84.5)];
    [sky addLineToPoint:  CGPointMake(199, 84.5)];
    [sky addLineToPoint:  CGPointMake(192, 84.5)];
    [sky addLineToPoint:  CGPointMake(185.5, 84.5)];
    [sky addLineToPoint:  CGPointMake(182.5, 86)];
    [sky addLineToPoint:  CGPointMake(176, 84.5)];
    [sky addLineToPoint:  CGPointMake(170, 84.5)];
    [sky addLineToPoint:  CGPointMake(166, 83.5)];
    [sky addLineToPoint:  CGPointMake(160.5, 85.5)];
    [sky addLineToPoint:  CGPointMake(157, 83.5)];
    [sky addLineToPoint:  CGPointMake(150, 83.5)];
    [sky addLineToPoint:  CGPointMake(155.5, 82)];
    [sky addLineToPoint:  CGPointMake(159, 79)];
    [sky addLineToPoint:  CGPointMake(160.5, 77)];
    [sky addLineToPoint:  CGPointMake(163.5, 74.5)];
    [sky addLineToPoint:  CGPointMake(166, 71)];
    [sky addLineToPoint:  CGPointMake(170, 71)];
    [sky addLineToPoint:  CGPointMake(177.5, 71)];
    [sky addLineToPoint:  CGPointMake(183, 71)];
    [sky addLineToPoint:  CGPointMake(188, 68)];
    [sky addLineToPoint:  CGPointMake(190, 64)];
    [sky addLineToPoint:  CGPointMake(196.5, 63)];
    [sky addLineToPoint:  CGPointMake(200, 65.5)];
    [sky addLineToPoint:  CGPointMake(204, 64)];
    [sky addLineToPoint:  CGPointMake(208, 65.5)];
    [sky addLineToPoint:  CGPointMake(210, 61.5)];
    [sky addLineToPoint:  CGPointMake(214.5, 59.5)];
    [sky addLineToPoint:  CGPointMake(220.5, 59.5)];
    [sky addLineToPoint:  CGPointMake(210, 52)];
    [sky addLineToPoint:  CGPointMake(196.5, 44.5)];
    [sky addLineToPoint:  CGPointMake(179, 37.5)];
    [sky addLineToPoint:  CGPointMake(159, 33.5)];
    [sky addLineToPoint:  CGPointMake(143.5, 32.5)];
    [sky addLineToPoint:  CGPointMake(126.5, 33.5)];
    [sky addLineToPoint:  CGPointMake(110, 36)];
    [sky addLineToPoint:  CGPointMake(97, 41)];
    [sky addLineToPoint:  CGPointMake(85.5, 46)];
    [sky addLineToPoint:  CGPointMake(91, 49)];
    [sky addLineToPoint:  CGPointMake(95, 53)];
    [sky addLineToPoint:  CGPointMake(98, 58.5)];
    [sky addLineToPoint:  CGPointMake(98.5, 64)];
    [sky addLineToPoint:  CGPointMake(95, 72)];
    [sky addLineToPoint:  CGPointMake(89.5, 77)];
    [sky addLineToPoint:  CGPointMake(85.5, 79)];
    [sky addLineToPoint:  CGPointMake(81, 79)];
    [sky addLineToPoint:  CGPointMake(74, 76)];
    [sky addLineToPoint:  CGPointMake(69, 72)];
    [sky addLineToPoint:  CGPointMake(65.5, 65.5)];
    [sky addLineToPoint:  CGPointMake(65.5, 59.5)];
    [sky addLineToPoint:  CGPointMake(53, 70.5)];
    [sky addLineToPoint:  CGPointMake(44.5, 80.5)];
    [sky addLineToPoint:  CGPointMake(37, 92)];
    [sky addLineToPoint:  CGPointMake(31.5, 103)];
    [sky addLineToPoint:  CGPointMake(30, 109)];
    [sky addLineToPoint:  CGPointMake(33.5, 109)];
    [sky addLineToPoint:  CGPointMake(37, 108)];
    [sky addLineToPoint:  CGPointMake(43.5, 112)];
    [sky addLineToPoint:  CGPointMake(49.5, 112)];
    [sky addLineToPoint:  CGPointMake(55.5, 117)];
    [sky addLineToPoint:  CGPointMake(59, 116)];
    [sky addLineToPoint:  CGPointMake(64, 118.5)];
    [sky addLineToPoint:  CGPointMake(61.5, 119.5)];
    [sky addLineToPoint:  CGPointMake(55.5, 121)];
    [sky addLineToPoint:  CGPointMake(50.5, 120)];
    [sky addLineToPoint:  CGPointMake(48.5, 121)];
    [sky addLineToPoint:  CGPointMake(44.5, 121)];
    [sky addLineToPoint:  CGPointMake(41.5, 121)];
    [sky addLineToPoint:  CGPointMake(39.5, 123)];
    [sky addLineToPoint:  CGPointMake(37.5, 122)];
    [sky addLineToPoint:  CGPointMake(35.5, 122)];
    [sky addLineToPoint:  CGPointMake(30, 119.5)];
    [sky addLineToPoint:  CGPointMake(24.5, 122)];
    [sky addLineToPoint:  CGPointMake(22, 130.5)];
    [sky addLineToPoint:  CGPointMake(20, 156.5)];
    [sky addLineToPoint:  CGPointMake(24.5, 186.5)];
    [sky addLineToPoint:  CGPointMake(31.5, 179.5)];
    [sky addLineToPoint:  CGPointMake(37, 175.5)];
    [sky addLineToPoint:  CGPointMake(48.5, 163)];
    [sky addLineToPoint:  CGPointMake(59, 151.5)];
    [sky moveToPoint: CGPointMake(249, 134)];
    [sky addLineToPoint:  CGPointMake(238, 139.5)];
    [sky moveToPoint: CGPointMake(249, 134)];
    [sky addLineToPoint:  CGPointMake(247.17, 143.5)];
    [sky addLineToPoint:  CGPointMake(247.17, 155)];
    [sky moveToPoint: CGPointMake(238, 139.5)];
    [sky addLineToPoint:  CGPointMake(226.5, 116)];
    [sky addLineToPoint:  CGPointMake(218, 108.5)];
    [sky addLineToPoint:  CGPointMake(210, 118.5)];
    [sky addLineToPoint:  CGPointMake(199, 131)];
    [sky addLineToPoint:  CGPointMake(194.5, 128.5)];
    [sky addLineToPoint:  CGPointMake(177.5, 146.5)];
    [sky addLineToPoint:  CGPointMake(163.5, 167)];
    [sky moveToPoint: CGPointMake(238, 139.5)];
    [sky addLineToPoint:  CGPointMake(242, 146.5)];
    [sky addLineToPoint:  CGPointMake(247.17, 155)];
    [sky moveToPoint: CGPointMake(163.5, 167)];
    [sky addLineToPoint:  CGPointMake(155.5, 158)];
    [sky addLineToPoint:  CGPointMake(135, 138)];
    [sky addLineToPoint:  CGPointMake(127.5, 118.5)];
    [sky addLineToPoint:  CGPointMake(123, 118.5)];
    [sky addLineToPoint:  CGPointMake(116.5, 108.5)];
    [sky moveToPoint: CGPointMake(163.5, 167)];
    [sky addLineToPoint:  CGPointMake(163.5, 169.5)];
    [sky addLineToPoint:  CGPointMake(167, 173)];
    [sky addLineToPoint:  CGPointMake(174.25, 180.25)];
    [sky moveToPoint: CGPointMake(116.5, 108.5)];
    [sky addLineToPoint:  CGPointMake(105, 117)];
    [sky addLineToPoint:  CGPointMake(101.5, 124)];
    [sky addLineToPoint:  CGPointMake(90.5, 136.5)];
    [sky addLineToPoint:  CGPointMake(84.5, 134)];
    [sky moveToPoint: CGPointMake(116.5, 108.5)];
    [sky addLineToPoint:  CGPointMake(112.5, 116)];
    [sky addLineToPoint:  CGPointMake(111, 124)];
    [sky moveToPoint: CGPointMake(84.5, 134)];
    [sky addLineToPoint:  CGPointMake(69, 154)];
    [sky addLineToPoint:  CGPointMake(59, 151.5)];
    [sky moveToPoint: CGPointMake(84.5, 134)];
    [sky addLineToPoint:  CGPointMake(84.5, 146.5)];
    [sky addLineToPoint:  CGPointMake(86.5, 158)];
    [sky moveToPoint: CGPointMake(59, 151.5)];
    [sky addLineToPoint:  CGPointMake(62.5, 157.5)];
    [sky addLineToPoint:  CGPointMake(64, 164.5)];
    [sky addLineToPoint:  CGPointMake(63.5, 174)];
    [sky addLineToPoint:  CGPointMake(69, 183.5)];
    [sky moveToPoint: CGPointMake(181.5, 187.5)];
    [sky addLineToPoint:  CGPointMake(174.25, 180.25)];
    [sky moveToPoint: CGPointMake(258.5, 175)];
    [sky addLineToPoint:  CGPointMake(249, 158)];
    [sky addLineToPoint:  CGPointMake(247.17, 155)];
    [sky moveToPoint: CGPointMake(174.25, 180.25)];
    [sky addLineToPoint:  CGPointMake(188, 175.5)];
    [sky addLineToPoint:  CGPointMake(189.16, 177)];
    [sky moveToPoint: CGPointMake(196.5, 186.5)];
    [sky addLineToPoint:  CGPointMake(189.16, 177)];
    [sky moveToPoint: CGPointMake(189.16, 177)];
    [sky addLineToPoint:  CGPointMake(196.5, 174)];
    [sky addLineToPoint:  CGPointMake(203, 177)];
    [sky addLineToPoint:  CGPointMake(213, 183.5)];
    [sky addLineToPoint:  CGPointMake(223.5, 187.5)];
    [sky addLineToPoint:  CGPointMake(232, 194.5)];
    [sky addLineToPoint:  CGPointMake(238, 196)];
    [sky addLineToPoint:  CGPointMake(253.5, 208)];
    [sky moveToPoint: CGPointMake(108, 149)];
    [sky addLineToPoint:  CGPointMake(108, 140.5)];
    [sky addLineToPoint:  CGPointMake(109.5, 131)];
           
    return sky;
}

- (UIBezierPath*)hillPath {
    
    UIBezierPath *hill = [UIBezierPath bezierPath];

    [hill moveToPoint: CGPointMake(35.5, 213.5)];
    [hill addLineToPoint:  CGPointMake(50, 213.5)];
    [hill addLineToPoint:  CGPointMake(64, 210)];
    [hill addLineToPoint:  CGPointMake(81.5, 200.5)];
    [hill addLineToPoint:  CGPointMake(98.5, 195.5)];
    [hill addLineToPoint:  CGPointMake(114.5, 202)];
    [hill addLineToPoint:  CGPointMake(127.25, 207.75)];
    [hill moveToPoint: CGPointMake(140, 213.5)];
    [hill addLineToPoint:  CGPointMake(127.25, 207.75)];
    [hill moveToPoint: CGPointMake(127.25, 207.75)];
    [hill addLineToPoint:  CGPointMake(140, 204)];
    [hill addLineToPoint:  CGPointMake(150, 205.5)];
    [hill addLineToPoint:  CGPointMake(159.5, 207.75)];
    [hill addLineToPoint:  CGPointMake(173, 210)];
    [hill addLineToPoint:  CGPointMake(195, 217.5)];
    [hill moveToPoint: CGPointMake(185.5, 220)];
    [hill addLineToPoint:  CGPointMake(198, 217.5)];
    [hill addLineToPoint:  CGPointMake(208.5, 212)];
    [hill addLineToPoint:  CGPointMake(222.5, 212)];
    [hill addLineToPoint:  CGPointMake(237, 212)];
    [hill addLineToPoint:  CGPointMake(257, 207.75)];
    [hill moveToPoint: CGPointMake(56.5, 241.5)];
    [hill addLineToPoint:  CGPointMake(70.5, 241.4)];
    [hill addLineToPoint:  CGPointMake(87.5, 238)];
    [hill addLineToPoint:  CGPointMake(104.5, 241.5)];
    [hill addLineToPoint:  CGPointMake(129, 244.5)];
    [hill addLineToPoint:  CGPointMake(173, 249)];
    [hill moveToPoint: CGPointMake(140, 258.5)];
    [hill addLineToPoint:  CGPointMake(163.5, 252.5)];
    [hill addLineToPoint:  CGPointMake(185.5, 241.5)];
    [hill addLineToPoint:  CGPointMake(198, 235)];
    [hill addLineToPoint:  CGPointMake(216.5, 235)];
    [hill addLineToPoint:  CGPointMake(238.5, 235)];
    [hill moveToPoint: CGPointMake(86, 265)];
    [hill addLineToPoint:  CGPointMake(98.5, 262.5)];
    [hill addLineToPoint:  CGPointMake(123, 265)];
    [hill addLineToPoint:  CGPointMake(151, 266)];
    [hill addLineToPoint:  CGPointMake(173, 266)];
    [hill addLineToPoint:  CGPointMake(195, 258.5)];
    [hill addLineToPoint:  CGPointMake(218, 256)];
           
    return hill;
}

- (UIBezierPath*)mountainPath {
    UIBezierPath *mountain = [UIBezierPath bezierPath];
    
    [mountain moveToPoint: CGPointMake(103.5, 153)];
    [mountain addLineToPoint:  CGPointMake(105.5, 159.5)];
    [mountain addLineToPoint:  CGPointMake(106.5, 170.5)];
    [mountain addLineToPoint:  CGPointMake(104, 189)];
    [mountain addLineToPoint:  CGPointMake(100.5, 206.5)];
    [mountain addLineToPoint:  CGPointMake(101, 216)];
    [mountain addLineToPoint:  CGPointMake(104, 224)];
    [mountain moveToPoint: CGPointMake(108.5, 224)];
    [mountain addLineToPoint:  CGPointMake(109.5, 212.5)];
    [mountain moveToPoint: CGPointMake(110.5, 208.5)];
    [mountain addLineToPoint:  CGPointMake(109.5, 196.5)];
    [mountain addLineToPoint:  CGPointMake(108.5, 188.5)];
    [mountain addLineToPoint:  CGPointMake(107.5, 181)];
    [mountain moveToPoint: CGPointMake(116, 175.5)];
    [mountain addLineToPoint:  CGPointMake(118, 183.5)];
    [mountain addLineToPoint:  CGPointMake(119.5, 194)];
    [mountain moveToPoint: CGPointMake(121, 184.5)];
    [mountain addLineToPoint:  CGPointMake(121.5, 190.5)];
    [mountain addLineToPoint:  CGPointMake(124, 199.5)];
    [mountain addLineToPoint:  CGPointMake(126.5, 205.5)];
    [mountain moveToPoint: CGPointMake(125, 194)];
    [mountain addLineToPoint:  CGPointMake(125.5, 198.5)];
    [mountain addLineToPoint:  CGPointMake(129, 204.5)];
    [mountain moveToPoint: CGPointMake(138, 182)];
    [mountain addLineToPoint:  CGPointMake(139, 189)];
    [mountain addLineToPoint:  CGPointMake(140.5, 196)];
    [mountain addLineToPoint:  CGPointMake(143, 201.5)];
    [mountain moveToPoint: CGPointMake(146.5, 203)];
    [mountain addLineToPoint:  CGPointMake(143.5, 197)];
    [mountain addLineToPoint:  CGPointMake(142, 192)];
    [mountain addLineToPoint:  CGPointMake(141.5, 187)];
    [mountain moveToPoint: CGPointMake(139, 196)];
    [mountain addLineToPoint:  CGPointMake(137, 190)];
    [mountain addLineToPoint:  CGPointMake(136, 184)];
    [mountain addLineToPoint:  CGPointMake(135.5, 176)];
    [mountain addLineToPoint:  CGPointMake(136, 169)];
    [mountain moveToPoint: CGPointMake(79, 158.5)];
    [mountain addLineToPoint:  CGPointMake(76.5, 166)];
    [mountain addLineToPoint:  CGPointMake(75.5, 173)];
    [mountain addLineToPoint:  CGPointMake(75.5, 181)];
    [mountain moveToPoint: CGPointMake(73.5, 175.5)];
    [mountain addLineToPoint:  CGPointMake(74, 167.5)];
    [mountain addLineToPoint:  CGPointMake(76.5, 158.5)];
    [mountain addLineToPoint:  CGPointMake(80, 151)];
    [mountain moveToPoint: CGPointMake(82.5, 140)];
    [mountain addLineToPoint:  CGPointMake(78.5, 146)];
    [mountain addLineToPoint:  CGPointMake(75.5, 152)];
    [mountain moveToPoint: CGPointMake(38.5, 181)];
    [mountain addLineToPoint:  CGPointMake(36.5, 189)];
    [mountain addLineToPoint:  CGPointMake(33.5, 196.5)];
    [mountain addLineToPoint:  CGPointMake(30.5, 202)];
    [mountain moveToPoint: CGPointMake(41.5, 181)];
    [mountain addLineToPoint:  CGPointMake(39.5, 188.5)];
    [mountain addLineToPoint:  CGPointMake(36, 197.5)];
    [mountain moveToPoint: CGPointMake(43, 173)];
    [mountain addLineToPoint:  CGPointMake(42, 178.5)];
    [mountain moveToPoint: CGPointMake(56.5, 159.5)];
    [mountain addLineToPoint:  CGPointMake(54, 169)];
    [mountain moveToPoint: CGPointMake(55.5, 172)];
    [mountain addLineToPoint:  CGPointMake(54, 178.5)];
    [mountain addLineToPoint:  CGPointMake(53.5, 186)];
    [mountain moveToPoint: CGPointMake(52.5, 174.5)];
    [mountain addLineToPoint:  CGPointMake(51.5, 184)];
    [mountain moveToPoint: CGPointMake(62.5, 187)];
    [mountain addLineToPoint:  CGPointMake(63, 193)];
    [mountain moveToPoint: CGPointMake(64.5, 194)];
    [mountain addLineToPoint:  CGPointMake(64.5, 208.5)];
    [mountain moveToPoint: CGPointMake(80, 174.5)];
    [mountain addLineToPoint:  CGPointMake(80.5, 185.5)];
    [mountain addLineToPoint:  CGPointMake(81.5, 194)];
    [mountain moveToPoint: CGPointMake(191.5, 141)];
    [mountain addLineToPoint:  CGPointMake(192, 145.5)];
    [mountain addLineToPoint:  CGPointMake(194.5, 152)];
    [mountain addLineToPoint:  CGPointMake(195.04, 154.5)];
    [mountain moveToPoint: CGPointMake(194.5, 166.5)];
    [mountain addLineToPoint:  CGPointMake(196, 159)];
    [mountain addLineToPoint:  CGPointMake(195.04, 154.5)];
    [mountain moveToPoint: CGPointMake(196, 140.5)];
    [mountain addLineToPoint:  CGPointMake(195.5, 146.5)];
    [mountain addLineToPoint:  CGPointMake(195.04, 154.5)];
    [mountain moveToPoint: CGPointMake(207.5, 133.5)];
    [mountain addLineToPoint:  CGPointMake(205.5, 141)];
    [mountain addLineToPoint:  CGPointMake(203.5, 148.5)];
    [mountain moveToPoint: CGPointMake(226, 144)];
    [mountain addLineToPoint:  CGPointMake(227.5, 153.5)];
    [mountain addLineToPoint:  CGPointMake(233.5, 166.5)];
    [mountain moveToPoint: CGPointMake(205.5, 188.5)];
    [mountain addLineToPoint:  CGPointMake(210, 196)];
    [mountain addLineToPoint:  CGPointMake(215, 201.5)];
    [mountain moveToPoint: CGPointMake(203.5, 202)];
    [mountain addLineToPoint:  CGPointMake(198, 198.5)];
    [mountain moveToPoint: CGPointMake(253.5, 151)];
    [mountain addLineToPoint:  CGPointMake(253.5, 154.5)];
    [mountain moveToPoint: CGPointMake(258, 153.5)];
    [mountain addLineToPoint:  CGPointMake(258, 158.5)];
    [mountain addLineToPoint:  CGPointMake(260.5, 162.5)];
    [mountain moveToPoint: CGPointMake(119.5, 136)];
    [mountain addLineToPoint:  CGPointMake(121.5, 145.5)];
    [mountain addLineToPoint:  CGPointMake(126.5, 148.5)];
    [mountain addLineToPoint:  CGPointMake(129, 154.5)];
    [mountain moveToPoint: CGPointMake(219, 116.5)];
    [mountain addLineToPoint:  CGPointMake(221, 120)];
    [mountain addLineToPoint:  CGPointMake(221, 124)];
    [mountain moveToPoint: CGPointMake(215, 122.5)];
    [mountain addLineToPoint:  CGPointMake(213.5, 132.5)];
    [mountain moveToPoint: CGPointMake(223.5, 196)];
    [mountain addLineToPoint:  CGPointMake(226, 197.5)];
    [mountain addLineToPoint:  CGPointMake(231, 199.5)];
    [mountain addLineToPoint:  CGPointMake(239.5, 206.5)];
    [mountain moveToPoint: CGPointMake(159.5, 174.5)];
    [mountain addLineToPoint:  CGPointMake(162, 181)];
    [mountain addLineToPoint:  CGPointMake(168.5, 188.5)];
            
    return mountain;
}

#pragma mark Planet

- (UIBezierPath*)planetPath {
    
    UIBezierPath *planet = [UIBezierPath bezierPath];
    
    [planet moveToPoint: CGPointMake(60.5, 154)];
    [planet addLineToPoint:  CGPointMake(51.5, 158)];
    [planet addLineToPoint:  CGPointMake(42.5, 165)];
    [planet addLineToPoint:  CGPointMake(34, 173)];
    [planet addLineToPoint:  CGPointMake(28, 181)];
    [planet addLineToPoint:  CGPointMake(26, 189)];
    [planet addLineToPoint:  CGPointMake(27, 197)];
    [planet addLineToPoint:  CGPointMake(31, 203.5)];
    [planet addLineToPoint:  CGPointMake(38, 209)];
    [planet addLineToPoint:  CGPointMake(48.5, 213.5)];
    [planet addLineToPoint:  CGPointMake(59.5, 216)];
    [planet addLineToPoint:  CGPointMake(71, 217)];
    [planet addLineToPoint:  CGPointMake(82, 217.5)];
    [planet addLineToPoint:  CGPointMake(88.5, 217.3)];
    [planet moveToPoint: CGPointMake(60.5, 154)];
    [planet addLineToPoint:  CGPointMake(61, 147)];
    [planet addLineToPoint:  CGPointMake(63.5, 134.5)];
    [planet addLineToPoint:  CGPointMake(67, 124)];
    [planet addLineToPoint:  CGPointMake(71.5, 112.5)];
    [planet addLineToPoint:  CGPointMake(77, 104)];
    [planet addLineToPoint:  CGPointMake(84, 94.5)];
    [planet addLineToPoint:  CGPointMake(92, 87)];
    [planet addLineToPoint:  CGPointMake(100, 81.5)];
    [planet addLineToPoint:  CGPointMake(108.5, 76.5)];
    [planet  addCurveToPoint:  CGPointMake(120, 71.5) controlPoint1: CGPointMake(112.17, 75) controlPoint2: CGPointMake(119.6, 71.9)];
    [planet  addCurveToPoint:  CGPointMake(131, 68) controlPoint1: CGPointMake(120.4, 71.1) controlPoint2: CGPointMake(127.5, 69)];
    [planet addLineToPoint:  CGPointMake(147.5, 66.5)];
    [planet addLineToPoint:  CGPointMake(161.5, 67.5)];
    [planet addLineToPoint:  CGPointMake(175.5, 70)];
    [planet addLineToPoint:  CGPointMake(188, 75)];
    [planet addLineToPoint:  CGPointMake(200, 82.5)];
    [planet addLineToPoint:  CGPointMake(208.5, 89.5)];
    [planet addLineToPoint:  CGPointMake(215.5, 96.5)];
    [planet addLineToPoint:  CGPointMake(221.5, 103.5)];
    [planet moveToPoint: CGPointMake(60.5, 154)];
    [planet addLineToPoint:  CGPointMake(60.5, 160.5)];
    [planet addLineToPoint:  CGPointMake(61.5, 168)];
    [planet moveToPoint: CGPointMake(221.5, 103.5)];
    [planet addLineToPoint:  CGPointMake(230.5, 102)];
    [planet addLineToPoint:  CGPointMake(242.5, 101.5)];
    [planet addLineToPoint:  CGPointMake(254, 103)];
    [planet addLineToPoint:  CGPointMake(264.5, 107)];
    [planet addLineToPoint:  CGPointMake(271.5, 112.5)];
    [planet addLineToPoint:  CGPointMake(274, 120)];
    [planet addLineToPoint:  CGPointMake(273.5, 129)];
    [planet addLineToPoint:  CGPointMake(270, 137.5)];
    [planet addLineToPoint:  CGPointMake(259.5, 151)];
    [planet addLineToPoint:  CGPointMake(251, 159.5)];
    [planet addLineToPoint:  CGPointMake(238, 169.5)];
    [planet addLineToPoint:  CGPointMake(234.67, 171.5)];
    [planet moveToPoint: CGPointMake(221.5, 103.5)];
    [planet addLineToPoint:  CGPointMake(225, 108.5)];
    [planet addLineToPoint:  CGPointMake(228, 115)];
    [planet moveToPoint: CGPointMake(61.5, 168)];
    [planet addLineToPoint:  CGPointMake(57.5, 170.5)];
    [planet addLineToPoint:  CGPointMake(54, 175)];
    [planet addLineToPoint:  CGPointMake(52.5, 180)];
    [planet addLineToPoint:  CGPointMake(53, 185)];
    [planet addLineToPoint:  CGPointMake(55.5, 189)];
    [planet addLineToPoint:  CGPointMake(60.5, 192)];
    [planet addLineToPoint:  CGPointMake(68, 195)];
    [planet addLineToPoint:  CGPointMake(70.5, 195.47)];
    [planet moveToPoint: CGPointMake(61.5, 168)];
    [planet addLineToPoint:  CGPointMake(64, 176.5)];
    [planet addLineToPoint:  CGPointMake(66.5, 185)];
    [planet addLineToPoint:  CGPointMake(70.5, 195.47)];
    [planet moveToPoint: CGPointMake(228, 115)];
    [planet addLineToPoint:  CGPointMake(234.5, 115)];
    [planet addLineToPoint:  CGPointMake(242.5, 118)];
    [planet addLineToPoint:  CGPointMake(245.5, 122)];
    [planet addLineToPoint:  CGPointMake(246, 128)];
    [planet addLineToPoint:  CGPointMake(244.5, 133.5)];
    [planet addLineToPoint:  CGPointMake(240.5, 139)];
    [planet addLineToPoint:  CGPointMake(236.83, 143)];
    [planet moveToPoint: CGPointMake(228, 115)];
    [planet addLineToPoint:  CGPointMake(231, 122)];
    [planet addLineToPoint:  CGPointMake(234.67, 133.5)];
    [planet addLineToPoint:  CGPointMake(236.83, 143)];
    [planet moveToPoint: CGPointMake(88.5, 217.3)];
    [planet addLineToPoint:  CGPointMake(98.5, 217)];
    [planet addLineToPoint:  CGPointMake(119.5, 214.5)];
    [planet addLineToPoint:  CGPointMake(137, 211)];
    [planet addLineToPoint:  CGPointMake(152.5, 207)];
    [planet addLineToPoint:  CGPointMake(172, 201)];
    [planet addLineToPoint:  CGPointMake(191.5, 193.5)];
    [planet addLineToPoint:  CGPointMake(207, 186.5)];
    [planet addLineToPoint:  CGPointMake(223, 178.5)];
    [planet addLineToPoint:  CGPointMake(234.67, 171.5)];
    [planet moveToPoint: CGPointMake(88.5, 217.3)];
    [planet addLineToPoint:  CGPointMake(93.5, 223)];
    [planet addLineToPoint:  CGPointMake(101.5, 229)];
    [planet addLineToPoint:  CGPointMake(110.5, 233.5)];
    [planet addLineToPoint:  CGPointMake(119.5, 237)];
    [planet addLineToPoint:  CGPointMake(130.5, 240.5)];
    [planet addLineToPoint:  CGPointMake(143, 242.5)];
    [planet addLineToPoint:  CGPointMake(155, 242.5)];
    [planet addLineToPoint:  CGPointMake(166, 241.5)];
    [planet addLineToPoint:  CGPointMake(175.5, 239)];
    [planet addLineToPoint:  CGPointMake(183, 236)];
    [planet addLineToPoint:  CGPointMake(192.5, 231.5)];
    [planet addLineToPoint:  CGPointMake(200, 226.5)];
    [planet addLineToPoint:  CGPointMake(206, 222)];
    [planet addLineToPoint:  CGPointMake(214, 213.5)];
    [planet addLineToPoint:  CGPointMake(222, 203.5)];
    [planet addLineToPoint:  CGPointMake(227.5, 194)];
    [planet addLineToPoint:  CGPointMake(232.5, 182)];
    [planet addLineToPoint:  CGPointMake(234.67, 171.5)];
    [planet moveToPoint: CGPointMake(236.83, 143)];
    [planet addLineToPoint:  CGPointMake(235, 145)];
    [planet addLineToPoint:  CGPointMake(230, 150)];
    [planet addLineToPoint:  CGPointMake(224, 154.5)];
    [planet addLineToPoint:  CGPointMake(216.5, 159.5)];
    [planet addLineToPoint:  CGPointMake(209.5, 164)];
    [planet addLineToPoint:  CGPointMake(202.5, 168)];
    [planet addLineToPoint:  CGPointMake(195.5, 171.5)];
    [planet addLineToPoint:  CGPointMake(186.5, 176)];
    [planet addLineToPoint:  CGPointMake(175, 181)];
    [planet addLineToPoint:  CGPointMake(163.5, 185)];
    [planet addLineToPoint:  CGPointMake(151.5, 188.5)];
    [planet addLineToPoint:  CGPointMake(140, 191.5)];
    [planet addLineToPoint:  CGPointMake(128, 194)];
    [planet addLineToPoint:  CGPointMake(116, 196)];
    [planet addLineToPoint:  CGPointMake(104, 197)];
    [planet addLineToPoint:  CGPointMake(92.5, 197.5)];
    [planet addLineToPoint:  CGPointMake(83.5, 197)];
    [planet addLineToPoint:  CGPointMake(76, 196.5)];
    [planet addLineToPoint:  CGPointMake(70.5, 195.47)];
        
    return planet;

}


- (UIBezierPath*)surfacePath {
    
    UIBezierPath *surface = [UIBezierPath bezierPath];
    
    [surface moveToPoint: CGPointMake(156, 114.5)];
    [surface addLineToPoint:  CGPointMake(162, 111.5)];
    [surface addLineToPoint:  CGPointMake(171.5, 106)];
    [surface addLineToPoint:  CGPointMake(181, 99)];
    [surface addLineToPoint:  CGPointMake(187.5, 92)];
    [surface addLineToPoint:  CGPointMake(191.5, 85)];
    [surface addLineToPoint:  CGPointMake(194, 79)];
    [surface moveToPoint: CGPointMake(109.5, 93)];
    [surface addLineToPoint:  CGPointMake(102.5, 92.5)];
    [surface addLineToPoint:  CGPointMake(96.5, 90.5)];
    [surface addLineToPoint:  CGPointMake(91.5, 87.5)];
    [surface moveToPoint: CGPointMake(120, 91.5)];
    [surface addLineToPoint:  CGPointMake(127.5, 89.5)];
    [surface addLineToPoint:  CGPointMake(135.5, 87)];
    [surface addLineToPoint:  CGPointMake(143.5, 82.5)];
    [surface  addCurveToPoint:  CGPointMake(151, 77) controlPoint1: CGPointMake(145.83, 80.83) controlPoint2: CGPointMake(150.6, 77.4)];
    [surface  addCurveToPoint:  CGPointMake(155.5, 72) controlPoint1: CGPointMake(151.4, 76.6) controlPoint2: CGPointMake(154.17, 73.5)];
    [surface addLineToPoint:  CGPointMake(157.5, 67.5)];
    [surface moveToPoint: CGPointMake(97.5, 108.5)];
    [surface addLineToPoint:  CGPointMake(102, 109.5)];
    [surface addLineToPoint:  CGPointMake(109.5, 109.5)];
    [surface addLineToPoint:  CGPointMake(117.5, 108.5)];
    [surface addLineToPoint:  CGPointMake(124.5, 107)];
    [surface addLineToPoint:  CGPointMake(133, 105)];
    [surface moveToPoint: CGPointMake(103, 128)];
    [surface  addCurveToPoint:  CGPointMake(107, 127.5) controlPoint1: CGPointMake(103.4, 128) controlPoint2: CGPointMake(105.83, 127.67)];
    [surface addLineToPoint:  CGPointMake(111.5, 127)];
    [surface addLineToPoint:  CGPointMake(115.5, 126)];
    [surface moveToPoint: CGPointMake(94.5, 127.5)];
    [surface addLineToPoint:  CGPointMake(87, 127)];
    [surface addLineToPoint:  CGPointMake(80, 124.5)];
    [surface  addCurveToPoint:  CGPointMake(73.5, 121.5) controlPoint1: CGPointMake(78, 123.5) controlPoint2: CGPointMake(73.9, 121.5)];
    [surface  addCurveToPoint:  CGPointMake(69, 119) controlPoint1: CGPointMake(73.1, 121.5) controlPoint2: CGPointMake(70.33, 119.83)];
    [surface moveToPoint: CGPointMake(86.5, 166.5)];
    [surface addLineToPoint:  CGPointMake(78.5, 165)];
    [surface addLineToPoint:  CGPointMake(69.5, 161.5)];
    [surface addLineToPoint:  CGPointMake(60.5, 156)];
    [surface moveToPoint: CGPointMake(106.5, 166.5)];
    [surface addLineToPoint:  CGPointMake(112, 166.5)];
    [surface addLineToPoint:  CGPointMake(116.5, 166)];
    [surface addLineToPoint:  CGPointMake(125.5, 164.5)];
    [surface addLineToPoint:  CGPointMake(136, 162)];
    [surface addLineToPoint:  CGPointMake(145.5, 159.5)];
    [surface addLineToPoint:  CGPointMake(155, 156.5)];
    [surface addLineToPoint:  CGPointMake(164.5, 153.5)];
    [surface addLineToPoint:  CGPointMake(174.5, 149)];
    [surface addLineToPoint:  CGPointMake(184, 144.5)];
    [surface addLineToPoint:  CGPointMake(192, 139.5)];
    [surface addLineToPoint:  CGPointMake(198, 135.5)];
    [surface addLineToPoint:  CGPointMake(203.5, 132)];
    [surface moveToPoint: CGPointMake(212, 124)];
    [surface addLineToPoint:  CGPointMake(216, 119)];
    [surface addLineToPoint:  CGPointMake(219.5, 113)];
    [surface addLineToPoint:  CGPointMake(222.5, 105.5)];
    [surface moveToPoint: CGPointMake(125.5, 145)];
    [surface addLineToPoint:  CGPointMake(133.5, 143)];
    [surface addLineToPoint:  CGPointMake(146.5, 139)];
    [surface addLineToPoint:  CGPointMake(155, 136)];
    [surface addLineToPoint:  CGPointMake(164, 132)];
    [surface addLineToPoint:  CGPointMake(171.5, 128.5)];
    [surface addLineToPoint:  CGPointMake(178, 125)];
    [surface moveToPoint: CGPointMake(86.5, 184)];
    [surface addLineToPoint:  CGPointMake(93.5, 184.5)];
    [surface addLineToPoint:  CGPointMake(101, 184.5)];
    [surface addLineToPoint:  CGPointMake(109, 183.5)];
    [surface moveToPoint: CGPointMake(190.5, 159.5)];
    [surface addLineToPoint:  CGPointMake(196.5, 157.5)];
    [surface addLineToPoint:  CGPointMake(204, 153)];
    [surface addLineToPoint:  CGPointMake(213, 146)];
    [surface addLineToPoint:  CGPointMake(219, 141.5)];
    [surface addLineToPoint:  CGPointMake(223, 137)];
    [surface moveToPoint: CGPointMake(167, 213.5)];
    [surface addLineToPoint:  CGPointMake(171.5, 212.5)];
    [surface addLineToPoint:  CGPointMake(180.5, 209)];
    [surface addLineToPoint:  CGPointMake(188.5, 205.5)];
    [surface addLineToPoint:  CGPointMake(195, 202.5)];
    [surface addLineToPoint:  CGPointMake(201, 199.5)];
    [surface addLineToPoint:  CGPointMake(203.5, 196.5)];
    [surface moveToPoint: CGPointMake(208.5, 209)];
    [surface addLineToPoint:  CGPointMake(214.5, 205.5)];
    [surface addLineToPoint:  CGPointMake(220, 201.5)];
    [surface addLineToPoint:  CGPointMake(227.5, 194)];
    [surface moveToPoint: CGPointMake(198, 215)];
    [surface addLineToPoint:  CGPointMake(190.5, 218.5)];
    [surface addLineToPoint:  CGPointMake(180, 222.5)];
    [surface addLineToPoint:  CGPointMake(170, 226)];
    [surface addLineToPoint:  CGPointMake(159, 229)];
    [surface addLineToPoint:  CGPointMake(148.5, 231.5)];
    [surface addLineToPoint:  CGPointMake(134.5, 233)];
    [surface addLineToPoint:  CGPointMake(121, 233.5)];
    [surface addLineToPoint:  CGPointMake(109.5, 233)];
   
    return surface;
}


- (UIBezierPath*)asteroidsPath {
    
    UIBezierPath *asteroids = [UIBezierPath bezierPath];
    
    [asteroids moveToPoint: CGPointMake(252.5, 181)];
    [asteroids addLineToPoint:  CGPointMake(257.5, 177.5)];
    [asteroids addLineToPoint:  CGPointMake(264.5, 178)];
    [asteroids addLineToPoint:  CGPointMake(269, 181.5)];
    [asteroids addLineToPoint:  CGPointMake(270.5, 186.5)];
    [asteroids addLineToPoint:  CGPointMake(269.5, 191)];
    [asteroids addLineToPoint:  CGPointMake(266.5, 195.5)];
    [asteroids addLineToPoint:  CGPointMake(261.5, 197)];
    [asteroids addLineToPoint:  CGPointMake(255.5, 196)];
    [asteroids addLineToPoint:  CGPointMake(251.5, 192)];
    [asteroids addLineToPoint:  CGPointMake(250, 187)];
    [asteroids addLineToPoint:  CGPointMake(252.5, 181)];
    [asteroids closePath];
    [asteroids moveToPoint: CGPointMake(240, 211)];
    [asteroids addLineToPoint:  CGPointMake(242, 209)];
    [asteroids addLineToPoint:  CGPointMake(244.5, 209)];
    [asteroids addLineToPoint:  CGPointMake(246.5, 210.5)];
    [asteroids addLineToPoint:  CGPointMake(247, 213)];
    [asteroids addLineToPoint:  CGPointMake(246, 215)];
    [asteroids addLineToPoint:  CGPointMake(243.5, 216)];
    [asteroids addLineToPoint:  CGPointMake(241, 215.5)];
    [asteroids addLineToPoint:  CGPointMake(239.5, 213.5)];
    [asteroids addLineToPoint:  CGPointMake(240, 211)];
    [asteroids closePath];
    [asteroids moveToPoint: CGPointMake(74.5, 242)];
    [asteroids addLineToPoint:  CGPointMake(76.5, 241)];
    [asteroids addLineToPoint:  CGPointMake(79.5, 242)];
    [asteroids  addCurveToPoint:  CGPointMake(81, 244.5) controlPoint1: CGPointMake(80, 242.67) controlPoint2: CGPointMake(81, 244.1)];
    [asteroids  addCurveToPoint:  CGPointMake(81, 247.5) controlPoint1: CGPointMake(81, 244.9) controlPoint2: CGPointMake(81.17, 246.83)];
    [asteroids addLineToPoint:  CGPointMake(78.5, 249)];
    [asteroids addLineToPoint:  CGPointMake(75, 249)];
    [asteroids addLineToPoint:  CGPointMake(73.5, 247)];
    [asteroids addLineToPoint:  CGPointMake(73, 244.5)];
    [asteroids addLineToPoint:  CGPointMake(74.5, 242)];
    [asteroids closePath];
    [asteroids moveToPoint: CGPointMake(35.5, 76.5)];
    [asteroids  addCurveToPoint:  CGPointMake(41.5, 72) controlPoint1: CGPointMake(37.33, 75) controlPoint2: CGPointMake(41.1, 72)];
    [asteroids addLineToPoint:  CGPointMake(48, 71)];
    [asteroids addLineToPoint:  CGPointMake(54.5, 73)];
    [asteroids addLineToPoint:  CGPointMake(60.5, 80)];
    [asteroids addLineToPoint:  CGPointMake(61, 89.5)];
    [asteroids addLineToPoint:  CGPointMake(57, 97)];
    [asteroids addLineToPoint:  CGPointMake(48.5, 101)];
    [asteroids addLineToPoint:  CGPointMake(39.5, 99)];
    [asteroids addLineToPoint:  CGPointMake(33.5, 94.5)];
    [asteroids addLineToPoint:  CGPointMake(31.5, 85.5)];
    [asteroids addLineToPoint:  CGPointMake(35.5, 76.5)];
    [asteroids closePath];
    [asteroids moveToPoint: CGPointMake(217, 51)];
    [asteroids  addCurveToPoint:  CGPointMake(222.5, 50) controlPoint1: CGPointMake(218, 50.67) controlPoint2: CGPointMake(222.1, 50)];
    [asteroids addLineToPoint:  CGPointMake(227, 53)];
    [asteroids addLineToPoint:  CGPointMake(227.5, 58)];
    [asteroids addLineToPoint:  CGPointMake(225.5, 62)];
    [asteroids addLineToPoint:  CGPointMake(220.5, 63.5)];
    [asteroids addLineToPoint:  CGPointMake(215.5, 61)];
    [asteroids addLineToPoint:  CGPointMake(214, 55.5)];
    [asteroids addLineToPoint:  CGPointMake(217, 51)];
    [asteroids closePath];

    return asteroids;
}

@end
