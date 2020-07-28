//
//  ViewController.m
//  Flight
//
//  Created by Bruno Meneghin on 25/07/20.
//  Copyright © 2020 Bruno Meneghin. All rights reserved.
//

#import "ViewController.h"
#import "ConnectView.h"


@interface ViewController ()

@end

#pragma mark - Actions & Handle

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"The Flight");
    
}

- (void)didTapCheckFlightButton:(ConnectButton *)sender {
    
    if (@available(iOS 11, *)) {
         // awaiting SDK..
    }

    [self changeBackgroundColor:UIColor.whiteColor];
}

#pragma mark - Setup View

- (void)changeBackgroundColor:(UIColor *)color {
    self.view.backgroundColor = color;
}

-(void)loadView {
    ConnectView *view = [ConnectView new];
    [view.connectButton addTarget:self action:@selector(didTapCheckFlightButton:) forControlEvents:UIControlEventTouchUpInside];
    
    self.view = view;
}


- (void)presentAlertControllerWithTitle:(NSString *)title
                                message:(NSString *)message
                            buttonTitle:(NSString *)buttonTitle
{
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *dismissActionAlert = [UIAlertAction actionWithTitle:buttonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            [alertController dismissViewControllerAnimated:YES completion:nil];
        }];
        [alertController addAction:dismissActionAlert];
        [self presentViewController:alertController
                              animated:YES
                            completion:Nil];
    });    
}

@end
