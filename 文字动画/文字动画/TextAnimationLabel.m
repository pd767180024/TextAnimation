//
//  TextAnimationLabel.m
//  文字动画
//
//  Created by 彭懂 on 16/4/5.
//  Copyright © 2016年 彭懂. All rights reserved.
//

#import "TextAnimationLabel.h"

@implementation TextAnimationLabel

- (void)setText:(NSString *)text
{
    super.text = text;
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:text];
    NSRange textRange = NSMakeRange(0, text.length);
    [attributedText setAttributes:@{NSForegroundColorAttributeName: self.textColor} range:textRange];
    [attributedText setAttributes:@{NSFontAttributeName: self.font} range:textRange];
    NSMutableParagraphStyle *paragraphyStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphyStyle.alignment = self.textAlignment;
    [attributedText addAttributes:@{NSParagraphStyleAttributeName: paragraphyStyle} range:textRange];
    self.attributedText = attributedText;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
