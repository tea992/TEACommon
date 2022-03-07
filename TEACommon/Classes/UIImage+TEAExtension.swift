//
//  UIImage+TEAExtension.swift
//  TEACommon
//
//  Created by admin on 2022/3/5.
//

public extension UIImage {
    
    // MARK: - 图片转颜色
    
    class func tea_imageWithColor(_ color: UIColor) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
}
