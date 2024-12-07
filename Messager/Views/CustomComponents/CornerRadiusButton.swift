//
//  CornerRadiusButton.swift
//  Messager
//
//  Created by Nguyễn Văn Hiếu on 7/12/24.
//

import UIKit

@IBDesignable
class CornerRadiusButton: UIButton {
    private var _cornerRadius: CGFloat = 0

    @IBInspectable
    var cornerRadius: CGFloat {
        set (newValue) {
            _cornerRadius = newValue
            layer.cornerRadius = _cornerRadius
            layer.masksToBounds = true
        }
        get {
            return _cornerRadius
        }
    }
}
