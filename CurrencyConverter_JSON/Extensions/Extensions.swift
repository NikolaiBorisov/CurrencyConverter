//
//  Extensions.swift
//  CurrencyConverter_JSON
//
//  Created by NIKOLAI BORISOV on 26.03.2021.
//

import Foundation
import UIKit

extension UIPickerView {
    func round() {
        self.layer.cornerRadius = 10
    }
}

extension UIButton {
    func roundAndBorder() {
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 2
        self.layer.borderColor = UIColor.white.cgColor
    }
}

extension UILabel {
    func round() {
        self.layer.cornerRadius = 10
    }
}

