//
//  UITextField+Extensions.swift
//  Authorization
//
//  Created by Пётр  on 15.03.2023.
//

import UIKit

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconConteinerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 60, height: 30))
        iconConteinerView.addSubview(iconView)
        leftView = iconConteinerView
        leftViewMode = .always
    }
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconConteinerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 60, height: 30))
        iconConteinerView.addSubview(iconView)
        rightView = iconConteinerView
        rightViewMode = .always
    }
}

