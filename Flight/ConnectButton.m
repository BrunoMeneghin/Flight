//
//  ConnectButton.m
//  Flight
//
//  Created by Bruno Meneghin on 25/07/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

#import "ConnectButton.h"

@implementation ConnectButton

+ (instancetype)buttonWithType:(UIButtonType)buttonType
{
    ConnectButton *button = [super buttonWithType:buttonType];
    
    return button;
}

+ (UIColor *)customBackgroundColor
{
    static UIColor *color;
    
    if(!color)
        color = [UIColor colorWithRed:(80.0 / 255.0) green:(75.0 / 255.0)
                                                      blue:(180.0 / 255.0) alpha:(1.0)];
    
    return color;
}

+ (UIColor *)customHighlightedColor
{
    static UIColor *color;
    
    if(!color)
        color = [UIColor colorWithRed:(60.0 / 255.0) green:(120.0 / 255.0)
                                                        blue:(33.0 / 255.0) alpha:(1.0)];
    
    return color;
}

- (void)customDesignButton
{
    
    self.layer.cornerRadius = 8;
    self.layer.borderWidth = 1.3;
    self.layer.borderColor = [UIColor colorWithRed:(14.0 / 255.0) green:(185 / 255.0) blue:(67.0 / 255.0) alpha:(1.0)].CGColor;
}

- (void)setHighlighted:(BOOL)highlighted
{
    
    self.backgroundColor = highlighted ? [self.class customHighlightedColor] : [self.class customBackgroundColor];
    
    if ([self.class customBackgroundColor]) {
        [self customDesignButton];
    }
}

@end
