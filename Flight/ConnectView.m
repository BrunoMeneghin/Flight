//
//  ConnectView.m
//  Flight
//
//  Created by Bruno Meneghin on 25/07/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

#import "ConnectView.h"

@implementation ConnectView

- (instancetype) init {
    if((self = [super init])) {
        UILabel *label = [UILabel new];
        UIDatePicker *datePicker = [UIDatePicker new];
        
        self.label = label;
        self.dataPicker = datePicker;
       
        ConnectButton *connectButton = [self buttonWithTitle:@"Verify"];
        self.connectButton = connectButton;
        
        self.backgroundColor = UIColor.whiteColor;
        self.translatesAutoresizingMaskIntoConstraints = NO;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
        
        label.text = @"Your flight";
        label.translatesAutoresizingMaskIntoConstraints = NO;
        
        connectButton.translatesAutoresizingMaskIntoConstraints = NO;
        connectButton.backgroundColor = UIColor.cyanColor;
        
        datePicker = [[UIDatePicker alloc] initWithFrame:CGRectZero];
        
       
        [self addSubview:label];
        [self addSubview:datePicker]; 
        [self addSubview:connectButton];
        
        [connectButton.centerXAnchor constraintEqualToAnchor:self.centerXAnchor].active = NO;
        [connectButton.centerYAnchor constraintEqualToAnchor:self.centerYAnchor].active = YES;
        [connectButton sizeToFit];

        [label.centerXAnchor constraintEqualToAnchor:connectButton.centerXAnchor].active = NO;
        [label.centerYAnchor constraintEqualToAnchor:connectButton.bottomAnchor constant: 50.0].active = YES;
        [label sizeToFit];

    }
    
    return self;
}


#pragma mark - Private

- (ConnectButton *)buttonWithTitle:(NSString *)title {
    ConnectButton *connectionButton = [ConnectButton buttonWithType:UIButtonTypeSystem];
    
    NSDictionary<NSAttributedStringKey, id> *attributes = @{
                                                            NSFontAttributeName: [UIFont systemFontOfSize:UIFont.systemFontSize weight:UIFontWeightHeavy],
                                                            NSForegroundColorAttributeName: UIColor.whiteColor,
                                                            NSKernAttributeName: @2.2,
                                                            };
    
    NSAttributedString *attributeTitle = [[NSAttributedString alloc] initWithString:title attributes:attributes];
    [connectionButton setAttributedTitle:attributeTitle forState:UIControlStateNormal];
                
    return connectionButton;
}


@end
