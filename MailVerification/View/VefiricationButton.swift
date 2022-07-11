//
//  VefiricationButton.swift
//  MailVerification
//
//  Created by Александр Прайд on 11.07.2022.
//

import UIKit

class VefiricationButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        setTitle("ENTRY", for: .normal)
        let buttonColor = #colorLiteral(red: 0.3137254902, green: 0.7176470588, blue: 0.6274509804, alpha: 1)
        setTitleColor(buttonColor, for: .normal)
        setBackgroundImage(UIImage(named: "vh_button_background"), for: .normal)
        contentMode = .scaleAspectFill
        //backgroundColor = .clear
        layer.cornerRadius = 26
        clipsToBounds = true
        titleLabel?.font = UIFont(name: "Bradley Hand", size: 19)
        heightAnchor.constraint(equalToConstant: 50).isActive = true
//        isEnabled = false
        alpha = 0.9
        
        translatesAutoresizingMaskIntoConstraints = false
    }
}
