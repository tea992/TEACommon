//
//  UIButton+TEAExtension.swift
//  TEACommon
//
//  Created by admin on 2022/3/5.
//

import Foundation

public extension UIButton {
    
    enum Position { case top, left, bottom, right }
    
    /// 重置图片image与标题title位置(默认间距为0)
    func imageTitlePosition(_ position: Position, spacing: CGFloat = 0 ) {
        self.sizeToFit()
        
        let imageWidth = (self.imageView?.image?.size.width) ?? 0
        let imageHeight = (self.imageView?.image?.size.height) ?? 0
        
        let labelWidth = (self.titleLabel?.frame.size.width) ?? 0
        let labelHeight = (self.titleLabel?.frame.size.height) ?? 0
        
        switch position {
        case .top:
            imageEdgeInsets = UIEdgeInsets(top: -labelHeight - spacing / 2, left: 0, bottom: 0, right: -labelWidth)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageWidth, bottom: -imageHeight - spacing / 2, right: 0)
            break
            
        case .left:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: -spacing / 2, bottom: 0, right: 0)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: spacing * 1.5, bottom: 0, right: 0)
            break
            
        case .bottom:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -labelHeight - spacing / 2, right: -labelWidth)
            titleEdgeInsets = UIEdgeInsets(top: -imageHeight - spacing / 2, left: -imageWidth, bottom: 0, right: 0)
            break
            
        case .right:
            imageEdgeInsets = UIEdgeInsets(top: 0, left: labelWidth + spacing / 2, bottom: 0, right: -labelWidth - spacing / 2)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageWidth - spacing / 2, bottom: 0, right: imageWidth + spacing / 2)
            break
        }
    }
}
