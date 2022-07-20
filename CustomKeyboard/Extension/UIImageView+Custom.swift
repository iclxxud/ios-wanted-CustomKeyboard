//
//  UIImageView+Custom.swift
//  CustomKeyboard
//
//  Created by oyat on 2022/07/13.
//

import UIKit

extension UIImageView {
    func load(url: URL) {
        // FIXME: Data(contentsOf:) 그대로 사용하실건가용? 사용한다면 이유도 알려주세요~
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
