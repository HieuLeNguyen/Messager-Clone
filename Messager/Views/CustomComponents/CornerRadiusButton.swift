//
//  CornerRadiusUIView.swift
//  Messager
//
//  Created by Nguyễn Văn Hiếu on 7/12/24.
//

import UIKit

@IBDesignable
class CornerRadiusUIView: UIView {
    private var _conrnerRadius: CGFloat = 0
    
    @IBInspectable
    var conrnerRadius: CGFloat {
        set (newValue) {
            _conrnerRadius = newValue
            layer.cornerRadius = _conrnerRadius
        } get {
            return _conrnerRadius
        }
    }
}

