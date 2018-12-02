//
//  GZIMCenterButton.m
//  GZIMClient
//
//  Created by xuqiang on 2018/10/30.
//  Copyright © 2018年 呱呱开放平台. All rights reserved.
//

#import "GZIMCenterButton.h"

@implementation GZIMCenterButton

-(void)layoutSubviews {
    [super layoutSubviews];
    
    CGFloat space = (CGRectGetHeight(self.frame)-CGRectGetHeight(self.imageView.frame)-CGRectGetHeight(self.titleLabel.frame)-self.titleSpace)/2;
    if (space <= 0){
        space = 0;
    }
    // Center image
    CGPoint center = self.imageView.center;
    center.x = self.frame.size.width/2;
    center.y = self.imageView.frame.size.height/2+space;
    self.imageView.center = center;
    
    //Center text
    CGRect newFrame = [self titleLabel].frame;
    newFrame.origin.x = 0;
    newFrame.origin.y = self.imageView.frame.size.height+space+self.titleSpace;
    newFrame.size.width = self.frame.size.width;
    
    self.titleLabel.frame = newFrame;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
