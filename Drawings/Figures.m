//
//  Figures.m
//  Drawings
//
//  Created by Daniel Belokursky on 1.08.22.
//

#import "Figures.h"

@implementation Figures

+(UIBezierPath*)facePath
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

+(UIBezierPath*)lipsPath {
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

+(UIBezierPath*)neckPath {
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

@end
