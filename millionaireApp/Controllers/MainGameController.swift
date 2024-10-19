//
//  MainGameController.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 16.10.24.
//

import UIKit

class MainGameController: UIViewController {
    
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.alpha = 0.2
        image.image = UIImage(named: "gameBg")
        return image
    }()
    
    let quizView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 80
        return view
        
    }()
    
    let quizLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "QUIZ GAME"
        return label
        
    }()
    
    let enterNameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textColor = .white
        label.text = "Enter your name"
        return label
        
    }()
    
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(named: "startButtonColor")
        
        
        return button
    }()
    
    
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.attributedPlaceholder = NSAttributedString(string: " John Deh...", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textField.textColor = .white
        
        textField.layer.cornerRadius = 20
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.white.cgColor
        
        
        return textField
    }()
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraints()
        view.backgroundColor = UIColor(named: "bgColor")

        
    }
    
    
    func setupConstraints() {
        
        view.addSubview(backgroundImage)
        view.addSubview(quizView)
        view.addSubview(enterNameLabel)
        view.addSubview(nameTextField)
        view.addSubview(startButton)
        quizView.addSubview(quizLabel)
        
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        quizView.translatesAutoresizingMaskIntoConstraints = false
        quizLabel.translatesAutoresizingMaskIntoConstraints = false
        enterNameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
        quizView.topAnchor.constraint(equalTo: view.topAnchor, constant: 173).isActive = true
        quizView.heightAnchor.constraint(equalToConstant: 160).isActive = true
        quizView.widthAnchor.constraint(equalToConstant: 160).isActive = true
        quizView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        quizLabel.topAnchor.constraint(equalTo: quizView.topAnchor, constant: 48).isActive = true
        quizLabel.bottomAnchor.constraint(equalTo: quizView.bottomAnchor, constant: -48).isActive = true
        quizLabel.centerXAnchor.constraint(equalTo: quizView.centerXAnchor).isActive = true
        
        
        enterNameLabel.topAnchor.constraint(equalTo: quizView.bottomAnchor, constant: 120).isActive = true
        enterNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        enterNameLabel.heightAnchor.constraint(equalToConstant: 29).isActive = true
        enterNameLabel.widthAnchor.constraint(equalToConstant: 132).isActive = true
        
        nameTextField.topAnchor.constraint(equalTo: enterNameLabel.bottomAnchor, constant: 10).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 53).isActive = true
        
        startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -101).isActive = true
        startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23).isActive = true
        startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 59).isActive = true
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    



}
