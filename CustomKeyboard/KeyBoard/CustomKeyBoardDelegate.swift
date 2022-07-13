//
//  CustomKeyBoardDelegate.swift
//  CustomKeyboard
//
//  Created by 김기림 on 2022/07/13.
//

import UIKit

protocol CustomKeyBoardDelegate {
    func tappedReturnButton()
    func connectTextView() -> UITextView
}
