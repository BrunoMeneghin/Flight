//
//  ConnectView.m
//  Flight
//
//  Created by Bruno Meneghin on 25/07/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

#import "ConnectView.h"

@implementation ConnectView

- (instancetype) init
{
    if((self = [super init])) {
        UILabel *label = [UILabel new];
        UIDatePicker *datePicker = [UIDatePicker new];
        
        self.label = label;
        self.dataPicker = datePicker;
        
        ConnectButton *connectButton = [self buttonWithTitle:@" Verify your flight "];
        self.connectButton = connectButton;
        
        
        self.backgroundColor = UIColor.whiteColor;
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        
        label.text = @"Your travels";
        
        label.translatesAutoresizingMaskIntoConstraints = NO;
        connectButton.translatesAutoresizingMaskIntoConstraints = NO;
        datePicker.translatesAutoresizingMaskIntoConstraints = NO;
        
        [self addSubview:label];
        [self addSubview:datePicker];
        [self addSubview:connectButton];
        
        [datePicker.centerXAnchor constraintEqualToAnchor:connectButton.centerXAnchor].active = YES;
        [datePicker.centerYAnchor constraintEqualToAnchor:connectButton.bottomAnchor constant:120.0].active = YES;
        [datePicker sizeToFit];
        
        [connectButton.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = YES;
        [connectButton.centerYAnchor constraintEqualToAnchor:self.centerYAnchor].active = YES;
        [connectButton sizeToFit];
        
        [label.centerXAnchor constraintEqualToAnchor:connectButton.centerXAnchor].active = YES;
        [label.centerYAnchor constraintEqualToAnchor:connectButton.topAnchor constant: -50.0].active = YES;
        [label sizeToFit];
    }
    
    return self;
}


#pragma mark - Private

- (ConnectButton *)buttonWithTitle:(NSString *)title
{
    ConnectButton *connectionButton = [ConnectButton buttonWithType:UIButtonTypeSystem];
    
    NSDictionary<NSAttributedStringKey, id> *attributes = @{
        NSFontAttributeName: [UIFont systemFontOfSize:UIFont.systemFontSize weight:UIFontWeightHeavy],
        NSForegroundColorAttributeName: UIColor.whiteColor,
        NSKernAttributeName: @1.5,
    };
    
    NSAttributedString *attributeTitle = [[NSAttributedString alloc] initWithString:title
                                                                         attributes:attributes];
    
    [connectionButton setAttributedTitle:attributeTitle forState:UIControlStateNormal];
    
    return connectionButton;
}


@end
