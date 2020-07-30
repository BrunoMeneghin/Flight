//
//  ConnectView.h
//  Flight
//
//  Created by Bruno Meneghin on 25/07/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConnectButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConnectView : UIView

@property (nonatomic) UILabel *label;

@property (nonatomic) ConnectButton *connectButton;

@property (nonatomic) UIDatePicker *dataPicker; 

@end

NS_ASSUME_NONNULL_END
