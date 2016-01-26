//
//  TextViewWithCharLimit.h
//  OnFit
//
//  Created by Thiago-Bernardes on 8/13/15.
//  Copyright (c) 2015 OnfFit. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TextViewWithCharLimitDelegate;

@interface TextViewWithCharLimit : UITextView
@property (nonatomic) int charMax;
@property (nonatomic) NSString* placeholderText;
@property (nonatomic) id<TextViewWithCharLimitDelegate> myDelegate;
@end

@protocol TextViewWithCharLimitDelegate<UITextViewDelegate>

@optional
- (void)textViewWithCharLimit:(TextViewWithCharLimit *)textViewWithCharLimit shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text;
- (void)textViewWithCharLimitDidReachedTheLimit:(TextViewWithCharLimit *)textViewWithCharLimit;


@end