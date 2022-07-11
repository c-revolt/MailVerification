//
//  MailCollectionViewCell.swift
//  MailVerification
//
//  Created by Александр Прайд on 11.07.2022.
//

import UIKit

class MailCollectionViewCell: UICollectionViewCell {
    
    private let domainLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Apple SD Gothic Neo", size: 17)
        label.backgroundColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(domainLabel)
        
        createViews()
        applyConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension MailCollectionViewCell {
    
    private func createViews() {
    
        contentView.backgroundColor = .white
        contentView.alpha = 0.5
        contentView.layer.cornerRadius = 10
    }
    
    private func applyConstraints() {
        
        NSLayoutConstraint.activate([
            domainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            domainLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
