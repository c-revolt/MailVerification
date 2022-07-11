//
//  StackView Extention.swift
//  MailVerification
//
//  Created by Александр Прайд on 11.07.2022.
//

import UIKit

extension UIStackView {
    
    convenience init(customSubviews: [UIView], axes: NSLayoutConstraint.Axis, spacing: CGFloat) {
        self.init(arrangedSubviews: customSubviews)
        
        self.axis = axes
        self.spacing = spacing
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
