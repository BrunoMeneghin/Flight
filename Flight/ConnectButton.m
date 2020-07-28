//
//  ConnectButton.m
//  Flight
//
//  Created by Bruno Meneghin on 25/07/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

#import "ConnectButton.h"

@implementation ConnectButton

+(instancetype)buttonWithType:(UIButtonType)buttonType {
    ConnectButton *button = [super buttonWithType:buttonType];
        
    return button;
}

+(UIColor *)customBackgroundColor {
    static UIColor *color;
    
    if(!color) {
        color = [UIColor colorWithRed:(19 / 255.0) green:(163.0 / 255.0) blue:(77.0 / 255.0) alpha:(1.0)];
    }
    
    return color;
}

+ (UIColor *)customHighlightedColor {
    static UIColor *color;
    
    if(!color) {
        color = [UIColor colorWithRed:(14.0 / 255.0) green:(185 / 255.0) blue:(67.0 / 255.0) alpha:(1.0)];
    }
    
    return color;
}

- (void)setHighlighted:(BOOL)highlighted {
    self.backgroundColor = highlighted ? [self.class customHighlightedColor] : [self.class customBackgroundColor];
}

@end
