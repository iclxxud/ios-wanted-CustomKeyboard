//
//  CALayer+Custom.swift
//  CustomKeyboard
//
//  Created by oyat on 2022/07/17.
//

import UIKit

extension CALayer {
    // FIXME: 띄어쓰기가 다소 어색해보입니다!
    func addBorder( arrEdge: [UIRectEdge],
                    color: UIColor,
                    width: CGFloat) {
        
        // FIXME: arrEdge는 올바른 네이밍이 아닌 것 같아요! 축약어는 되도록 풀어서 써주세요~
        for edge in arrEdge {
            let border = CALayer()
            switch edge {
            case UIRectEdge.bottom:
                border.frame = CGRect.init(x: 0, y: frame.height - width, width: frame.width, height: width)
            default:
                break
            }
            border.backgroundColor = color.cgColor
            // FIXME: self가 필요한 부분일까요??
            self.addSublayer(border)
        }
    }
}
