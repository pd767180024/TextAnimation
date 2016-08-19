//
//  TextAnimationLabel.h
//  文字动画
//
//  Created by 彭懂 on 16/4/5.
//  Copyright © 2016年 彭懂. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextAnimationLabel : UILabel

/**
 *  自己添加属性
 */
@property (nonatomic, strong, readonly) NSTextStorage *textStorage;
@property (nonatomic, strong, readonly) NSLayoutManager *textLayoutManager;
@property (nonatomic, strong, readonly) NSTextContainer *textContainer;

/**
 *  两个数组保存文本变化前的就字符和新字符
 */
@property (nonatomic, strong) NSMutableArray *oldCharacterTextLayers;
@property (nonatomic, strong) NSMutableArray *xinCharacterTextLayers;

@end
