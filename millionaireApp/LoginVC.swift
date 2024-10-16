//
//  LoginVC.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 02.10.24.
//

import UIKit

class LoginVC: UIViewController {
    
    let backgroundImage: UIImageView = {
        
        let image = UIImageView()
        let imageName = "bgImage"
        image.image = UIImage(named: imageName)
        image.alpha = 0.2
        image.layer.cornerRadius = 25
        
        return image
        
    }()
    
    
    let closeOpenEyeImage: UIImageView = {
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "closeEye")
        return image
        
    }()
    
    
    
    let welcomeLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Hey, welcome Back!"
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
        
    }()
    
    
    let continueLabel: UILabel = {
        
        let label = UILabel()
        label.text = "continue with email"
        label.numberOfLines = 0
        return label
        
    }()
    
    
    let view1: UIView = {
        let view = UIView()
        return view
        
    }()
    
    
    let emailLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Email"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .left
        return label
        
    }()
    
    
    let view11: UIView = {
    
        let view = UIView()
        
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 7
        
        view.backgroundColor = .white
        return view
        
    }()
    
    let emailTextField: UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Enter Your Email"
        return textField
        
    }()
    
    
    
    let view2: UIView = {
        
        let view = UIView()
                
        return view
        
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Password"
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .left
        return label
        
    }()
    
    
    let view22: UIView = {
        
        let view = UIView()
        
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 7
        
        view.backgroundColor = .white
        
        return view
        
        
    }()
    
    
    
    let view3: UIView = {
    
        let view = UIView()
        
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 7
        return view
        
    }()
    
    
    let passwordTextField: UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Enter Your Password"
        textField.isSecureTextEntry = true
        return textField
        
    }()
    
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        
        return button
        
    }()
    
    
    let signUpLabel: UILabel = {
        
        
        let label = UILabel()
        label.text = "Don't have an account?"
        label.font = UIFont.systemFont(ofSize: 18)
        label.numberOfLines = 0
        
        return label
        
    }()
    
    let u = UserDefaults.standard
    
    lazy var signButton: UIButton = {
        
        let button = UIButton()
        
        button.setTitle("SignUp", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        
        
        if let email = emailTextField.text, let password = passwordTextField.text {
            
            if email == u.string(forKey: email) || password == u.string(forKey: password) {
                
                button.addTarget(self, action: #selector(backButton), for: .touchUpInside)

            }
        }
                
        return button
        
    }()
    
    
    
    
    let myStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        
        return stack
    }()
    
    
    @objc func loginAction() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
    
    @objc func backButton() {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
    @objc func closeOrOpen() {
        
        if closeOpenEyeImage.image == UIImage(named: "closeEye") {
            
            closeOpenEyeImage.image = UIImage(named: "openEye")
            passwordTextField.isSecureTextEntry = false
            
        } else {
            
            closeOpenEyeImage.image = UIImage(named: "closeEye")
            passwordTextField.isSecureTextEntry = true
            
        }
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(closeOrOpen))
        closeOpenEyeImage.isUserInteractionEnabled = true
        closeOpenEyeImage.addGestureRecognizer(tap)
        
        setupConstraints()
        navigationItem.hidesBackButton = true
                

    }
    
    func setupConstraints() {
        
        view.addSubview(backgroundImage)
        view.addSubview(welcomeLabel)
        view.addSubview(continueLabel)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view1.addSubview(view11)
        view2.addSubview(view22)
        view11.addSubview(emailTextField)
        view22.addSubview(passwordTextField)
        view1.addSubview(emailLabel)
        view2.addSubview(passwordLabel)
        view3.addSubview(loginButton)
        view.addSubview(myStack)
        myStack.addArrangedSubview(signUpLabel)
        myStack.addArrangedSubview(signButton)
        view22.addSubview(closeOpenEyeImage)
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        continueLabel.translatesAutoresizingMaskIntoConstraints = false
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view11.translatesAutoresizingMaskIntoConstraints = false
        view22.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        myStack.translatesAutoresizingMaskIntoConstraints = false
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        signButton.translatesAutoresizingMaskIntoConstraints = false
        closeOpenEyeImage.translatesAutoresizingMaskIntoConstraints = false
        
        
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 99).isActive = true
        welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27).isActive = true
        welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -73).isActive = true
        
        continueLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 183).isActive = true
        continueLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 29).isActive = true
        continueLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -29).isActive = true
        
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 235).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -534).isActive = true
        view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27).isActive = true
        view1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -49).isActive = true
        
        view2.topAnchor.constraint(equalTo: view.topAnchor, constant: 322).isActive = true
        view2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -447).isActive = true
        view2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 29).isActive = true
        view2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -47).isActive = true
        
        view11.topAnchor.constraint(equalTo: view1.topAnchor, constant: 19).isActive = true
        view11.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -16).isActive = true
        view11.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 2.09).isActive = true
        view11.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -0.09).isActive = true
        
        view22.topAnchor.constraint(equalTo: view2.topAnchor, constant: 19).isActive = true
        view22.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -16).isActive = true
        view22.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: 2.09).isActive = true
        view22.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: -0.09).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: view11.topAnchor, constant: 10).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: view11.bottomAnchor, constant: -10).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view11.leadingAnchor, constant: 10).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view11.trailingAnchor, constant: -10).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: view22.topAnchor, constant: 10).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: view22.bottomAnchor, constant: -10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view11.leadingAnchor, constant: 16).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view11.trailingAnchor, constant: -46).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 235).isActive = true
        emailLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -592).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 29.9).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -283.91).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 322).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -505).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 31.09).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -281.91).isActive = true
        
        
        view3.topAnchor.constraint(equalTo: view.topAnchor, constant: 431).isActive = true
        view3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -369).isActive = true
        view3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 29).isActive = true
        view3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -47).isActive = true
        
        loginButton.topAnchor.constraint(equalTo: view3.topAnchor, constant: 10).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: view3.bottomAnchor, constant: -10).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view3.leadingAnchor, constant: 10).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view3.trailingAnchor, constant: -10).isActive = true
        
        
        myStack.topAnchor.constraint(equalTo: view.topAnchor, constant: 499).isActive = true
        myStack.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -315).isActive = true
        myStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 63).isActive = true
        myStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -72).isActive = true
        
        closeOpenEyeImage.topAnchor.constraint(equalTo: view2.topAnchor, constant: 10).isActive = true
        closeOpenEyeImage.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -10).isActive = true
        closeOpenEyeImage.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: 276).isActive = true
        closeOpenEyeImage.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: -16).isActive = true
        
    }
    



}

