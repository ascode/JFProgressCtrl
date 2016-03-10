//
//  JFProgressCtrl.swift
//  VocabularyMnemonic
//
//  Created by 金飞 on 16/3/10.
//  Copyright © 2016年 Fei Jin. All rights reserved.
//

import UIKit

public class JFProgressCtrl: UIView {

    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor(white: 1, alpha: 0)
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private var _progressValue : CGFloat = 0
    
    public func getProgressValue() -> CGFloat{
        return self._progressValue
    }
    
    public func setProgressValue(value : CGFloat){
        self._progressValue = value
        
        setNeedsDisplay()
    }
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func drawRect(rect: CGRect) {
        
        //获得处理的上下文
        let ctx = UIGraphicsGetCurrentContext()
        CGContextAddLineToPoint(ctx, 5 , 5)
        
        //指定直线样式
        CGContextSetLineCap(ctx, CGLineCap.Butt)
        
        //直线宽度
        CGContextSetLineWidth(ctx, CGFloat(3.0))
        
        //设置颜色
        CGContextSetRGBStrokeColor(ctx, 0.314, 0.486, 0.859, 1.0)
        
        //开始绘制
        CGContextBeginPath(ctx)
        
        //画笔移动到点(31,170)
        CGContextMoveToPoint(ctx, 10, 5)

        //下一点
        CGContextAddLineToPoint(ctx, 10, 5)

        CGContextAddLineToPoint(ctx, (self.frame.width - 10) / 100 * self._progressValue , 5)

        //绘制完成
        CGContextStrokePath(ctx)
    }
    

}
