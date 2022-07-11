//
//  MailTextField.swift
//  MailVerification
//
//  Created by Александр Прайд on 11.07.2022.
//

import UIKit

class MailTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .darkGray
        textColor = .white
        layer.cornerRadius = 21
        //borderStyle = .roundedRect
        
        leftView = UIView(frame: CGRect(x: 0, y: 0,
                                                         width: 20,
                                                         height: self.frame.height))
        
        // leftViewMode отображается всегда
        leftViewMode = .always
        // кнопка "очистить textField"
        clearButtonMode = .always
        // тип кнопки на клавиатере
        returnKeyType = .join
        
        placeholder = "here is your mail"
        font = UIFont(name: "Apple SD Gothic Neo", size: 20)
        tintColor = .blue
        
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
