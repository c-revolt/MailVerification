//
//  StatusLabel.swift
//  MailVerification
//
//  Created by Александр Прайд on 11.07.2022.
//

import UIKit

class StatusLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        text = "Check your mail"
        textColor = #colorLiteral(red: 0.3137254902, green: 0.7176470588, blue: 0.6274509804, alpha: 1)
        font = UIFont(name: "Bradley Hand", size: 18)
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
