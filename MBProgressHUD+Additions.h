//
//  MBProgressHUD+Additions.h
//  MBProgressHUD
//
//  Created by Emil Wojtaszek on 25.07.2012.
//  Copyright (c) 2012 Matej Bukovinski. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Additions)
- (void)showWithTitle:(NSString *)title animated:(BOOL)animated block:(void (^)(void))block;
- (void)showWithTitle:(NSString *)title hideAfterDelay:(NSTimeInterval)delay animated:(BOOL)animated;

- (void)showWithError:(NSString *)title hideAfterDelay:(NSTimeInterval)delay animated:(BOOL)animated;
- (void)showWithSuccess:(NSString *)title hideAfterDelay:(NSTimeInterval)delay animated:(BOOL)animated;
@end
