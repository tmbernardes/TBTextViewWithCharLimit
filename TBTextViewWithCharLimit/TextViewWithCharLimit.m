//
//  TextViewWithCharLimit.m
//  OnFit
//
//  Created by Thiago-Bernardes on 8/13/15.
//  Copyright (c) 2015 OnfFit. All rights reserved.
//

#import "TextViewWithCharLimit.h"



@interface TextViewWithCharLimit() <UITextViewDelegate>
@property (nonatomic) UILabel* charCountLabel;
@property (nonatomic) int hasPlaceholder;
@end



@implementation TextViewWithCharLimit


- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    
    
    [self setupCharCountLabel];
    
    if ([text isEqualToString:@"\n"]){
        [textView endEditing:YES];
        return YES;
    }
    NSInteger charCount = textView.text.length + text.length;
    
    if ([text isEqualToString:@""]) {
        charCount = textView.text.length;
    }
    if(charCount > self.charMax){
        
        if ([self.myDelegate respondsToSelector:@selector(textViewWithCharLimitDidReachedTheLimit:)]) {
            [self.myDelegate textViewWithCharLimitDidReachedTheLimit:self];
        }
        
        return NO;
    }
    
    
    self.charCountLabel.text = [[NSNumber numberWithInteger:self.charMax - charCount] stringValue] ;
    
    [self.myDelegate textViewWithCharLimit:self shouldChangeTextInRange:range replacementText:text];
    
    return YES;
}


-(void)setupCharCountLabel{
    
    if (self.charCountLabel == nil){
        
        int labelSize = 30;
        self.charCountLabel = [[UILabel alloc]initWithFrame:CGRectMake(self.bounds.size.width - labelSize, self.bounds.size.height - labelSize, labelSize, labelSize)];
        self.charCountLabel.font = [UIFont fontWithName:@"Avenir-Heavy" size:15];
        
        [self addSubview:self.charCountLabel];
        self.charCountLabel.backgroundColor = [UIColor clearColor];
        self.charCountLabel.textColor = [UIColor whiteColor];
    }
    
}


-(void)textViewDidBeginEditing:(UITextView *)textView{
    
    if (self.hasPlaceholder) {
        self.text = nil;
        self.hasPlaceholder = NO;
        self.textColor = [UIColor colorWithWhite:1 alpha:1];
    }
}

-(void)textViewDidEndEditing:(UITextView *)textView{
    
    if (!self.hasPlaceholder && self.text.length == 0) {
        self.hasPlaceholder = YES;
        self.text = self.placeholderText;
        self.textColor = [UIColor colorWithWhite:1 alpha:0.4];
    }
}

-(void)awakeFromNib{
    self.delegate = self;
    if (self.text.length == 0) {
        self.hasPlaceholder = YES;
        self.text = self.placeholderText;
        self.textColor = [UIColor colorWithWhite:1 alpha:0.4];
    }
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
//- (void)drawRect:(CGRect)rect {
//}


@end
