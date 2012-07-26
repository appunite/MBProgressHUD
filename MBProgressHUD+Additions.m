//
//  MBProgressHUD+Additions.m
//  MBProgressHUD
//
//  Created by Emil Wojtaszek on 25.07.2012.
//  Copyright (c) 2012 Matej Bukovinski. All rights reserved.
//

#import "MBProgressHUD+Additions.h"

@implementation MBProgressHUD (Additions)

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)showWithTitle:(NSString *)title animated:(BOOL)animated block:(void (^)(void))block {
    // change text
    [self setLabelText:title];
    // show HUD
    [self show:animated];
    // do block
    block();
    // hide after delay
    [self hide:animated];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)showWithTitle:(NSString *)title hideAfterDelay:(NSTimeInterval)delay animated:(BOOL)animated {
    // change text
    [self setLabelText:title];
    // show HUD
    [self show:animated];
    // hide after delay
    [self hide:animated afterDelay:delay];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)showWithError:(NSString *)title hideAfterDelay:(NSTimeInterval)delay animated:(BOOL)animated {
    // add image view
	self.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MBProgressHUD.bundle/error.png"]];	
	// set custom view mode
	self.mode = MBProgressHUDModeCustomView;
    // show HUD
    [self showWithTitle:title hideAfterDelay:delay animated:animated];
}

////////////////////////////////////////////////////////////////////////////////////////////////////
- (void)showWithSuccess:(NSString *)title hideAfterDelay:(NSTimeInterval)delay animated:(BOOL)animated {
    // add image view
	self.customView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MBProgressHUD.bundle/success.png"]];	
	// set custom view mode
	self.mode = MBProgressHUDModeCustomView;
    // show HUD
    [self showWithTitle:title hideAfterDelay:delay animated:animated];
}

@end
