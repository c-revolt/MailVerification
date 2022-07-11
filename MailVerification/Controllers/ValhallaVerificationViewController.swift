//
//  ViewController.swift
//  MailVerification
//
//  Created by Александр Прайд on 22.06.2022.
//

import UIKit

class ValhallaVerificationViewController: UIViewController {

    private let valhallaBackgoundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "vh_main_back")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let verificationView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.alpha = 0.8
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let logoimageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "valhalla_logo")
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let statusLabel = StatusLabel()
    private let mailTextField = MailTextField()
    private let verificationButton = VefiricationButton()
    private let collectionView = MailsCollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    private lazy var stackView = UIStackView(customSubviews:
                                                [mailTextField, verificationButton, collectionView],
                                             axes: .vertical,
                                             spacing: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubviews()
        applyConstraints()
        
        collectionView.dataSource = self
        collectionView.selectMailDelegate = self
        
        verificationButton.addTarget(self, action: #selector(verificationButtonPressed(_:)), for: .touchUpInside)
    }

    @objc private func verificationButtonPressed(_ sender: UIButton) {
        print("ButtonPressed")
    }

}

// MARK: - SelectProposedMailProtocol
extension ValhallaVerificationViewController: SelectProposedMailProtocol {
    func selectProposedMail(indexPath: IndexPath) {
        print(indexPath)
    }
    
    
    
}


// MARK: - Setup UI Elements
extension ValhallaVerificationViewController {
    
    private func addSubviews() {
        view.addSubview(valhallaBackgoundImageView)
        valhallaBackgoundImageView.addSubview(verificationView)
        verificationView.addSubview(logoimageView)
        verificationView.addSubview(statusLabel)
        verificationView.addSubview(stackView)
    }
    
    private func applyConstraints() {
        
        NSLayoutConstraint.activate([
            valhallaBackgoundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            valhallaBackgoundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            valhallaBackgoundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            valhallaBackgoundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
        NSLayoutConstraint.activate([
            verificationView.topAnchor.constraint(equalTo: view.topAnchor),
            verificationView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            verificationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            verificationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
        ])
        
        NSLayoutConstraint.activate([
            logoimageView.topAnchor.constraint(equalTo: verificationView.topAnchor, constant: 70),
            logoimageView.centerXAnchor.constraint(equalTo: verificationView.centerXAnchor),
            logoimageView.widthAnchor.constraint(equalToConstant: 200),
            logoimageView.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            statusLabel.topAnchor.constraint(equalTo: logoimageView.bottomAnchor, constant: 100),
            statusLabel.leadingAnchor.constraint(equalTo: verificationView.leadingAnchor, constant: 20),
            statusLabel.trailingAnchor.constraint(equalTo: verificationView.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            mailTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 2),
            stackView.leadingAnchor.constraint(equalTo: verificationView.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: verificationView.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: verificationView.bottomAnchor)
        ])
    }
}

// MARK: - UICollectionViewDataSource
extension ValhallaVerificationViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IdCell.idMailCell.rawValue, for: indexPath) as? MailCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        return cell
    }
    
    
}


