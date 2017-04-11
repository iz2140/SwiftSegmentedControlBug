//
//  CustomSegmentedControl.m
//  ButtonBug
//
//  Created by Iris Zhang on 4/11/17.
//  Copyright © 2017 Iris Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomSegmentedControl.h"


@interface CustomSegmentedControl()
-(id)initWithItems:(NSArray *)items;
@end


@implementation CustomSegmentedControl
-(id)initWithItems:(NSArray *)items{
    if (self = [super initWithItems:items]) {
        [self setupStyle];
    }
    return self;
}

- (void)setupStyle{
    
    NSDictionary *attributeDict = @{ NSForegroundColorAttributeName:[UIColor blackColor] };
    
    UIImage *backgroundImage = [UIImage imageNamed:@"Unselected_container"];
    UIImage *selectedBackgroundImage = [UIImage imageNamed:@"selected_border"];
    //UIImage *lrUnselectedImage;
    UIImage *lrSelectedImage = [UIImage imageNamed:@"selected-both"];
    UIImage *lSelectedImage = [UIImage imageNamed:@"selected_left"];
    UIImage *rSelectedImage = [UIImage imageNamed:@"selected_right"];

    [self setTitleTextAttributes:attributeDict forState:UIControlStateNormal];
    [self setBackgroundImage:selectedBackgroundImage forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    [self setBackgroundImage:selectedBackgroundImage forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    [self setBackgroundImage:backgroundImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self setBackgroundImage:selectedBackgroundImage forState:UIControlStateSelected | UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    
    //[self setImage: selectedBackgroundImage forS
    
    //[self setDividerImage:lrUnselectedImage forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self setDividerImage:rSelectedImage forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    [self setDividerImage:rSelectedImage forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    [self setDividerImage:lSelectedImage forLeftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self setDividerImage:lSelectedImage forLeftSegmentState:UIControlStateHighlighted rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [self setDividerImage:lrSelectedImage forLeftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    [self setDividerImage:lrSelectedImage forLeftSegmentState:UIControlStateSelected rightSegmentState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    [self setDividerImage:lrSelectedImage forLeftSegmentState:UIControlStateHighlighted rightSegmentState:UIControlStateSelected barMetrics:UIBarMetricsDefault];


}

@end
